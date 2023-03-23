<!DOCTYPE html>
<html lang="en">
<head>
    <title>Employee Profile</title>
</head>
@extends('admin.index')
@extends('components.molecule.editProfileModal')
@extends('components.molecule.educationModal')
@extends('components.molecule.documentModal')
@extends('components.molecule.awardModal')
@extends('components.molecule.worksModal')
@extends('components.molecule.eligibilityModal')
@extends('components.molecule.trainingModal')
@extends('components.molecule.voluntariesModal')
@extends('components.molecule.sideBarNavigationEmployee')
@section('sideBarNavigation')
<section class="home-section">
    <div class="text"><i class='bx bxs-user-circle'></i>Employee Profile
      <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#editProfileModal">Edit Profile</button>
      <a href="{{ url("admin/employee/data/print/".session::get('loginId')) }}"target="_blank" class="printPage btn btn-primary"><i class='bx bxs-printer'></i> Print</a>
    </div>
    @if(Session::has('delete'))
    <div class="alert alert-danger m-2s">{{ Session::get('delete') }}</div>
    @elseif(Session::has('update'))
    <div class="alert alert-success m-2">{{ Session::get('update') }}</div>
    @elseif(Session::has('success'))
    <div class="alert alert-success m-2">{{ Session::get('success') }}</div>
    @endif
    <div class="container" style="background-color: white;"> 
      <h4>Employee ID: {{ $id->employeeid }}</h4>
      <h4>First Name: {{ $id->firstname }}</h4>
      <h4>Middle Name: {{ $id->middlename }}</h4>
      <h4>Last Name: {{ $id->lastname }}</h4>
      <h4>Date of Birth: {{ $id->dateofbirth }}</h4>
      <h4>Sex: {{ $id->sex }}</h4>
      <h4>Civil Status: {{ $id->civilstatus }}</h4>
      <h4>Height: {{ $id->height }} cm</h4>
      <h4>Weight: {{ $id->weight }} Kl</h4>
      <h4>Blood Type: {{ $id->bloodtype }}</h4>
      <h4>Citizenship: {{ $id->citizenship }}</h4>
      <h4>Address: {{ $id->address }}</h4>
        @if(empty($education))
        <span class="title">Educational Background
          <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#educationModal">Add Educational Background</button>
        </span>
        <ul>
        <li>
          Elementary School: 
        </li>
        <li>
          Secondary School:
        </li>
        <li>
          Vocational:
        </li>
        <li>
          College School:
        </li>
        <li>
          Graduate Studies: 
        </li>
      </ul>
        @else
        <span class="title">Educational Background
          <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#educationModal">Edit Educational Background</button>
        </span>
        <ul>
        <li>
          Elementary School: {{ $education->elementary }}
        </li>
        <li>
          Secondary School: {{ $education->secondary }}
        </li>
        <li>
          Vocational: {{ $education->vocational }}
        </li>
        <li>
          College School: {{ $education->college }}
        </li>
        <li>
          Graduate Studies: {{ $education->grad_studies }}
        </li>
        @endif
      </ul>
      <span class="title">Documents
        <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#documentModal">Add Document</button>
      </span>
      <ul>
      @foreach ($document as $document) 
          <p><i class='bx bx-file'></i>File : {{ $document->docu_type }} <a href="{{ URL::asset($document->docu_type) }}" target="blank" download><button class="btn btn-primary">Download the File</button></a>
           <button style="margin:0; padding:0;">
            <form action='{{ url("employee/delete/documents/$document->id")}}' method="post">
              <input class="btn btn-danger" type="submit" value="Delete" />
              @method('delete')
              @csrf
              </form>
           </button>
          </p>
     @endforeach
      </ul>
      <span class="title">Award
        <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#awardModal">Add Award</button>
      </span>
      <ul>
      @foreach ($award as $award) 
          <li style="margin-top:5px;">{{ $award->award_type }} 
          <button style="margin:0; padding:0;">
            <form action='{{ url("employee/delete/awards/$award->id")}}' method="post">
              <input class="btn btn-danger" type="submit" value="Delete" />
              @method('delete')
              @csrf
              </form>
          </button>
          </li>
      @endforeach
      </ul>
      <span class="title">Work
        <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#workModal">Add Work</button>
      </span>
      <table class="table" style="margin-top: 10px;">
        <thead class="thead-dark">
          <tr>
            <th scope="col">Inclusive Dates</th>
            <th scope="col">Position Title</th>
            <th scope="col">Company</th>
            <th scope="col">Monthly Salary</th>
            <th scope="col">Government Service</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
          @foreach ($work as $work) 
          <tr>
                <td>{{ $work->inclusive_dates }}</td>
                <td>{{ $work->position_title }}</td>
                <td>{{ $work->company }}</td>
                <td>{{ $work->month_salary }}</td>
                <td>{{ $work->govt_service}}</td>
                <td> <div class="deleteButton">
                  <form action='{{ url("employee/delete/works/$work->id")}}' method="post">
                  <input class="btn btn-danger" type="submit" value="Delete" />
                  @method('delete')
                  @csrf
                </form>
              </td>
             </tr>
            @endforeach
        </tbody>
    <table> 
      <span class="title">Eligibility
        <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#eligibilityModal">Add Eligibility</button>
      </span> 
      <table class="table" style="margin-top: 10px;">
        <thead class="thead-dark">
          <tr>
            <th scope="col">Eligibility Type</th>
            <th scope="col">Rating</th>
            <th scope="col">Date of Exam</th>
            <th scope="col">Place Of Exam</th>
            <th scope="col">Date Of Validity</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
          @foreach($eligibility as $eligibility) 
          <tr>
                <td>{{ $eligibility->eligibility_type }}</td>
                <td>{{ $eligibility->rating }}%</td>
                <td>{{ $eligibility->date_of_exam }}</td>
                <td>{{ $eligibility->place_of_exam }}</td>
                <td>{{ $eligibility->date_of_validity }}</td>
                <td>
                  <form action='{{ url("employee/delete/eligibilities/$eligibility->id")}}' method="post">
                  <input class="btn btn-danger" type="submit" value="Delete" />
                  @method('delete')
                  @csrf
                  </form>
              </td>
             </tr>
            @endforeach
        </tbody>
    <table> 
      <span class="title">Training
        <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#trainingModal">Add Training</button>
      </span>
      <table class="table" style="margin-top: 10px;">
        <thead class="thead-dark">
          <tr>
            <th scope="col">Type Of ID</th>
            <th scope="col">Attendance Date</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
          @foreach ($training as $training) 
          <tr>
                <td>{{ $training->type_of_id }}</td>
                <td>{{ $training->attendance_date }}</td>
                <td><button class="btn btn-danger">Delete</button></td>
          </tr>
            @endforeach
        </tbody>
    <table>
      <span class="title">Voluntary
        <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#voluntariesModal">Add Voluntary</button>
      </span>
      <table class="table" style="margin-top: 10px;">
        <thead class="thead-dark">
          <tr>
            <th scope="col">Address Organization</th>
            <th scope="col">Position</th>
            <th scope="col">Inclusive Dates</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
          @foreach ($voluntary as $voluntary) 
          <tr>
                <td>{{ $voluntary->addr_organization }}</td>
                <td>{{ $voluntary->position }}</td>
                <td>{{ $voluntary->inclusive_dates }}</td>
                <td><button class="btn btn-danger">Delete</button></td>
          </tr>
            @endforeach
        </tbody>
    <table>  
    </div>
</section>
@endsection