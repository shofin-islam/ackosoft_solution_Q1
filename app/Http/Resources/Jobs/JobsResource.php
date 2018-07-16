<?php

namespace App\Http\Resources\Jobs;

use App\Http\Resources\Jobs\EmployeesResource;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Pagination\Paginator;
use \App\Http\Resources\Jobs\Job_applicantsResource;
use \App\model\Job_applicants;

class JobsResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // return parent::toArray($request);
        return [
                'id' => $this->id,
                'title' => $this->title,
                'deadline' => $this->deadline,
                'applicants_count' => $this->employeess_count,
                'applicants' => EmployeesResource::collection($this->Employeess()->paginate(2))

                // 'applicants' => $this->custom_paginate(EmployeesResource::collection($this->Employeess()->get()), 2)
            ];
    }

    public function custom_paginate($items, $perPage)
    {
        $pageStart = request('page', 1);
        $offSet    = ($pageStart * $perPage) - $perPage;
    // $itemsForCurrentPage = array_slice($items, $offSet, $perPage, TRUE);
        $itemsForCurrentPage = $items->slice($offSet, $perPage);
        return new LengthAwarePaginator(
            $itemsForCurrentPage, $items->count(), $perPage,
            Paginator::resolveCurrentPage(),
            ['path' => Paginator::resolveCurrentPath()]
        );
    }
}
