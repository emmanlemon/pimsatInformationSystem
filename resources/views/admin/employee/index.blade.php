<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Employee</title>
</head>
@extends('admin.index')
@extends('components.molecule.sideBarNavigation')
@section('sideBarNavigation')
<section class="home-section">
    <div class="text">Admin Employee List
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addEmployee">+ Add Employee</button>
        <a href="{{ url('admin/employee/list/print') }}"target="_blank" class="printPage btn btn-primary"><i class='bx bxs-printer'></i> Print</a>
      </div>
    @if(Session::has('delete'))
    <div class="alert alert-danger m-2s">{{ Session::get('delete') }}</div>
    @elseif(Session::has('success'))
    <div class="alert alert-success m-2">{{ Session::get('success') }}</div>
    @endif
   
    <div class="container" style="width:100%;">
        <table class="table">
            <thead class="thead-dark">
              {{-- <tr>
                <th scope="col">Employee ID</th>
                <th scope="col">First Name</th>
                <th scope="col">Middle Name</th>
                <th scope="col">Last Name</th>
                <th scope="col">Date of Birth</th>
                <th scope="col">Sex</th>
                <th scope="col">Civil Status</th>
                <th scope="col">Height</th>
                <th scope="col">Weight</th>
                <th scope="col">Blood Type</th>
                <th scope="col">Citizenship</th>
                <th scope="col">Address</th>
                <th scope="col">Mobile</th>
                <th scope="col">Email</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>
                @foreach ($employee as $employee)
                <tr>
                    <th scope="row">{{ $employee->employeeid }}</th>
                    <td>{{ $employee->firstname }}</td>
                    <td>{{ $employee->middlename  }}</td>
                    <td>{{ $employee->lastname  }}</td>
                    <td>{{ $employee->dateofbirth }}</td>
                    <td>{{ $employee->sex  }}</td>
                    <td>{{ $employee->civilstatus  }}</td>
                    <td>{{ $employee->height  }}</td>
                    <td>{{ $employee->weight  }}</td>
                    <td>{{ $employee->bloodtype  }}</td>
                    <td>{{ $employee->citizenship  }}</td>
                    <td>{{ $employee->address  }}</td>
                    <td>{{ $employee->mobile }}</td>
                    <td>{{ $employee->email }}</td>
                    <td>Delete</td>
                 </tr> --}}
                 <tr>
                    <th scope="col">Employee ID</th>
                    <th scope="col">First Name</th>
                    <th scope="col">Middle Name</th>
                    <th scope="col">Last Name</th>
                    <th scope="col">Sex</th>
                    <th scope="col">Civil Status</th>
                    <th scope="col">Height</th>
                    <th scope="col">Weight</th>
                    <th scope="col">Address</th>
                    <th scope="col">Mobile</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                    @foreach ($employee as $employee)
                    <tr>
                        <th scope="row">{{ $employee->employeeid }}</th>
                        <td>{{ $employee->firstname }}</td>
                        <td>{{ $employee->middlename  }}</td>
                        <td>{{ $employee->lastname  }}</td>
                        <td>{{ $employee->sex  }}</td>
                        <td>{{ $employee->civilstatus  }}</td>
                        <td>{{ $employee->height  }}</td>
                        <td>{{ $employee->weight  }}</td>
                        <td>{{ $employee->address  }}</td>
                        <td>{{ $employee->mobile }}</td>
                        <td>
                            <div class="deleteButton" style="display:flex; gap: .5em; font-size: .75em;">
                                <a href="{{ url('admin/employee/profile/'.$employee->id)}}" class="btn btn-primary">View</a>
                              <form action='{{ url("employee/page/$employee->id")}}' method="post">
                              <input class="btn btn-danger" type="submit" value="Delete" />
                              @method('delete')
                              @csrf
                            </form>
                            </div>

                            
                        </td>
                     </tr>
                @endforeach
            </tbody>
        <table>
    </div>

     <!-- Modal -->
  <div class="modal fade" id="addEmployee" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">+ Add Employee</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form action="{{ url('employee/page')}}" enctype="multipart/form-data" method="POST">
                @csrf
                
                <div class="form-group">
                    <label>Employee ID:</label>
                    <input type="type" name="employeeid" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>First Name:</label>
                    <input type="type" name="firstname" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Middle Name:</label>
                    <input type="type" name="middlename" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Last Name:</label>
                    <input type="type" name="lastname" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Date Of Birth:</label>
                    <input type="date" name="dateofbirth" class="form-control" required>
                </div>
               <div class="form-group">
                <label for="">Sex:</label>
                <select class="form-select form-select-sm" style="width: 100;" name="sex">
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                  </select>
               </div>
                <div class="form-group">
                    <label>Civil Status:</label>
                    <input type="type" name="civilstatus" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Height(Ft):</label>
                    <input type="number" name="height" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Weight(Kl):</label>
                    <input type="number" name="weight" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Blood Type:</label>
                    <input type="type" name="bloodtype" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Citizenship:</label>
                    <input type="type" name="citizenship" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Address:</label>
                    <input type="type" name="address" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Mobile Number:</label>
                    <input type="number" name="mobile" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Email:</label>
                    <input type="email" name="email" class="form-control" required>
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