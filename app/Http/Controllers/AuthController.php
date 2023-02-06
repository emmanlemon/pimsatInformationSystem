<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Employee;
use App\Models\Admin;
use Hash;   

class AuthController extends Controller
{
    public function store(Request $request){
        $admin = Admin::where('username', '=', $request->username)->first();
        $employee = Employee::where('employeeid', '=', $request->username)->first();
        if($admin)
        {   
            if(Hash::check($request->password, $admin->password))
            {
                $request->session()->put(
                   ['loginId'=>$admin->id,
                    'role' => 'admin']
                );
                return redirect('/admin');
            }
            else
            {
                return back()->with('fail', 'Password does not match');
            }
        }
        else if($employee)
        {
            if(Hash::check($request->password, $employee->password))
            {
                $request->session()->put(
                    ['loginId'=> $employee->id ,
                    'role' => 'employee']
                );
                return redirect('/teacher/page');
            }
            else
            {
                return back()->with('fail', 'Password does not match');
            }
        }
        else
        {
            return back()->with('fail' ,'This Employee ID is not existing');
        }
    }
}
