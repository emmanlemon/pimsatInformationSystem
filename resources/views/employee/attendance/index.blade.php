<!DOCTYPE html>
<html lang="en">
<head>
    <title>Employee Attendance</title> 
</head>
@extends('admin.index')
@extends('components.molecule.sideBarNavigationEmployee')
@section('sideBarNavigation')
<section class="home-section">
    <div class="text">Employee Attendance
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">+ Add Attendance</button>
    </div>

    <div class="container">
        <table class="table">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Date</th>
                <th scope="col">Time In</th>
                <th scope="col">Time Out</th>
              </tr>
            </thead>
            <tbody>
                @foreach ($attendances as $attendance)
                <tr>
                    <th scope="row">{{ $attendance->date }}</th>
                    <td>{{ date('g:i a', strtotime($attendance->time_in)) }}</td>
                    <td>{{ date('g:i a', strtotime($attendance->time_out))  }}</td>
                 </tr>
                @endforeach
            </tbody>
        <table>
    </div>
      
    <!-- Modal -->
  <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">+ Add Employee Attendance</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form action="{{ url('employee/attendance')}}" enctype="multipart/form-data" method="POST">
                @csrf
                
             
                <input type="hidden" name="employee_id" value="{{ $id->id }}" >

                    <div class="form-group">
                    <label>Date:</label>
                    <input type="date" name="date" class="form-control" required>
                  </div>

                  <div class="form-group"> 
                    <label>Time In:</label>
                    <input type="time" name="time_in"required>
                    <label>Time Out:</label>
                    <input type="time" name="time_out"required>
                  </div>
                  
                  
                <div class="form-group">
                  <button class="btn btn-primary upload-image" id="save" type="submit">Save</button>
                  <button class="btn btn-primary upload-image" type="reset">Reset</button>
                </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
@endsection
