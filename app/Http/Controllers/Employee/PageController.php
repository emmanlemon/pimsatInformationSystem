<?php

namespace App\Http\Controllers\Employee;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Employee;
use App\Models\Documents;
use App\Models\Award;
use App\Models\Work;
use App\Models\Eligibility;
use App\Models\Education;
use App\Models\Training;
use App\Models\Voluntary;
use Session;
use DB;

class PageController extends Controller
{
    public function index($pages){
        $id = DB::table('employees')
        ->where('employees.id', '=' ,Session::get('loginId'))
        ->first();

        
        $education = DB::table('education')
        ->where('employee_id', '=' ,Session::get('loginId'))
        ->first();

        $document = DB::table('documents')
        ->where('employee_id', '=' ,Session::get('loginId'))
        ->get();

        $award = DB::table('awards')
        ->where('employee_id', '=' ,Session::get('loginId'))
        ->get();
        
        $training = DB::table('trainings')
        ->where('employee_id', '=' ,Session::get('loginId'))
        ->get();

        $work = DB::table('works')
        ->where('employee_id', '=' ,Session::get('loginId'))
        ->get();

        $eligibility = DB::table('eligibilities')
        ->where('employee_id', '=' ,Session::get('loginId'))
        ->get();

        $training = DB::table('trainings')
        ->where('employee_id', '=' ,Session::get('loginId'))
        ->get();

        $voluntary = DB::table('voluntaries')
        ->where('employee_id', '=' ,Session::get('loginId'))
        ->get();

        return view('employee.'.$pages.'.index' , compact('id','education', 'document' , 'award', 'training', 'work' ,'eligibility' , 'training' ,'voluntary'));
    }

    public function education(Request $request){
        Education::create($request->all());
        return redirect()->back()->with('success', 'New Education Added Successfully');
    }

    public function education_update(Request $request , $id){
        $education = Education::findOrFail($id);
        $education->employee_id = $request->input('employee_id');
        $education->elementary = $request->input('elementary');
        $education->secondary = $request->input('secondary');
        $education->vocational = $request->input('vocational');
        $education->college = $request->input('college');
        $education->grad_studies = $request->input('grad_studies');
        $education->save();
        return redirect()->back()->with('update', 'Educatioal Background Update Successfully');
    }


    public function document(Request $request){
        $input = $request->except(['_token']);
        $document = new Documents;
        $document->employee_id = $request->input('employee_id');
        $fileNameFile = $request->docu_type->getClientOriginalName();
        $filePathFile = 'files/' . $fileNameFile;
        $request->docu_type->move(public_path('files/'), $fileNameFile);
        $document->docu_type = $filePathFile;
        $document->save();
        return redirect()->back()->with('success', 'New Document Added Successfully');
    }

    public function award(Request $request){
        Award::create($request->all());
        return redirect()->back()->with('success', 'New Award Added Successfully');
    }
    public function work(Request $request){
        Work::create($request->all());
        return redirect()->back()->with('success', 'New Work Added Successfully');
    }
    public function eligibility(Request $request){
        Eligibility::create($request->all());
        return redirect()->back()->with('success', 'New Eligibility Added Successfully');   
    }
     public function training(Request $request){
        Training::create($request->all());
        return redirect()->back()->with('success', 'New Training Added Successfully');   
    }
    public function voluntary(Request $request){
        Voluntary::create($request->all());
        return redirect()->back()->with('success', 'New Voluntary Added Successfully');   
    }
    public function delete($page , $id){
        DB::table($page)->where('id', $id)->delete();
        return back()->with('delete', 'Deleted Successfully'); 
    }

}
