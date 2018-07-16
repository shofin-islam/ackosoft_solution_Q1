<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;
use App\model\Job_applicants;
use App\model\Employees;

class Jobs extends Model
{
   public function Job_applicant(){
        return $this->hasMany(Job_applicants::class);
    }

    public function Employeess()
    {
        return $this->belongsToMany('App\model\Employees','job_applicants','job_id','employee_id')
        ->withPivot('job_id','employee_id');
    }
}
