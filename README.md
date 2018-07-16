Assessment Test
1. Make an API for applicants
a. Display 2 applicants with their details for each job
(note : applicants info will display by Ascending order)
b. Only display those job if applicants exists.
c. Count the total number of applicant for each job.
d. Reference tables : jobs, job_applicants, employees

Sample:
{
"job": {
"current_page": 1,
"data": [
{
"id": 5,
"title": "Full Stack web developer.",
"deadline": "2018-07-04",
"applicants_count": 30,
"applicants": [
{
"name": "Arlo Dach",
"pivot": {
"job_id": 5,
"employee_id": 3
}
},
{
"name": "Wallace Zemlak",
"pivot": {
"job_id": 5,
"employee_id": 7
}
}
]
}
],
"first_page_url": "http://localhost:8000/api/applicants?page=1",
"from": 1,
"last_page": 1,
"last_page_url": "http://localhost:8000/api/applicants?page=1",
"next_page_url": null,
"path": "http://localhost:8000/api/applicants",
"per_page": 5,
"prev_page_url": null,
"to": 1,
"total": 1
}
}
