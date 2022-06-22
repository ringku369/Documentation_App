<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use Auth;
use DB;

use App\Models\Role;
use App\Models\Permission;

class RoleController extends Controller
{
  const VIEW_PATH = 'admin.role.';
  public function __construct()
  {

  }

  public function index()
  {
    $this->authorize('read',Role::class);
    $roles = Role::where(['status'=>1])->get();
    return view(self::VIEW_PATH . 'index',compact('roles'));
  }

  public function create()
  {
    $this->authorize('create',App\Role::class);
    return view(self::VIEW_PATH . 'add_edit');
  }

  public function store(Request $request)
  {
    $this->authorize('create',App\Role::class);
    //return $request->all();
    $this->validate($request, [
        'name' => 'required|min:1|max:128',
    ]);

    $data = $request->except('_token');
    $authUser = Auth::user('admin')->id;
    array_walk_recursive($data, function (&$val) {
        $val = trim($val);
        $val = is_string($val) && $val === '' ? null : $val;
    });

    $data['created_by'] = $authUser;
    Role::create($data);
    return redirect()->route('admin.role')->with([
                    'mesage' => __('admin.common.success'),
                    'alert-type' => 'success'
                ])->withInput();
  }

  public function edit(Request $request, $id)
  {
    $this->authorize('update',App\Role::class);
    $role = Role::where(['id'=>$id])->first();
    if ( is_null($role) == true) {
      return back()->with([
        'error' => __('admin.common.error'),
        'alert-type' => 'error'
      ]);
    }
    return view(self::VIEW_PATH . 'add_edit', compact('role'));
  }

  public function update(Request $request, $id)
  {
    $this->authorize('update',App\Role::class);
    //dd($request->all());
    $this->validate($request, [
      'name' => 'required|min:1|max:128'
    ]);

    $role = Role::where(['id'=>$id])->first();
    if ( is_null($role) == true) {
      return back()->with([
        'error' => __('admin.common.error'),
        'alert-type' => 'error'
      ]);
    }
    $data = $request->except('_token');
    $authUser = Auth::user('admin')->id;
    array_walk_recursive($data, function (&$val) {
        $val = trim($val);
        $val = is_string($val) && $val === '' ? null : $val;
    });

    $data['updated_by'] = $authUser;

    Role::find($id)->update($data);

    return redirect()->route('admin.role')->with([
      'mesage' => __('admin.common.success'),
      'alert-type' => 'success'
    ]);
  }

  public function delete(Request $request, $id)
  {    
    $this->authorize('delete',App\Role::class);
    $role = Role::find($id);
    if ( is_null($role) == true) {
      return back()->with([
        'error' => __('admin.common.error'),
        'alert-type' => 'error'
      ]);
    }
    $role->delete();
    return redirect()->route('admin.role')->with([
      'message' => __('admin.common.success'),
      'alert-type' => 'success'
    ]);
  }

  public function permission(Request $request, $id)
  {   
    $this->authorize('permission_update',App\Role::class);
    $role = Role::where(['id'=>$id])->first();
    if ( is_null($role) == true) {
      return back()->with([
        'error' => __('admin.common.error'),
        'alert-type' => 'error'
      ]);
    }
    $permissions = [];
    $level1sresult = DB::table('permissions as t1')
                  ->select('t1.group_name')
                  ->groupby('t1.group_name')
                  ->get();
    $level1s = json_decode(json_encode($level1sresult), True);
    foreach ($level1s as $key => $level1) {
      $level2sresult = Permission::where(['group_name'=>$level1['group_name']])->get();
      $level2s = json_decode(json_encode($level2sresult), True);
      foreach ($level2s as $key => $level2) {
        $level1['childs'][] = $level2;
      }
      $permissions[] = $level1;
    }

    $all_permissions = Permission::all();
    $permission_groups = DB::table('permissions')
        ->select('group_name as name')
        ->groupBy('group_name')
        ->get();
    return view(self::VIEW_PATH . 'permission',compact('permissions','role','all_permissions','permission_groups'));
  }

  public function permission_update(Request $request, $id)
  {  
    $this->authorize('permission_update',App\Role::class);

    

    $role = Role::where(['id'=>$id])->first();
    if ( is_null($role) == true) {
      return back()->with([
        'error' => __('admin.common.error'),
        'alert-type' => 'error'
      ]);
    }
    
    if ( $role->id == 1 && Auth::user()->role_id != 1) {
      return back()->with([
        'error' => __('admin.common.error'),
        'alert-type' => 'error'
      ]);
    }

    if ($role->id == 1) {
      DB::table('roles_permissions')
      ->where(['role_id'=>$id])
      ->whereNotIn('permission_id', DB::table('permissions')->where('group_name','role')->pluck('id'))
      ->delete();
    }else{
      DB::table('roles_permissions')
      ->where(['role_id'=>$id])
      //->whereNotIn('permission_id', DB::table('permissions')->where('group_name','role')->pluck('id'))
      ->delete();
    }
    

    if ($role->id == 1) {
      $permission_data = [1,2,3,4,5];
      @$permissions = $request->permissions;
      if ( is_null($permissions) == false) {
        foreach ($permissions as $key => $permission) {
          if (!in_array($permission,$permission_data)) {
            DB::table('roles_permissions')->insert(['role_id'=>$id,'permission_id'=>$permission]);
          }
        }
      }
    }else{
      @$permissions = $request->permissions;
      if ( is_null($permissions) == false) {
        foreach ($permissions as $key => $permission) {
          DB::table('roles_permissions')->insert(['role_id'=>$id,'permission_id'=>$permission]);
        }
      }
    }
    return redirect()->route('admin.role')->with([
      'message' => __('admin.common.success'),
      'alert-type' => 'success'
    ]);
  }


}
