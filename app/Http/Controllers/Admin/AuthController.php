<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use Auth;
use Redirect;
use Session;

use App\Models\SiteSetting;

class AuthController extends Controller
{
    use SendsPasswordResetEmails;
    public function __construct()
    {

    }

    public function showLinkRequestForm()
    {
        return view('admin.auth.passwords.email');
    }

    public function sendResetLinkEmail(Request $request)
    {
        $this->validate($request, [
            'email'   => 'required|email'
        ]);
        return $request->all();
    }


    public function login()
    {
        return view('admin.auth.login');
    }

    public function loginStore(Request $request)
    {
        $this->validate($request, [
            'email'   => 'required|email',
            'password' => 'required|min:6'
        ]);

        if (Auth::guard('admin')->attempt(['email' => $request->email, 'password' => $request->password], $request->get('remember'))) {
            //$sitesetting = SiteSetting::where(['status'=>1])->first();
            //$request->session()->put('sitesetting', $sitesetting);
            return redirect()->intended('/admin/dashboard');
            //return Redirect::route('admin.dashboard');
        }
        Session::flash('error', "email or password does not match");
        return back()->withInput($request->only('email', 'remember'));
    }

    protected function guard()
    {
        return Auth::guard('admin');
    }

    public function logout(Request $request)
    {
        //return "Hello";
        //Auth::guard('web')->logout();
        $this->guard('admin')->logout();
        //$request->session()->invalidate();
        //$request->session()->regenerateToken();
        return redirect('admin/login');
    }

    

}
