<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use GrahamCampbell\ResultType\Result;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Routing\Route;
use PhpParser\Node\Expr\Print_;
use App\Models\User;


session_start();
class UserController extends Controller
{
    public function Show_login(){
        return view('login'); 
    
    }

    public function login(Request $request){
        $user_email = $request->email;
        $user_password = md5($request->password) ;

        $Result = DB::table('users')->where('email',$user_email)->where('password',$user_password)->first();
        if($Result){
            Session::put('user_name',$Result->name);
            Session::put('user_id',$Result->id);
            return redirect::to('/');
        }
        else{
            Session::put('false','email hoặc mật khẩu sai , xin nhập lại ');
            Session::put('message','email hoặc mật khẩu sai , xin nhập lại ');
            return Redirect::to('/login');
        }
        
    }
    public function logout(){
        Session::put('user_name',null);
        Session::put('user_id',null);
        return Redirect::to('/login');
    }
    public function Show_dangky(){
        return view('dangky'); 
    
    }
    public function dangky(Request $request){
        

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password= md5($request->password);
        $user->save();
        if($user->id ){
           
            return redirect::to('login');
        }
        else{
         
            return redirect()->back();
        }
        
    }
   
}

