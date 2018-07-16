<?php
namespace App\Http\Controllers;
use App\Model\Jobs;
use Illuminate\Http\Request;
use \App\Http\Resources\Jobs\JobsResource;
use \App\Http\Resources\Jobs\JobsCollection;
use \App\model\Job_applicants;


    class JobsController extends Controller
    {
        /**
         * Display a listing of the resource.
         *
         * @return \Illuminate\Http\Response
         */
        public function index()
        {
        
        // $jobs = Jobs::has('Employeess','>',0)->with('Employeess')->withCount('Employeess')->get();
        //     $myjobs = new Collection();
        //     foreach($jobs as $job) {
        //         if($job->employeess_count >2){
        //         $myjobs->push($job);  
        //         }
        //     }
        // return JobsResource::collection($myjobs);

            $jobs = Jobs::has('Employeess','>',0)->with('Employeess')->withCount('Employeess');
            return JobsResource::collection($jobs->paginate(2));
       }



        public function create()
        {
            //
        }

        /**
         * Store a newly created resource in storage.
         *
         * @param  \Illuminate\Http\Request  $request
         * @return \Illuminate\Http\Response
         */
        public function store(Request $request)
        {
            //
        }

        /**
         * Display the specified resource.
         *
         * @param  \App\Model\Jobs  $jobs
         * @return \Illuminate\Http\Response
         */
        public function show(Jobs $jobs)
        {
            //
        }

        /**
         * Show the form for editing the specified resource.
         *
         * @param  \App\Model\Jobs  $jobs
         * @return \Illuminate\Http\Response
         */
        public function edit(Jobs $jobs)
        {
            //
        }

        /**
         * Update the specified resource in storage.
         *
         * @param  \Illuminate\Http\Request  $request
         * @param  \App\Model\Jobs  $jobs
         * @return \Illuminate\Http\Response
         */
        public function update(Request $request, Jobs $jobs)
        {
            //
        }

        /**
         * Remove the specified resource from storage.
         *
         * @param  \App\Model\Jobs  $jobs
         * @return \Illuminate\Http\Response
         */
        public function destroy(Jobs $jobs)
        {
            //
        }
    }
