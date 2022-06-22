<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use Yajra\DataTables\Facades\DataTables;
use Auth;
use Illuminate\Support\Str;
use Hash;
use App\Exports\UsersExport;
use Maatwebsite\Excel\Facades\Excel;
use PDF;

use App\Models\Status;
use App\Models\User;


class UserController extends Controller
{
  const VIEW_PATH = 'admin.user.';
  public function __construct()
  {

  }

  public function index(Request $request)
  {
    //return Auth::user('admin');
    $users = User::where(['status'=>1])->take(1)->get();
    return view(self::VIEW_PATH . 'index',compact('users'));
  }

  public function datatable(Request $request)
  {
    if ($request->ajax()) {
      $authUser = Auth::user('admin');
      $users = User::latest()->take(100)->get();
      return DataTables::of($users)
      ->addIndexColumn()
      ->editColumn('created_at', function (User $user) use ($authUser) {
        return date('d-M-Y', strtotime($user->created_at));
      })
      ->editColumn('status', function (User $user) use ($authUser) {
        return __('admin.status.'.Status::LIST[$user->status]);
      })
      ->addColumn('thumb', function (User $user) use ($authUser) {
          if (!empty($user->thumb)) {
              return "<a style=\"margin-left: 30%;\" target=\"_blank\" href='".asset('storage/'.$user->thumb)."'><i class=\"fa fa-eye fa-2x\" aria-hidden=\"true\"></i></a>";
          }else{
              return "<a style=\"margin-left: 30%;\"><i class=\"fa fa-eye-slash fa-2x\" aria-hidden=\"true\"></i> </a>";
          }
      })
      ->addColumn('action', function (User $user) use ($authUser) {
        $str = '<div>';
        $str .= '<a href="'.route('admin.user.edit', $user->id) .'" class="btn btn-xs btn-primary"><i class="fas fa-edit"></i></a>';
        $str .= '<a href="'.route('admin.user.delete', $user->id) .'" class="delete btn btn-xs btn-danger"><i class="fas fa-trash-alt"></i></a>';
        $str .= '</div>';
        return $str;
      })
      ->rawColumns(['thumb','action'])
      ->make(true);
    }
    
  }

  public function create()
  {
    //$this->authorize('create',User::class);
    return view(self::VIEW_PATH . 'add_edit');
  }

  public function store(Request $request)
  {
    //$this->authorize('create',User::class);
    $this->validate($request, [
      'thumb' => 'mimes:jpeg,png,jpg,gif,svg,pdf|max:20000',
      'thumb' => 'required',
      'status' => 'required',
      'name' => 'required|min:1|max:128',
      'username' => 'required|unique:users|min:1|max:128',
      'email' => 'required|email|unique:users|min:1|max:128',
      'password' => 'required|confirmed|min:6',
    ]);

    //dd($request->all());

    $data = $request->except('_token');
    $authUser = Auth::user('admin')->id;
    array_walk_recursive($data, function (&$val) {
        $val = trim($val);
        $val = is_string($val) && $val === '' ? null : $val;
    });

    $data['remember_token'] = Str::random(10);
    $data['email_verified_at'] = now();
    $data['created_by'] = $authUser;
    $data['password'] = Hash::make($request->password);

    if ($request->hasFile('thumb')) {
      $thumb = $request->file('thumb');
      $randNumber = rand(1, 999);
      $name = 'thumb-' . $authUser . '-' . time() . $randNumber . '.' . $thumb->getClientOriginalExtension();
      $year = date('Y/');
      $month = date('F/');
      $destinationPath = storage_path('app/public/user/' . $year . $month);
      $thumb->move($destinationPath, $name);
      $filePath = 'user/' . $year . $month;
      $data['thumb'] = $filePath . '' . $name;
    }

    User::create($data);

    return redirect()->route('admin.user')->with([
                    'mesage' => __('admin.common.success'),
                    'alert-type' => 'success'
                ])->withInput();
  }

  public function edit(Request $request, $id)
  {
    //$this->authorize('update',User::class);
    $user = User::where(['id'=>$id])->first();
    return view(self::VIEW_PATH . 'add_edit', compact('user'));
  }

  public function update(Request $request, $id)
  {
    //$this->authorize('update',User::class);
    
    $this->validate($request, [
      'thumb' => 'mimes:jpeg,png,jpg,gif,svg,pdf|max:20000',
      //'thumb' => 'required',
      'status' => 'required',
      'name' => 'required|min:1|max:128',
      //'username' => 'required|unique:users|min:1|max:128',
      //'email' => 'required|email|unique:users|min:1|max:128',
      //'password' => 'required|confirmed|min:6',
    ]);
    //dd($request->all());

    $user = User::where(['id'=>$id])->first();
    if ( is_null($user) == true) {
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

    if ($request->hasFile('thumb')) {
      @unlink(storage_path('/app/public/' . $user->thumb));
      $thumb = $request->file('thumb');
      $randNumber = rand(1, 999);
      $name = 'thumb-' . $authUser . '-' . time() . $randNumber . '.' . $thumb->getClientOriginalExtension();
      $year = date('Y/');
      $month = date('F/');
      $destinationPath = storage_path('app/public/user/' . $year . $month);
      $thumb->move($destinationPath, $name);
      $filePath = 'user/' . $year . $month;
      $data['thumb'] = $filePath . '' . $name;
    }

    User::find($id)->update($data);

    return redirect()->route('admin.user')->with([
      'mesage' => __('admin.common.success'),
      'alert-type' => 'success'
    ]);

  }

  public function delete(Request $request, $id)
  {
    //$this->authorize('delete',User::class);
    $user = User::find($id);
    if ( is_null($user) == true) {
      return back()->with([
        'error' => __('admin.common.error'),
        'alert-type' => 'error'
      ]);
    }

    @unlink(storage_path('/app/public/' . $user->thumb));
    $user->delete();

    return redirect()->route('admin.user')->with([
      'message' => __('admin.common.success'),
      'alert-type' => 'success'
    ]);
  }

  
  public function export() 
  {
    return Excel::download(new UsersExport, 'users.xlsx');
  }

  public function pdf() {
    // retreive all records from db
    //$data = Employee::all();

    $users = User::all();

    // share data to view
    //view()->share('employee',$data);
    $pdf = PDF::loadView(self::VIEW_PATH . 'pdf', compact('users'))->setOptions(['defaultFont' => 'sans-serif']);

    // download PDF file with download method
    return $pdf->download('pdf_file.pdf');
  }


}
