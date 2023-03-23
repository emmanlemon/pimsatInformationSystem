<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;
    protected $fillable = ['employeeid' , 'firstname' , 'middlename' , 'lastname' , 'dateofbirth' , 'sex' , 'civilstatus' , 'height' , 'weight' , 'bloodtype' , 'citizenship' , 'address' , 'mobile' , 'email'];

}
