<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Eligibility extends Model
{
    use HasFactory;
    protected $fillable = ['employee_id' , 'eligibility_type','rating','date_of_exam','place_of_exam','date_of_validity'];

}
