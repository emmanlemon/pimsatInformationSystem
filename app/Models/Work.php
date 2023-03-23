<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Work extends Model
{
    use HasFactory;
    protected $fillable = ['employee_id' , 'inclusive_dates' , 'position_title' , 'company' , 'govt_service' ,'month_salary' ,'month_salary'];

}
