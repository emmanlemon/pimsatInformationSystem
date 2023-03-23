<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Employee Leave</title>
    {{-- @vite(['resources/sass/app.scss', 'resources/js/app.js']) --}}
</head>
@extends('admin.index')
@extends('components.molecule.sideBarNavigation')
@section('sideBarNavigation')
<section class="home-section">
    <div class="text">Admin Employee Leave</div>
    <div class="container">
        @if(Session::has('delete'))
        <div class="alert alert-danger m-2s">{{ Session::get('delete') }}</div>
        @elseif(Session::has('update'))
        <div class="alert alert-success m-2">{{ Session::get('update') }}</div>
        @endif
        <table class="table">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Employee ID</th>
                <th scope="col">Name</th>
                <th scope="col">Absence Reason</th>
                <th scope="col">Start Date</th>
                <th scope="col">End Date</th>
                <th scope="col">Status</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>
                @foreach ($leave as $leave)
                <tr>
                    <th>{{ $leave->employeeid }}</th>
                    <td scope="row">{{ $leave->firstname }} {{ $leave->middlename }} {{ $leave->lastname }}</td>
                    <td>{{ $leave->absence_reason }}</td>
                    <td>{{ $leave->start_date  }}</td>
                    <td>{{ $leave->end_date  }}</td>
                    <td>
                        <form action="{{ url("employee/leave/$leave->id") }}" method="post">
                        @csrf
                        @method('PUT')
                        <select class="form-select" name="status">
                        <option selected>{{ $leave->status }}</option>
                        @if($leave->status == 'PENDING')
                        <option value="APPROVED">APPROVED</option>
                        @else
                        <option value="PENDING">PENDING</option>
                        @endif
                        </select>
                    </td>
                    <td>
                        <div class="button" style="display: flex; gap: .5em;">
                            <button class="btn btn-primary" type="submit" id="editbtn" data-toggle="modal" data-target="#editModal">
                              Edit
                           </button>
                        </form>
                           <div class="deleteButton">
                             <form action='{{ url("employee/leave/$leave->id")}}' method="post">
                             <input class="btn btn-primary" type="submit" value="Delete" />
                             @method('delete')
                             @csrf
                           </form>
                           </div>  
                          </div>
                    </td>
                     
                 </tr>
                @endforeach
            </tbody>
        <table>
    </div>
  
</section>
@endsection