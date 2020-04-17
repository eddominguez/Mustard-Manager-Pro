<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Employees - Perform FI</title>
    <link rel="icon" type="image/jpeg" sizes="16x16" href="assets/img/Shield-no-photo_16x16.jpg?h=6516e915287cd86361c943ab8e8a167f">
    <link rel="icon" type="image/jpeg" sizes="32x32" href="assets/img/Shield-no-photo_1_32x32.jpg?h=d0f310f41f5298503e56369787b73474">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css?h=55746c9de4e2a38a33a2863202176aac">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css?h=1585abf9beaf49802b3a80bf813edceb">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css?h=1585abf9beaf49802b3a80bf813edceb">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css?h=1585abf9beaf49802b3a80bf813edceb">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
</head>

<body id="page-top">
    <div id="wrapper">
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
                <nav class="navbar navbar-light navbar-expand bg-white shadow mb-4 topbar static-top">
                    <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button>
                        <a class="text-white" href="all_employees.jsp">
                            <h5 style="width: 320px;margin-left: 25px;color: #73a3ff;font-weight: bold;font-size: 22px;">Mustard Manager Pro</h5>
                        </a><a class="btn active text-center" role="button" data-bs-hover-animate="pulse" style="margin: 0px 0px 0px 340px;background-color: #ffffff;color: rgb(21,4,4);font-weight: bold;margin-left: 190px;" href="all_employees.jsp">Employees</a>
                        <a
                            class="btn text-center d-xl-flex" role="button" data-bs-hover-animate="pulse" style="margin: 0px 0px px 200px;margin-left: 20px;color: rgb(255,255,255);background-color: rgb(115,163,255);font-weight: bold;padding-right: 6px;" href="r_performance.jsp">Reports &nbsp;</a><a class="text-white" href="m_jobs.jsp" style="margin-left: 216px;font-size: 23px;width: 34px;"><i class="fas fa-user-tie" data-bs-hover-animate="pulse" style="margin-left: 44px;color: rgb(85,99,139);font-size: 22px;height: 20px;margin-top: 13px;"></i><h5 style="font-size: 12px;margin-left: 30px;margin-top: -6px;color: rgb(65,55,55);font-weight: bold;">Manager</h5></a>
                            <ul
                                class="nav navbar-nav flex-nowrap ml-auto" style="margin-right: -15px;">
                                <div class="d-none d-sm-block topbar-divider"></div>
                                </ul><a class="text-black-50" href="#" style="font-size: 12.8px;padding: 20px;font-weight: bold;">Hello, Karma<img class="rounded-circle" src="assets/img/avatars/avatar2.jpeg?h=5d142be9441885f0935b84cf739d4112" style="width: 32px;height: 32px;margin-left: 10px;"></a><a class="text-dark"
                                    href="login.jsp"><i class="fas fa-sign-out-alt" data-bs-hover-animate="rubberBand" style="width: 16px;height: 16px;margin-right: 20px;"></i></a></div>
                </nav>
                <div class="container-fluid">
                    <div class="card shadow" style="margin-top: -10px;">
                        <div class="card-body">
                            <div class="row" style="margin-bottom: 20px;">
                                <div class="col"><a href="r_performance.jsp"></a><a class="btn" role="button" data-bs-hover-animate="pulse" style="margin: 10px;font-weight: bold;background-color: rgb(115,163,255);color: rgb(255,255,255);margin-left: 480px;" href="r_performance.jsp">Review</a>
                                    <a
                                        class="btn" role="button" data-bs-hover-animate="pulse" style="margin: 10px;font-weight: bold;color: rgb(21,4,4);background-color: rgb(255,255,255);margin-left: 6px;" href="r_budget.jsp">Budget</a><a class="btn" role="button" data-bs-hover-animate="pulse" style="margin: 10px;font-weight: bold;color: rgb(21,4,4);background-color: rgb(255,255,255);margin-left: 6px;" href="r_ratings.jsp">Ratings</a></div>
                            </div>
                            <div class="card shadow mb-5">
                                <div class="card-header py-3">
                                    <p class="m-0 font-weight-bold" style="color: rgb(115,163,255);">Employee Profile</p>
                                </div>
                                <div class="card-body" style="padding-bottom: px;height: 180px;margin-top: -10px;">
                                    <div class="row">
                                        <div class="col"><img class="rounded-circle" src="assets/img/avatars/avatar1.jpeg?h=0ecc82101fb9a10ca459432faa8c0656" style="padding-bottom: px;">
                                            <h5 style="width: 250px;margin-left: 80px;margin-top: -55px;padding-bottom: 10px;font-weight: bold;color: rgb(81,81,86);font-size: 18px;">Sarah Hoffman</h5>
                                            <h5 style="width: 250px;margin-left: 90px;margin-top: -15px;padding-bottom: px;font-size: 16px;">Database Analyst</h5>
                                        </div>
                                        <div class="col">
                                            <h5 style="color: rgb(81,81,86);font-weight: bold;font-size: 18px;width: 120px;">EC, SC+</h5>
                                            <h5 style="color: rgb(133,135,150);font-size: 16px;margin-left: 10px;width: 120px;">Last Rating</h5>
                                        </div>
                                        <div class="col">
                                            <h5 style="color: rgb(81,81,86);font-weight: bold;font-size: 18px;width: 120px;">SC+, NI</h5>
                                            <h5 style="color: rgb(133,135,150);font-size: 16px;margin-left: 10px;width: 120px;">Current Rating</h5>
                                        </div>
                                        <div class="col">
                                            <h5 style="color: rgb(81,81,86);font-weight: bold;font-size: 18px;width: 120px;">01-01-2020</h5>
                                            <h5 style="color: rgb(133,135,150);font-size: 16px;margin-left: 10px;width: 150px;">Last Review Date</h5>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top: 20px;">
                                        <div class="col">
                                            <h5 style="color: rgb(81,81,86);font-weight: bold;font-size: 18px;width: 120px;margin-left: 100px;">A71882</h5>
                                            <h5 style="color: rgb(133,135,150);font-size: 16px;margin-left: 110px;width: 120px;">Employee Id</h5>
                                        </div>
                                        <div class="col">
                                            <h5 style="color: rgb(81,81,86);font-weight: bold;font-size: 18px;width: 120px;margin-left: 80px;">Peg Gruber</h5>
                                            <h5 style="color: rgb(133,135,150);font-size: 16px;margin-left: 90px;width: 150px;">Supervisor</h5>
                                        </div>
                                        <div class="col">
                                            <h5 style="color: rgb(81,81,86);font-weight: bold;font-size: 18px;width: 200px;margin-left: 45px;">Database Management</h5>
                                            <h5 style="color: rgb(133,135,150);font-size: 16px;margin-left: 60px;width: 150px;">Department</h5>
                                        </div>
                                        <div class="col">
                                            <h5 style="color: rgb(81,81,86);font-weight: bold;font-size: 18px;width: 120px;margin-left: 25px;">06-01-2020</h5>
                                            <h5 style="color: rgb(133,135,150);font-size: 16px;margin-left: 35px;width: 150px;">Current Review Date</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="border rounded" style="margin-top: -25px;">
                                <ul class="nav nav-pills nav-justified" style="margin-bottom: 40px;">
                                    <li class="nav-item" style="margin-top: 0px;"><a class="nav-link active" role="tab" data-toggle="pill" data-bs-hover-animate="pulse" href="#tab-1" style="background-color: rgb(207,113,146);color: rgb(255,255,255);font-weight: bold;">Performance Review</a></li>
                                    <li
                                        class="nav-item"><a class="nav-link" role="tab" data-toggle="pill" data-bs-hover-animate="pulse" href="#tab-2" style="color: rgb(255,255,255);background-color: rgb(107,148,228);font-weight: bold;">Salary Review</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane fade show active" role="tabpanel" id="tab-1">
                                        <div class="card shadow mb-5" style="margin-top: -40px;">
                                            <div class="card-body" style="padding-bottom: 0px;">
                                                <div class="table-responsive table mt-2" id="dataTable" role="grid" aria-describedby="dataTable_info">
                                                    <table class="table dataTable my-0" id="dataTable">
                                                        <thead>
                                                            <tr>
                                                                <th class="text-center" style="color: rgb(115,163,255);">Factors</th>
                                                                <th class="text-center" style="color: rgb(115,163,255);">Dimensions</th>
                                                                <th class="text-center" style="color: rgb(115,163,255);">Ratings</th>
                                                                <th class="text-center" style="color: rgb(115,163,255);"></th>
                                                                <th class="text-center" style="color: rgb(115,163,255);"></th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td class="text-center" style="font-weight: bold;color: rgb(215,90,98);"></td>
                                                                <td class="text-center" style="font-weight: bold;color: rgb(215,90,98);"></td>
                                                                <td class="text-center" style="font-weight: bold;color: rgb(215,90,98);">NI</td>
                                                                <td class="text-center" style="font-weight: bold;color: rgb(110,194,221);">SC</td>
                                                                <td class="text-center" style="font-weight: bold;color: rgb(87,200,132);">EC</td>
                                                                <td class="text-center"></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-center" style="font-weight: bold;color: rgb(115,163,255);">Knowledge</td>
                                                                <td class="text-center"></td>
                                                                <td class="text-center"></td>
                                                                <td class="text-center"></td>
                                                                <td class="text-center"></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-center" style="font-weight: bold;color: rgb(90,92,105);">Job and Business Knowledge</td>
                                                                <td class="text-center">Quarterly Goals and Objectives, Work Efficiency, Plan and Organize, Procedure and Process Orientation</td>
                                                                <td class="text-center"><input type="radio"></td>
                                                                <td class="text-center"><input type="radio" checked="" required="" disabled=""></td>
                                                                <td class="text-center"><input type="radio"></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-center" style="color: rgb(90,92,105);font-weight: bold;">Administration</td>
                                                                <td class="text-center">Quarterly Goals and Objectives, Work Efficiency, Plan and Organize, Procedure and Process Orientation</td>
                                                                <td class="text-center"><input type="radio"></td>
                                                                <td class="text-center"><input type="radio" disabled="" checked=""></td>
                                                                <td class="text-center"><input type="radio"></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-center" style="font-weight: bold;color: rgb(115,163,255);">Energy</td>
                                                                <td class="text-center"><br></td>
                                                                <td class="text-center"><br></td>
                                                                <td class="text-center"><br></td>
                                                                <td class="text-center"><br></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-center" style="font-weight: bold;color: rgb(90,92,105);">Motivation / Drive</td>
                                                                <td class="text-center">Energy, Initiative and Urgency, Innovation, Results Oriented, Perseverance<br></td>
                                                                <td class="text-center"><input type="radio" checked="" disabled=""><br></td>
                                                                <td class="text-center"><input type="radio"><br></td>
                                                                <td class="text-center"><input type="radio"><br></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-center" style="font-weight: bold;color: rgb(90,92,105);">Professional Accountability</td>
                                                                <td class="text-center">Build Relationships, Disciplined Behavior, Personal Accountability, Foster Teamwork, Optimism<br></td>
                                                                <td class="text-center"><input type="radio"><br></td>
                                                                <td class="text-center"><input type="radio"><br></td>
                                                                <td class="text-center"><input type="radio" checked="" disabled=""><br></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-center" style="font-weight: bold;color: rgb(115,163,255);">Passion</td>
                                                                <td class="text-center"><br></td>
                                                                <td class="text-center"><br></td>
                                                                <td class="text-center"><br></td>
                                                                <td class="text-center"><br></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-center" style="font-weight: bold;color: rgb(90,92,105);">Commitment</td>
                                                                <td class="text-center">Job and Organizational Commitment, Customer Focus, Value Diversity, Manage Change, Resilience<br></td>
                                                                <td class="text-center"><input type="radio"><br></td>
                                                                <td class="text-center"><input type="radio" checked="" disabled=""><br></td>
                                                                <td class="text-center"><input type="radio"><br></td>
                                                            </tr>
                                                            <tr>
                                                                <td class="text-center" style="font-weight: bold;color: rgb(90,92,105);">Leadership</td>
                                                                <td class="text-center">Selection and Development, Motivate Performance, Led by Example, Provide Direction, Influence Others, Communicate Effectively<br></td>
                                                                <td class="text-center"><input type="radio"><br></td>
                                                                <td class="text-center"><input type="radio"><br></td>
                                                                <td class="text-center"><input type="radio" checked="" disabled=""><br></td>
                                                            </tr>
                                                            <tr></tr>
                                                        </tbody>
                                                        <tfoot>
                                                            <tr></tr>
                                                        </tfoot>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card shadow mb-5">
                                            <div class="card-header py-3">
                                                <p class="m-0 font-weight-bold" style="color: rgb(115,163,255);">Results ( Accomplishment achieved during the review period) (Quaterly objectives and Accomplisments)</p>
                                            </div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col">
                                                        <p class="text-justify">Has displayed capability to solve complex problems independently, but tends to defer to others on the team. Shows creativity and initiative when tackling complicated problems. Tends to make excuses
                                                            and blame others on team when problems arise instead of working to solve them. Recognizes problems when they are at early stages and implements solutions proactively. Empowers those he/she manages
                                                            to solve problems on their own.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card shadow mb-5">
                                            <div class="card-header py-3">
                                                <p class="m-0 font-weight-bold" style="color: rgb(115,163,255);">Performance Feedback (Strength, Area for Improvement)</p>
                                            </div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col">
                                                        <p class="text-justify" style="font-weight: normal;">Shows curiosity for new ways to thinking and communicating to improve projects and customer satisfaction. Continually pushes for more responsibility and shows willingness to put in extra hours. Is
                                                            continuously striving to improve skills and production. Lacks the initiative to willingly take on more complicated tasks or projects. Tends to wait for projects to be handed to him/her rather
                                                            than requesting more responsibility<br></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card shadow mb-5">
                                            <div class="card-header py-3">
                                                <p class="m-0 font-weight-bold" style="color: rgb(115,163,255);">Reviewer</p>
                                            </div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="form-group"><label>Reviewer Name</label>
                                                            <h5 style="font-size: 18px;">Peg Gruber</h5>
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group"><label>Position</label>
                                                            <h5 style="font-size: 18px;">Department Manager</h5>
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group"><label>Date</label>
                                                            <h5 style="font-size: 18px;">06-01-2019</h5>
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group"><label>Signature</label>
                                                            <h5 style="font-size: 18px;">Peg Gruber</h5>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card shadow mb-5">
                                            <div class="card-header py-3">
                                                <p class="m-0 font-weight-bold" style="color: rgb(115,163,255);">Employee</p>
                                            </div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col">
                                                        <div class="form-group"><label>Employee Name</label>
                                                            <h5 style="font-size: 18px;">Sarah Hoffman</h5>
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group"><label>Position</label>
                                                            <h5 style="font-size: 18px;">Database Analyst</h5>
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group"><label>Date</label>
                                                            <h5 style="font-size: 18px;">06-02-2019</h5>
                                                        </div>
                                                    </div>
                                                    <div class="col">
                                                        <div class="form-group"><label>Signature</label>
                                                            <h5 style="font-size: 18px;">Sarah Hoffman</h5>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" role="tabpanel" id="tab-2">
                                        <div class="card-group" style="margin-top: -10px;">
                                            <div class="card" style="margin-right: 20px;">
                                                <div class="card-header py-3">
                                                    <p class="m-0 font-weight-bold" style="color: rgb(115,163,255);">Salary Review</p>
                                                </div>
                                                <div class="row" style="margin-top: 20px;">
                                                    <div class="col">
                                                        <h5 style="color: rgb(81,81,86);font-weight: bold;font-size: 18px;width: 120px;margin-top: 20px;margin-left: 20px;">$74000</h5>
                                                        <h5 style="color: rgb(133,135,150);font-size: 16px;margin-left: 30px;width: 220px;">Employee Salary Range Min</h5>
                                                    </div>
                                                    <div class="col">
                                                        <h5 style="color: rgb(81,81,86);font-weight: bold;font-size: 18px;width: 120px;margin-top: 20px;margin-left: 20px;">$92400</h5>
                                                        <h5 style="color: rgb(133,135,150);font-size: 16px;margin-left: 30px;width: 220px;">Employee Salary Range Max</h5>
                                                    </div>
                                                </div>
                                                <div class="row" style="margin-top: 10px;">
                                                    <div class="col">
                                                        <h5 style="color: rgb(81,81,86);font-weight: bold;font-size: 18px;width: 120px;margin-top: 20px;margin-left: 20px;">$85,000</h5>
                                                        <h5 style="color: rgb(133,135,150);font-size: 16px;margin-left: 30px;width: 120px;">Current Salary</h5>
                                                    </div>
                                                    <div class="col">
                                                        <h5 style="color: rgb(81,81,86);font-weight: bold;font-size: 18px;width: 120px;margin-top: 20px;margin-left: 20px;">$89500</h5>
                                                        <h5 style="color: rgb(133,135,150);font-size: 16px;margin-left: 30px;width: 120px;">New Salary</h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card">
                                                <div><canvas data-bs-chart="{&quot;type&quot;:&quot;line&quot;,&quot;data&quot;:{&quot;labels&quot;:[&quot;Actual&quot;,&quot;Predicted&quot;],&quot;datasets&quot;:[{&quot;label&quot;:&quot;Actual&quot;,&quot;backgroundColor&quot;:&quot;rgba(115,163,255,0.64)&quot;,&quot;borderColor&quot;:&quot;#fffff&quot;,&quot;data&quot;:[&quot;4500&quot;,&quot;&quot;],&quot;fill&quot;:true,&quot;borderWidth&quot;:&quot;0&quot;},{&quot;label&quot;:&quot;Predicted&quot;,&quot;fill&quot;:true,&quot;data&quot;:[&quot;6000&quot;,&quot;&quot;],&quot;backgroundColor&quot;:&quot;rgba(55,227,238,0.77)&quot;}]},&quot;options&quot;:{&quot;maintainAspectRatio&quot;:true,&quot;legend&quot;:{&quot;display&quot;:true,&quot;position&quot;:&quot;top&quot;,&quot;reverse&quot;:true},&quot;title&quot;:{&quot;display&quot;:true,&quot;position&quot;:&quot;left&quot;,&quot;text&quot;:&quot;Employee Budget&quot;,&quot;fontFamily&quot;:&quot;Nunito, sans-serif&quot;,&quot;fontStyle&quot;:&quot;bold&quot;,&quot;fontColor&quot;:&quot;#655f5f&quot;},&quot;scales&quot;:{&quot;xAxes&quot;:[{&quot;gridLines&quot;:{&quot;color&quot;:&quot;rgba(122,89,89,0.1)&quot;,&quot;zeroLineColor&quot;:&quot;rgba(122,89,89,0.1)&quot;,&quot;drawTicks&quot;:true},&quot;ticks&quot;:{&quot;beginAtZero&quot;:false,&quot;padding&quot;:0}}],&quot;yAxes&quot;:[{&quot;gridLines&quot;:{&quot;color&quot;:&quot;rgba(122,89,89,0.1)&quot;,&quot;zeroLineColor&quot;:&quot;rgba(122,89,89,0.1)&quot;,&quot;drawTicks&quot;:true},&quot;ticks&quot;:{&quot;beginAtZero&quot;:false,&quot;padding&quot;:0}}]}}}"></canvas></div>
                                            </div>
                                        </div>
                                        <div class="card-group" style="margin-top: 10px;">
                                            <div class="card" style="margin-right: 10px;">
                                                <div class="card-body">
                                                    <div class="chart-area"><canvas data-bs-chart="{&quot;type&quot;:&quot;line&quot;,&quot;data&quot;:{&quot;labels&quot;:[&quot;2015&quot;,&quot;2016&quot;,&quot;2017&quot;,&quot;2018&quot;,&quot;2019&quot;,&quot;2020&quot;],&quot;datasets&quot;:[{&quot;label&quot;:&quot;Salary &quot;,&quot;fill&quot;:true,&quot;data&quot;:[&quot;70000&quot;,&quot;80000&quot;,&quot;85000&quot;,&quot;79000&quot;,&quot;85000&quot;,&quot;89500&quot;],&quot;backgroundColor&quot;:&quot;rgba(84,125,174,0.74)&quot;,&quot;borderColor&quot;:&quot;#ffffff&quot;,&quot;borderWidth&quot;:&quot;0&quot;}]},&quot;options&quot;:{&quot;maintainAspectRatio&quot;:false,&quot;legend&quot;:{&quot;display&quot;:true,&quot;reverse&quot;:true},&quot;title&quot;:{&quot;display&quot;:true,&quot;text&quot;:&quot;Salary Record (Yearly)&quot;,&quot;position&quot;:&quot;bottom&quot;,&quot;fontColor&quot;:&quot;#000000&quot;,&quot;fontFamily&quot;:&quot;Nunito, sans-serif&quot;},&quot;scales&quot;:{&quot;xAxes&quot;:[{&quot;gridLines&quot;:{&quot;color&quot;:&quot;rgba(0,0,0,0.11)&quot;,&quot;zeroLineColor&quot;:&quot;rgba(0,0,0,0.11)&quot;,&quot;drawBorder&quot;:true,&quot;drawTicks&quot;:true,&quot;drawOnChartArea&quot;:true},&quot;ticks&quot;:{&quot;beginAtZero&quot;:false}}],&quot;yAxes&quot;:[{&quot;gridLines&quot;:{&quot;color&quot;:&quot;rgba(0,0,0,0.11)&quot;,&quot;zeroLineColor&quot;:&quot;rgba(0,0,0,0.11)&quot;,&quot;drawBorder&quot;:true,&quot;drawTicks&quot;:true,&quot;drawOnChartArea&quot;:true},&quot;ticks&quot;:{&quot;beginAtZero&quot;:false}}]}}}"></canvas></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © MMP&nbsp;2020</span></div>
                </div>
            </footer>
        </div>
    </div>
    <script src="assets/js/jquery.min.js?h=83e266cb1712b47c265f77a8f9e18451"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js?h=63715b63ee49d5fe4844c2ecae071373"></script>
    <script src="assets/js/chart.min.js?h=1585abf9beaf49802b3a80bf813edceb"></script>
    <script src="assets/js/bs-init.js?h=42bac00fc830a15f5912c5d494184ea2"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
    <script src="assets/js/theme.js?h=6d33b44a6dcb451ae1ea7efc7b5c5e30"></script>
</body>

</html>