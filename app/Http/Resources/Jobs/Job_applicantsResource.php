<?php

namespace App\Http\Resources\Jobs;

use App\Http\Resources\Jobs\EmployeesResource;
use App\model\Employees;
use Illuminate\Http\Resources\Json\JsonResource;

class Job_applicantsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $y = new EmployeesResource(Employees::where('id',$this->employee_id)->first());
        // dd($y);
        return [
            'name' => $y->first_name.' '.$y->last_name,
            'pivot' => [
                'job_id' => $this->job_id,
                'employee_id' => $this->employee_id
        ]          
        ];
    }
}
