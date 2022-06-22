<?php

if (!function_exists('authCheck')) {
    function authCheck()
    {
        if(Auth::guard('admin')->check()){
            return Auth::guard('admin')->user()->name;
        }
        elseif(Auth::guard('web')->check()){
            return Auth::guard('web')->user()->name;
        }
    }
}

if (!function_exists('isAdmin')) {
    function isAdmin()
    {
        if(Auth::guard('admin')->check()){
            return true;
        }else{
            return false;
        }
    }
}

if (!function_exists('isUser')) {
    function isUser()
    {
        if(Auth::guard('web')->check()){
            return true;
        }else{
            return false;
        }
    }
}
