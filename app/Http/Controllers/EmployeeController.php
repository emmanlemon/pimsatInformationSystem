<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Employee;
use App\Models\Leave;
use Session;
use DB;

class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = array();
        if(Session::get('role') == "employee")
        {
            $id = Employee::where('id', '=' ,Session::get('loginId'))->first();
            $leave = DB::table('leaves')->where('employee_id', '=' ,Session::get('loginId'))->get();
            $attendance = DB::table('attendances')->where('employee_id', '=' ,Session::get('loginId'))->get();


            return view('employee.dashboard', compact('id' , 'leave' , 'attendance'));
        }
        else{
            return redirect('/auth')->with('fail' ,'This is For Employee Section');
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Employee::create($request->all());
        return redirect()->back()->with('success', 'Employee Created Successfully');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $employee = Employee::findOrFail($id);
        $employee->employeeId = $request->input('employeeid');
        $employee->firstname = $request->input('firstname');
        $employee->middlename = $request->input('middlename');
        $employee->lastname = $request->input('lastname');
        $employee->dateofbirth = $request->input('dateofbirth');
        $employee->sex = $request->input('sex');
        $employee->civilstatus = $request->input('civilstatus');
        $employee->height = $request->input('height');
        $employee->bloodtype= $request->input('bloodtype');
        $employee->citizenship = $request->input('citizenship');
        $employee->address = $request->input('address');
        $employee->mobile = $request->input('mobile');
        $employee->email = $request->input('email');
        $employee->save();
        return redirect()->back()->with('update', 'Profile Update Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Employee::where('id', $id)->delete();
        return back()->with('delete', 'Employee Deleted Successfully'); 
    }
}
