<?php

namespace App\Http\Resources\Jobs;

use App\Http\Resources\Jobs\EmployeesCollection;
use App\Model\Jobs;
use Illuminate\Http\Resources\Json\Resource;
use \App\Http\Resources\Jobs\Job_applicantsCollection;
use \App\Http\Resources\Jobs\Job_applicantsResource;
use \App\model\Job_applicants;
use App\Http\Resources\Jobs\EmployeesResource;

class JobsCollection extends Resource
{
    public function toArray($request)
    {
        return parent::toArray($request);
    }

}
