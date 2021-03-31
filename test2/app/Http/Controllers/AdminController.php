<?php

namespace App\Http\Controllers;

use GrahamCampbell\ResultType\Result;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Routing\Route;
use PhpParser\Node\Expr\Print_;

session_start();

class AdminController extends Controller
{
    public function index(){
        return view('admin_login');
    }
    public function show_dashboard(){
        Session::put('successorder', 'Đăng nhập Thành Công');
        return view('admin.dashboard');
    }
    public function dashboard(Request $request){
        $admin_email = $request->admin_email;
        $admin_password = md5($request->admin_password) ;

        $Result = DB::table('tbl_admin')->where('admin_email',$admin_email)->where('admin_password',$admin_password)->first();
        if($Result){
            Session::put('admin_name',$Result->admin_name);
            Session::put('admin_id',$Result->admin_id);
            return redirect::to('/dashboard');
        }
        else{
            Session::put('false','email hoặc mật khẩu sai , xin nhập lại ');
            Session::put('message','email hoặc mật khẩu sai , xin nhập lại ');
            return Redirect::to('/admin');
        }
        
    }
    public function logout(){
        Session::put('admin_name',null);
        Session::put('admin_id',null);
        return Redirect::to('/admin');
    }
}
