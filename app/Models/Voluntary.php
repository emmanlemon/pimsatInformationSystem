<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Voluntary extends Model
{
    use HasFactory;
    protected $fillable = ['addr_organization', 'position','inclusive_dates','employee_id'];

}
