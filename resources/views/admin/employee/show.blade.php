<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Employee Profile</title>
</head>
@extends('admin.index')
@extends('components.molecule.editProfileModal')
@extends('components.molecule.sideBarNavigation')
@section('sideBarNavigation')
<section class="home-section">
    <div class="text">Employee Profile<i class='bx bxs-user-circle'></i>
      <a href="{{ url("admin/employee/data/print/$id->id") }}"target="_blank" class="printPage btn btn-primary"><i class='bx bxs-printer'></i> Print</a>
      <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#editProfileModal">Edit Profile</button>
    </div>
    @if(Session::has('update'))
    <div class="alert alert-success m-2">{{ Session::get('update') }}</div>
    @endif
    <div class="container bg-white p-3">
      <h4>Employee ID: {{ $id->employeeid }}</h4>
      <h4>First Name: {{ $id->firstname }}</h4>
      <h4>Middle Name: {{ $id->middlename }}</h4>
      <h4>Last Name: {{ $id->lastname }}</h4>
      <h4>Date of Birth: {{ $id->dateofbirth }}</h4>
      <h4>Sex: {{ $id->sex }}</h4>
      <h4>Civil Status: {{ $id->civilstatus }}</h4>
      <h4>Height: {{ $id->height }} cm</h4>
      <h4>Weight: {{ $id->weight }} kl</h4>
      <h4>Blood Type: {{ $id->bloodtype }}</h4>
      <h4>Citizenship: {{ $id->citizenship }}</h4>
      <h4>Address: {{ $id->address }}</h4>
      <span class="title">Educational Background</span>
      <ul>
        @if (empty($education))
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
            @else
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
      <span class="title">Documents</span>
      <ul>
      @foreach ($document as $document) 
          <li style="margin-bottom: 5px;"><i class='bx bx-file'></i>File : {{ $document->docu_type }} <a href="{{ URL::asset($document->docu_type) }}" target="blank" download><button class="btn btn-primary">Download the File</button></a></li>
     @endforeach
      </ul>
      <span class="title">Award</span>
      <ul>
      @foreach ($award as $award) 
          <li>{{ $award->award_type }}</li>
      @endforeach
      </ul>
      <span class="title">Work</span>
      <table class="table" style="margin-top: 10px;">
        <thead class="thead-dark">
          <tr>
            <th scope="col">Inclusive Dates</th>
            <th scope="col">Position Title</th>
            <th scope="col">Company</th>
            <th scope="col">Monthly Salary</th>
            <th scope="col">Government Service</th>
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
             </tr>
            @endforeach
        </tbody>
    <table> 
      <span class="title">Eligibility</span> 
      <table class="table" style="margin-top: 10px;">
        <thead class="thead-dark">
          <tr>
            <th scope="col">Eligibility Type</th>
            <th scope="col">Rating</th>
            <th scope="col">Date of Exam</th>
            <th scope="col">Place Of Exam</th>
            <th scope="col">Date Of Validity</th>
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
             </tr>
            @endforeach
        </tbody>
    <table> 
      <span class="title">Training</span>
      <table class="table" style="margin-top: 10px;">
        <thead class="thead-dark">
          <tr>
            <th scope="col">Type Of ID</th>
            <th scope="col">Attendance Date</th>
          </tr>
        </thead>
        <tbody>
          @foreach ($training as $training) 
          <tr>
                <td>{{ $training->type_of_id }}</td>
                <td>{{ $training->attendance_date }}</td>
          </tr>
            @endforeach
        </tbody>
    <table>
      <span class="title">Voluntary</span>
      <table class="table" style="margin-top: 10px;">
        <thead class="thead-dark">
          <tr>
            <th scope="col">Address Organization</th>
            <th scope="col">Position</th>
            <th scope="col">Inclusive Dates</th>
          </tr>
        </thead>
        <tbody>
          @foreach ($voluntary as $voluntary) 
          <tr>
                <td>{{ $voluntary->addr_organization }}</td>
                <td>{{ $voluntary->position }}</td>
                <td>{{ $voluntary->inclusive_dates }}</td>
          </tr>
            @endforeach
        </tbody>
    <table>  
    </div>
</section>
@endsection