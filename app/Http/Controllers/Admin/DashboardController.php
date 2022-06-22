<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;
use Auth;

class DashboardController extends Controller
{
    const VIEW_PATH = 'admin.dashboard.';

    public function __construct()
    {

    }

    public function index()
    {
      return view(self::VIEW_PATH . 'index');
    }


    

}
