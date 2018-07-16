<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;
use App\model\Employees;
use App\model\Jobs;

class Job_applicants extends Model
{
   public function Employee(){
        return $this->belongsTo(Employees::class);
    }

    public function Job(){
        return $this->belongsTo(Jobs::class);
    }
}
