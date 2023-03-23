<!DOCTYPE html>
<html lang="en">
<head>
    <title>Employee Leave</title>
    {{-- @vite(['resources/sass/app.scss', 'resources/js/app.js']) --}}
</head>
@extends('admin.index')
@extends('components.molecule.sideBarNavigationEmployee')
@section('sideBarNavigation')
<section class="home-section">
    <div class="text">Employee Leave
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">+ Add Leave</button>
    </div>

    <div class="container">
        <table class="table">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Absence Reason</th>
                <th scope="col">Start Date</th>
                <th scope="col">End Date</th>
                <th scope="col">Status</th>
              </tr>
            </thead>
            <tbody>
                @foreach ($leave as $leave)
                <tr>
                    <th scope="row">{{ $leave->absence_reason }}</th>
                    <td>{{ $leave->start_date  }}</td>
                    <td>{{ $leave->end_date  }}</td>
                    <td>{{ $leave->status  }}</td>
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
          <h5 class="modal-title" id="exampleModalLongTitle">+ Add Leave</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form action="{{ url('/employee/leave') }}" enctype="multipart/form-data" method="POST">
                @csrf
                
                <input type="hidden" name="employee_id" value="{{ $id->id }}" >

                    <div class="form-group">
                    <label>Absence Reason:</label>
                    <input type="text" name="absence_reason" class="form-control" placeholder="Enter Title" required>
                  </div>

                  <div class="form-group">
                    <label>Start Date:</label>
                    <input type="date"  name="start_date" class="form-control" required>
                  </div>
                  
                  <div class="form-group">
                    <label>End Date:</label>
                    <input type="date" name="end_date" class="form-control" required>
                  </div>
                
                <div class="form-group">
                  <button class="btn btn-primary upload-image" id="save" type="submit">Save</button>
                  <button class="btn btn-primary upload-image" type="submit">Reset</button>
                </div>
            </div>
          </form>
        </div>
        {{-- <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div> --}}
      </div>
    </div>
  </div>

  
</section>
@endsection