<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Education extends Model
{
    use HasFactory;
    protected $fillable = ['employee_id', 'elementary' , 'secondary' , 'vocational' , 'college' , 'grad_studies'];
}
