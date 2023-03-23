<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Employee;
use App\Models\Leave;
use App\Models\Attendance;
use App\Models\Education;
use App\Models\Work;
use DB;



class PagesController extends Controller
{
    public function index($pages){
        $employee = Employee::all();
        $column = [
            'leaves.id as id',
            'employees.firstname as firstname',
            'employees.middlename as middlename',
            'employees.lastname as lastname',
            'employees.employeeid as employeeid',
            'absence_reason as absence_reason',
            'start_date as start_date',
            'end_date as end_date',
            'status as status',
        ];
        $leave = DB::table('leaves')
        ->select($column)
        ->leftJoin('employees' , 'employees.id' ,'=', 'leaves.employee_id')
        ->get();
        $attendances = DB::table('attendances')
        ->leftJoin('employees' , 'employees.id' , 'attendances.employee_id')
        ->get();

        return view('admin.'.$pages.'.index' , compact('employee' ,'leave' ,'attendances'));
    }

    public function profile($employeeId){
        $id = DB::table('employees')
        ->where('employees.id', '=' , $employeeId)
        ->first();

        $education = DB::table('education')
        ->where('employee_id', '=' , $employeeId)
        ->first();


        $document = DB::table('documents')
        ->where('employee_id', '=' , $employeeId)
        ->get();
        
        $award = DB::table('awards')
        ->where('employee_id', '=' , $employeeId)
        ->get();
        
        $training = DB::table('trainings')
        ->where('employee_id', '=' , $employeeId)
        ->get();

        $work = DB::table('works')
        ->where('employee_id', '=' , $employeeId)
        ->get();

        $eligibility = DB::table('eligibilities')
        ->where('employee_id', '=' , $employeeId)
        ->get();

        $voluntary = DB::table('voluntaries')
        ->where('employee_id', '=' , $employeeId)
        ->get();

        return view('admin.employee.show' , compact('id', 'document' ,'education', 'award', 'training', 'work' ,'eligibility' , 'training' ,'voluntary'));
    }

    public function print_attendance(){
        $attendances = DB::table('attendances')
        ->leftJoin('employees' , 'employees.id' , 'attendances.employee_id')
        ->get();
        return view ('admin.print.attendance' , compact('attendances'));
    }
    public function print_employeeData($employeeId){
        $data = $this->profile($employeeId);
        $id = $data->id;
        $education = $data->education;
        $document = $data->document;
        $award = $data->award;
        $training = $data->training;
        $work = $data->work;
        $eligibility = $data->eligibility;
        $voluntary = $data->voluntary;
        return view ('admin.print.employeeData' , compact('id', 'education' ,'document' , 'award', 'training', 'work' ,'eligibility' , 'training' ,'voluntary'));
    }
    public function print_employeeList(){
        $employee = Employee::all();
        return view('admin.print.employeeList', compact('employee'));
    }
}
