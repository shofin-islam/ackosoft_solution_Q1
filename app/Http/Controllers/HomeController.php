<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Assign;
use App\JobRequest;
use App\Employee;
use App\model\Job_applicants;
use App\model\Jobs;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
//        return Assign::with(['assignto','assignedby','request','RequestStatus'])->get();
//        return Assign::where('id',1)->with(['assignto','assignedby'])->get();
       // return JobRequest::with('billing')->get();
//        return Employee::with('assignto','assignedby')->get();
//        return \App\RequestStatus::with('assign')->get();
//        return JobRequest::with('brand')->get();
//        return JobRequest::with('paymentMethod')->get();
//        return \App\Brand::with('JobRequest')->get();
//        return \App\Payment::with('JobRequest')->get();
       // return \App\billing::with('JobRequest')->get();

        // return Job_applicants::with(['Employee','Job'])->get();

        return Jobs::with(['Employeess'])->get();
        return view('home');
    }
}
