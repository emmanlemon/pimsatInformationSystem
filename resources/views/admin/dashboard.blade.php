<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Students</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    {{-- @vite(['resources/sass/app.scss', 'resources/js/app.js']) --}}
</head>
@extends('admin.index')
@extends('components.molecule.sideBarNavigation')
@section('sideBarNavigation')
<section class="home-section">
    <div class="text">Admin Dashboard</div>
    <h2>Master List</h2>
    <div class="row g-6 mb-6">        
        <div class="col-xl-3 col-sm-6 col-12">
            <div class="card shadow border-0">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">
                                <i class='bx bx-user' ></i>
                                Employee</span>
                            <span class="h3 font-bold mb-0">{{ $employee->count() }}</span>
                        </div>
                        <div class="col-auto">
                            <div class="icon icon-shape bg-tertiary text-white text-lg rounded-circle">
                                <i class="bi bi-credit-card"></i>
                            </div>
                        </div>
                    </div>
                    <div class="mt-2 mb-0 text-sm">
                        <a href="{{ route('admin.page' , 'employee') }}" style="text-decoration:none;">
                        <span class="text-nowrap text-xs text-muted">
                        <i class='bx bxs-down-arrow-square'></i> More Info</span>                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-sm-6 col-12">
            <div class="card shadow border-0">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">
                                <i class='bx bxs-user-detail'></i>
                                Leave</span>
                            <span class="h3 font-bold mb-0">{{ $leave->count() }}</span>
                        </div>
                        <div class="col-auto">
                            <div class="icon icon-shape bg-tertiary text-white text-lg rounded-circle">
                                <i class="bi bi-credit-card"></i>
                            </div>
                        </div>
                    </div>
                    <div class="mt-2 mb-0 text-sm">
                        <a href="{{ route('admin.page' , 'leave') }}" style="text-decoration:none;">
                        <span class="text-nowrap text-xs text-muted">
                        <i class='bx bxs-down-arrow-square'></i> More Info</span>                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-sm-6 col-12">
            <div class="card shadow border-0">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <span class="h6 font-semibold text-muted text-sm d-block mb-2">
                                <i class='bx bxs-calendar'></i>Attendance</span>
                            <span class="h3 font-bold mb-0">{{ $attendance->count() }}</span>
                        </div>
                        <div class="col-auto">
                            <div class="icon icon-shape bg-primary text-white text-lg rounded-circle">
                                <i class="bi bi-people"></i>
                            </div>
                        </div>
                    </div>
                    <div class="mt-2 mb-0 text-sm">
                        <a href="{{ route('admin.page' , 'attendance') }}" style="text-decoration:none;">
                        <span class="text-nowrap text-xs text-muted">
                        <i class='bx bxs-down-arrow-square'></i> More Info</span>                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection