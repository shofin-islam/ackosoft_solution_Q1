<?php

namespace App\model;

use Illuminate\Database\Eloquent\Model;
use App\model\Job_applicants;
use App\model\Jobs;

class Employees extends Model
{
    public function Job_applicant(){
        return $this->hasMany(Job_applicants::class);
    }

    public function Jobss()
    {
        return $this->belongsToMany('App\model\Jobs','job_applicants','employee_id','job_id')
        ->withPivot('employee_id','job_id');
    }
}
