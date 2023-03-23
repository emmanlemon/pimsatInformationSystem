<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Employee Attendance</title>
</head>
@extends('admin.index')
@extends('components.molecule.sideBarNavigation')
@section('sideBarNavigation')
<section class="home-section">
    <div class="text">Admin Employee Attendance
        <a href="{{ url('admin/employee/attendance/print') }}"target="_blank" class="printPage btn btn-primary"><i class='bx bxs-printer'></i> Print</a>
    </div>
    <div class="container">
        <table class="table">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Employee ID</th>
                <th scope="col">Name</th>
                <th scope="col">Date</th>
                <th scope="col">Time In</th>
                <th scope="col">Time Out</th>
              </tr>
            </thead>
            <tbody>
                @foreach ($attendances as $attendance)
                <tr>
                    <th scope="row">{{ $attendance->employeeid }}</td>
                    <td>{{ $attendance->firstname }} {{ $attendance->middlename }} {{ $attendance->lastname }}</th>
                    <td>{{ $attendance->date }}</td>
                    <td>{{ date('g:i a', strtotime($attendance->time_in)) }}</td>
                    <td>{{ date('g:i a', strtotime($attendance->time_out))  }}</td>
                 </tr>
                @endforeach
            </tbody>
        <table>
    </div>
</section>
@endsection