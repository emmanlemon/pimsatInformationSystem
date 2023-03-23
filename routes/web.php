<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\Admin\PagesController;
use App\Http\Controllers\Employee\PageController;
use App\Http\Controllers\Employee\LeaveController;
use App\Http\Controllers\Employee\AttendanceController;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::redirect('/' , '/auth');
Route::get('/logout', [AuthController::class , 'logout'])->name('logout');
Route::resource('/auth', AuthController::class);

Route::prefix('admin')->group(function () {
    Route::resource('/', AdminController::class);
    Route::get('/employee/profile/{id}', [PagesController::class , 'profile']);
    Route::get('/{pages}' , [PagesController::class , 'index'])->name('admin.page');
    Route::get('/employee/attendance/print' , [PagesController::class , 'print_attendance']);
    Route::get('/employee/data/print/{id}' , [PagesController::class , 'print_employeeData']);
    Route::get('/employee/list/print' , [PagesController::class , 'print_employeeList']);
})->middleware('isLoggedIn');


Route::prefix('employee')->group(function () {
    Route::resource('/page', EmployeeController::class);
    Route::put('/page/edit/profile/{id}', [EmployeeController::class, 'update']);
    Route::resource('/leave', LeaveController::class);
    Route::resource('/attendance', AttendanceController::class);
    Route::put('/page/education/{id?}' , [PageController::class , 'education']);
    Route::post('/page/document/' , [PageController::class , 'document']);
    Route::post('/page/award/' , [PageController::class , 'award']);
    Route::post('/page/work/' , [PageController::class , 'work']);
    Route::post('/page/eligibility/' , [PageController::class , 'eligibility']);
    Route::post('/page/training/' , [PageController::class , 'training']);
    Route::post('/page/voluntary/' , [PageController::class , 'voluntary']);
    Route::post('/page/education/' , [PageController::class , 'education']);
    Route::put('/page/education/update/{id}' , [PageController::class , 'education_update']);
    Route::delete('/delete/{page}/{id}' , [PageController::class , 'delete']);
    Route::get('/{pages}' , [PageController::class , 'index'])->name('employee.page');
})->middleware('isLoggedIn');
