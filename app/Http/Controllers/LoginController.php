<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LoginController extends Controller
{
    public function __construct(){
        @session_start();
    }
    public function getLogin(){
        return view('auth.login');
    }

    public function postLogin(Request $request){
        if ($request->username == '' || $request->password == ''){
            return redirect('/login')->with('notice','Tài khoản hoặc mật khẩu không được để trống');
        }
    }
}
