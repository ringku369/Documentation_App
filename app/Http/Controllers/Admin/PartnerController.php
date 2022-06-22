<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use Auth;


use App\Models\SitePartner;


class PartnerController extends Controller
{
  const VIEW_PATH = 'admin.partner.';
  public function __construct()
  {

  }

  public function index()
  {
    $this->authorize('read',SitePartner::class);
    $partners = SitePartner::where(['status'=>1])->orderBy('sort','asc')->get();
    return view(self::VIEW_PATH . 'index',compact('partners'));
  }

  public function create()
  {
    $this->authorize('create',SitePartner::class);
    return view(self::VIEW_PATH . 'add_edit');
  }

  public function store(Request $request)
  {
    $this->authorize('create',SitePartner::class);
    //return $request->all();
    $this->validate($request, [
        'thumb' => 'mimes:jpeg,png,jpg,gif,svg,pdf|max:20000',
        'thumb' => 'required',
        'name' => 'required|min:1|max:128',
        'email' => 'required|min:1|max:128',
        'contact' => 'required|min:1|max:128',
        'address' => 'required|max:1024',
        'description' => 'required|max:4096',
        'short_description' => 'required|max:2048'
    ]);

    $data = $request->except('_token');
    $authUser = Auth::user('admin')->id;
    array_walk_recursive($data, function (&$val) {
        $val = trim($val);
        $val = is_string($val) && $val === '' ? null : $val;
    });

    $data['created_by'] = $authUser;

    if ($request->hasFile('thumb')) {
      $thumb = $request->file('thumb');
      $randNumber = rand(1, 999);
      $name = 'thumb-' . $authUser . '-' . time() . $randNumber . '.' . $thumb->getClientOriginalExtension();
      $year = date('Y/');
      $month = date('F/');
      $destinationPath = storage_path('app/public/partner/' . $year . $month);
      $thumb->move($destinationPath, $name);
      $filePath = 'partner/' . $year . $month;
      $data['thumb'] = $filePath . '' . $name;
    }

    SitePartner::create($data);

    return redirect()->route('admin.partner')->with([
                    'mesage' => __('admin.common.success'),
                    'alert-type' => 'success'
                ])->withInput();
  }

  public function edit(Request $request, $id)
  {
    $this->authorize('update',SitePartner::class);
    $partner = SitePartner::where(['id'=>$id])->first();
    return view(self::VIEW_PATH . 'add_edit', compact('partner'));
  }

  public function update(Request $request, $id)
  {
    $this->authorize('update',SitePartner::class);
    //dd($request->all());
    $this->validate($request, [
        'thumb' => 'mimes:jpeg,png,jpg,gif,svg,pdf|max:20000',
        //'thumb' => 'required',
        'name' => 'required|min:1|max:128',
        'email' => 'required|min:1|max:128',
        'contact' => 'required|min:1|max:128',
        'address' => 'required|max:1024',
        'description' => 'required|max:4096',
        'short_description' => 'required|max:2048'
    ]);

    $partner = SitePartner::where(['id'=>$id])->first();
    if ( is_null($partner) == true) {
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
      @unlink(storage_path('/app/public/' . $partner->thumb));
      $thumb = $request->file('thumb');
      $randNumber = rand(1, 999);
      $name = 'thumb-' . $authUser . '-' . time() . $randNumber . '.' . $thumb->getClientOriginalExtension();
      $year = date('Y/');
      $month = date('F/');
      $destinationPath = storage_path('app/public/partner/' . $year . $month);
      $thumb->move($destinationPath, $name);
      $filePath = 'partner/' . $year . $month;
      $data['thumb'] = $filePath . '' . $name;
    }

    SitePartner::find($id)->update($data);

    return redirect()->route('admin.partner')->with([
      'mesage' => __('admin.common.success'),
      'alert-type' => 'success'
    ]);

  }

  public function delete(Request $request, $id)
  {
    $this->authorize('delete',SitePartner::class);
    $partner = SitePartner::find($id);
    if ( is_null($partner) == true) {
      return back()->with([
        'error' => __('admin.common.error'),
        'alert-type' => 'error'
      ]);
    }

    @unlink(storage_path('/app/public/' . $partner->thumb));
    $partner->delete();

    return redirect()->route('admin.partner')->with([
      'message' => __('admin.common.success'),
      'alert-type' => 'success'
    ]);
  }


}
