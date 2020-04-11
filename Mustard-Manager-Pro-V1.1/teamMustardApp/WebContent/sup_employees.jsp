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
                        <a class="text-white" href="all_employees.html">
                            <h5 style="width: 320px;margin-left: 25px;color: #73a3ff;font-weight: bold;font-size: 22px;">Mustard Manager Pro</h5>
                        </a><a class="btn active text-center" role="button" data-bs-hover-animate="pulse" style="margin: 0px 0px 0px 340px;background-color: #73a3ff;color: rgb(255,255,255);font-weight: bold;margin-left: 190px;" href="all_employees.html">Employees</a>
                        <a
                            class="btn text-center d-xl-flex" role="button" data-bs-hover-animate="pulse" style="margin: 0px 0px px 200px;margin-left: 20px;color: rgb(21,4,4);background-color: rgb(255,255,255);font-weight: bold;" href="r_performance.html">Reports &nbsp;</a><a class="text-white" href="m_jobs.html" style="margin-left: 210px;font-size: 23px;width: 34px;"><i class="fas fa-user-tie" data-bs-hover-animate="pulse" style="margin-left: 44px;color: rgb(85,99,139);font-size: 22px;height: 20px;margin-top: 13px;"></i><h5 style="font-size: 12px;margin-left: 30px;margin-top: -6px;color: rgb(65,55,55);font-weight: bold;">Manager</h5></a>
                            <ul
                                class="nav navbar-nav flex-nowrap ml-auto" style="margin-right: -15px;">
                                <div class="d-none d-sm-block topbar-divider"></div>
                                </ul><a class="text-black-50" href="#" style="font-size: 12.8px;padding: 20px;font-weight: bold;">Hello, Karma<img class="rounded-circle" src="assets/img/avatars/avatar2.jpeg?h=5d142be9441885f0935b84cf739d4112" style="width: 32px;height: 32px;margin-left: 10px;"></a><a class="text-dark"
                                    href="login.html"><i class="fas fa-sign-out-alt" data-bs-hover-animate="rubberBand" style="width: 16px;height: 16px;margin-right: 20px;"></i></a></div>
                </nav>
                <div class="container-fluid">
                    <div class="card shadow mb-5" style="margin-top: -10px;">
                        <div class="card-body" style="padding-bottom: px;height: 100px;margin-top: 0px;">
                            <div class="row">
                                <div class="col"><a class="btn" role="button" data-bs-hover-animate="pulse" style="margin: 10px;font-weight: bold;background-color: rgb(255,255,255);color: rgb(21,4,4);margin-left: 460px;" href="all_employees.html">All</a><a class="btn"
                                        role="button" data-bs-hover-animate="pulse" style="margin: 10px;font-weight: bold;color: rgb(255,255,255);background-color: rgb(115,163,255);" href="sup_employees.html">Supervisor</a><a class="btn" role="button" data-bs-hover-animate="pulse"
                                        style="margin: 10px;font-weight: bold;color: rgb(21,4,4);background-color: rgb(255,255,255);" href="dept_employees.html">Department</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="card shadow" style="margin-top: -40px;">
                        <div class="card-body">
                            <div class="table-responsive table mt-2" id="dataTable" role="grid" aria-describedby="dataTable_info">
                                <table class="table dataTable my-0" id="dataTable">
                                    <thead>
                                        <tr>
                                            <th class="text-center">Name</th>
                                            <th class="text-center">Job Position</th>
                                            <th class="text-center">Last Review Period</th>
                                            <th class="text-center">Supervisor</th>
                                            <th class="text-center">PR Status</th>
                                            <th class="text-center">Salary Review</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="text-left"><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar1.jpeg?h=0ecc82101fb9a10ca459432faa8c0656"><a class="text-black-50" href="r_profile.html">Sarah Hoffman</a></td>
                                            <td class="text-center">Software Engineeer</td>
                                            <td class="text-center">11-28-2019</td>
                                            <td class="text-center">Peg Gruber<br></td>
                                            <td class="text-center"><a class="text-dark" href="r_profile.html"><i class="fas fa-check" style="color: rgb(112,127,222);"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="r_profile.html"><i class="fas fa-check" style="color: rgb(112,127,222);"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="r_profile.html"><i class="fas fa-chevron-circle-right" data-bs-hover-animate="pulse"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar2.jpeg?h=5d142be9441885f0935b84cf739d4112">Angelica Ramos</td>
                                            <td class="text-center">Application Developer</td>
                                            <td class="text-center">10-09-2019<br></td>
                                            <td class="text-center">Jim Mathews</td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-check" style="color: rgb(112,127,222);"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="salaryreview.html"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right" data-bs-hover-animate="pulse"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar3.jpeg?h=c5166867f10a4e454b5b2ae8d63268b3">Ashton Cox</td>
                                            <td class="text-center">Database Analyst</td>
                                            <td class="text-center">01-12-2019<br></td>
                                            <td class="text-center">Peg Gruber</td>
                                            <td class="text-center"><a href="performancereview.html"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                            <td class="text-center"><a href="performancereview.html"></a><i class="fas fa-check" style="color: rgb(112,127,222);"></i></td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right" data-bs-hover-animate="pulse"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar4.jpeg?h=fefb30b61c8459a66bd338b7d790c3d5">Bradley Greer</td>
                                            <td class="text-center">Software Engineer</td>
                                            <td class="text-center">10-13-2019<br></td>
                                            <td class="text-center">Tim Carson</td>
                                            <td class="text-center"><a href="#"><i class="fas fa-check"></i></a></td>
                                            <td class="text-center"><a href="#"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right" data-bs-hover-animate="pulse"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar5.jpeg?h=35dc45edbcda6b3fc752dab2b0f082ea">Brenden Wagner</td>
                                            <td class="text-center">Database Analyst</td>
                                            <td class="text-center">06-07-2019<br></td>
                                            <td class="text-center">Tim Carson</td>
                                            <td class="text-center"><a href="#"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                            <td class="text-center"><a href="#"></a><i class="fas fa-check" style="color: rgb(112,127,222);"></i></td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right" data-bs-hover-animate="pulse"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar1.jpeg?h=0ecc82101fb9a10ca459432faa8c0656">Brielle Williamson</td>
                                            <td class="text-center">Integration Specialist</td>
                                            <td class="text-center">12-02-2019<br></td>
                                            <td class="text-center">Jim Mathews</td>
                                            <td class="text-center"><a href="#"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                            <td class="text-center"><a href="#"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                            <td class="text-center" data-bs-hover-animate="pulse"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar2.jpeg?h=5d142be9441885f0935b84cf739d4112">Bruno Nash<br></td>
                                            <td class="text-center">Web Designer</td>
                                            <td class="text-center">05-03-2019<br></td>
                                            <td class="text-center">Peg Gruber</td>
                                            <td class="text-center"><a href="#"><i class="fas fa-check"></i></a></td>
                                            <td class="text-center"><a href="#"><i class="fas fa-check"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right" data-bs-hover-animate="pulse"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar3.jpeg?h=c5166867f10a4e454b5b2ae8d63268b3">Caesar Vance</td>
                                            <td class="text-center">Application Manager</td>
                                            <td class="text-center">12-12-2019</td>
                                            <td class="text-center">Peg Gruber</td>
                                            <td class="text-center"><a href="#"><i class="fas fa-check"></i></a></td>
                                            <td class="text-center"><a href="#"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right" data-bs-hover-animate="pulse"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar4.jpeg?h=fefb30b61c8459a66bd338b7d790c3d5">Cara Stevens</td>
                                            <td class="text-center">Web Developer</td>
                                            <td class="text-center">12-06-2019<br></td>
                                            <td class="text-center">Tim Carson</td>
                                            <td class="text-center"><a href="#"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                            <td class="text-center"><a href="#"></a><i class="fas fa-check" style="color: rgb(112,127,222);"></i></td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right" data-bs-hover-animate="pulse"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar5.jpeg?h=35dc45edbcda6b3fc752dab2b0f082ea">Cedric Kelly</td>
                                            <td class="text-center">Data Analyst</td>
                                            <td class="text-center">03-29-2019<br></td>
                                            <td class="text-center">Tim Carson</td>
                                            <td class="text-center"><a href="#"><i class="fas fa-check"></i></a></td>
                                            <td class="text-center"><a href="#"><i class="fas fa-check"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right" data-bs-hover-animate="pulse"></i></a></td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr></tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <footer class="bg-white sticky-footer">
                <div class="container my-auto">
                    <div class="text-center my-auto copyright"><span>Copyright © MMP 2020</span></div>
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