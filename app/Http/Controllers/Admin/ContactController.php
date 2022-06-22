<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use Auth;


use App\Models\SiteContact;


class ContactController extends Controller
{
  const VIEW_PATH = 'admin.contact.';
  public function __construct()
  {

  }

  public function index()
  {
    //$this->authorize('read',SiteContact::class);
    $contacts = SiteContact::where(['status'=>1])->orderBy('sort','asc')->get();
    return view(self::VIEW_PATH . 'index',compact('contacts'));
  }

  public function create()
  {
    //$this->authorize('create',SiteContact::class);
    $count = SiteContact::where(['status'=>1])->orderBy('sort','asc')->count();
    if ( $count > 0) {
      return back()->with([
        'error' => __('admin.common.error'),
        'alert-type' => 'error'
      ]);
    }
    return view(self::VIEW_PATH . 'add_edit');
  }

  public function store(Request $request)
  {
    //$this->authorize('create',SiteContact::class);
    //return $request->all();
    $this->validate($request, [
        'thumb' => 'mimes:jpeg,png,jpg,gif,svg,pdf|max:20000',
        'thumb' => 'required',
        'time' => 'required|min:1|max:128',
        'email' => 'required|min:1|max:128',
        'contact' => 'required|min:1|max:128',
        'address' => 'required|max:1024',
        //'description' => 'required|max:4096',
        //'short_description' => 'required|max:2048'
    ]);

    $data = $request->except('_token');
    $authUser = Auth::user('admin')->id;
    array_walk_recursive($data, function (&$val) {
        $val = trim($val);
        $val = is_string($val) && $val === '' ? null : $val;
    });

    $data['created_by'] = $authUser;
    $data['name'] = 'DPG4PM';
    if ($request->hasFile('thumb')) {
      $thumb = $request->file('thumb');
      $randNumber = rand(1, 999);
      $name = 'thumb-' . $authUser . '-' . time() . $randNumber . '.' . $thumb->getClientOriginalExtension();
      $year = date('Y/');
      $month = date('F/');
      $destinationPath = storage_path('app/public/contact/' . $year . $month);
      $thumb->move($destinationPath, $name);
      $filePath = 'contact/' . $year . $month;
      $data['thumb'] = $filePath . '' . $name;
    }

    SiteContact::create($data);

    return redirect()->route('admin.contact')->with([
                    'mesage' => __('admin.common.success'),
                    'alert-type' => 'success'
                ])->withInput();
  }

  public function edit(Request $request, $id)
  {
    $this->authorize('update',SiteContact::class);
    $contact = SiteContact::where(['id'=>$id])->first();
    return view(self::VIEW_PATH . 'add_edit', compact('contact'));
  }

  public function update(Request $request, $id)
  {
    //$this->authorize('update',SiteContact::class);
    //dd($request->all());
    $this->validate($request, [
        'thumb' => 'mimes:jpeg,png,jpg,gif,svg,pdf|max:20000',
        //'thumb' => 'required',
        'time' => 'required|min:1|max:128',
        'email' => 'required|min:1|max:128',
        'contact' => 'required|min:1|max:128',
        'address' => 'required|max:1024',
        //'description' => 'required|max:4096',
        //'short_description' => 'required|max:2048'
    ]);

    $contact = SiteContact::where(['id'=>$id])->first();
    if ( is_null($contact) == true) {
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
    $data['name'] = 'DPG4PM';

    if ($request->hasFile('thumb')) {
      @unlink(storage_path('/app/public/' . $contact->thumb));
      $thumb = $request->file('thumb');
      $randNumber = rand(1, 999);
      $name = 'thumb-' . $authUser . '-' . time() . $randNumber . '.' . $thumb->getClientOriginalExtension();
      $year = date('Y/');
      $month = date('F/');
      $destinationPath = storage_path('app/public/contact/' . $year . $month);
      $thumb->move($destinationPath, $name);
      $filePath = 'contact/' . $year . $month;
      $data['thumb'] = $filePath . '' . $name;
    }

    SiteContact::find($id)->update($data);

    return redirect()->route('admin.contact')->with([
      'mesage' => __('admin.common.success'),
      'alert-type' => 'success'
    ]);

  }

  public function delete(Request $request, $id)
  {
    //$this->authorize('delete',SiteContact::class);
    $contact = SiteContact::find($id);
    if ( is_null($contact) == true) {
      return back()->with([
        'error' => __('admin.common.error'),
        'alert-type' => 'error'
      ]);
    }

    @unlink(storage_path('/app/public/' . $contact->thumb));
    $contact->delete();

    return redirect()->route('admin.contact')->with([
      'message' => __('admin.common.success'),
      'alert-type' => 'success'
    ]);
  }


}
