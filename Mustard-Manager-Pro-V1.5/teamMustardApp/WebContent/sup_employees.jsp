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
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css?h=81d1fc9a9b780b60567cc26bd9d371fc">
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
                        </a><a class="btn active text-center" role="button" data-bs-hover-animate="pulse" style="margin: 0px 0px 0px 340px;background-color: #73a3ff;color: rgb(255,255,255);font-weight: bold;margin-left: 42px;" href="all_employees.jsp">Employees</a>
                        <a
                            class="btn text-center d-xl-flex" role="button" data-bs-hover-animate="pulse" style="margin-left: -72px;color: rgb(21,4,4);background-color: rgb(255,255,255);font-weight: bold;" href="r_budget.jsp">Reports &nbsp;</a><a class="btn text-center d-xl-flex" role="button" data-bs-hover-animate="pulse" style="margin-left: -78px;color: rgb(21,4,4);background-color: rgb(255,255,255);font-weight: bold;" href="m_jobs.jsp">Manager</a>
                            <a
                                class="text-white" href="m_jobs.jsp" style="margin-left: 210px;font-size: 23px;width: 34px;"></a><a class="text-dark" href="login.jsp"><i class="fas fa-sign-out-alt" data-bs-hover-animate="rubberBand" style="width: 16px;height: 16px;margin-right: 20px;"></i></a></div>
                </nav>
                <div class="container-fluid">
                    <div class="card shadow mb-5" style="margin-top: -10px;">
                        <div class="card-body" style="padding-bottom: px;height: 100px;margin-top: 0px;">
                            <div class="row">
                                <div class="col"><a class="btn" role="button" data-bs-hover-animate="pulse" style="margin: 10px;font-weight: bold;background-color: rgb(255,255,255);color: rgb(21,4,4);margin-left: 460px;" href="all_employees.jsp">All</a><a class="btn"
                                        role="button" data-bs-hover-animate="pulse" style="margin: 10px;font-weight: bold;color: rgb(255,255,255);background-color: rgb(115,163,255);" href="sup_employees.jsp">Supervisor</a><a class="btn" role="button" data-bs-hover-animate="pulse"
                                        style="margin: 10px;font-weight: bold;color: rgb(21,4,4);background-color: rgb(255,255,255);" href="dept_employees.jsp">Department</a></div>
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
                                            <th class="text-center">Review Period End</th>
                                            <th class="text-center">Supervisor</th>
                                            <th class="text-center">Projected Rating Status</th>
                                            <th class="text-center">PR Status</th>
                                            <th class="text-center">Salary Review</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="text-left"><a class="text-black-50" href="r_profile.jsp">Sarah Hoffman</a></td>
                                            <td class="text-center">11-28-2019</td>
                                            <td class="text-center">Peg Gruber<br></td>
                                            <td class="text-center">EC<br></td>
                                            <td class="text-center"><a class="text-dark" href="r_profile.jsp"><i class="fas fa-check" style="color: rgb(112,127,222);"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="r_profile.jsp"><i class="fas fa-check" style="color: rgb(112,127,222);"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>Angelica Ramos</td>
                                            <td class="text-center">10-09-2019<br></td>
                                            <td class="text-center">Jim Mathews</td>
                                            <td class="text-center">SC+</td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-check" style="color: rgb(112,127,222);"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="salaryreview.jsp"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>Ashton Cox</td>
                                            <td class="text-center">01-12-2019<br></td>
                                            <td class="text-center">Peg Gruber</td>
                                            <td class="text-center">SC-</td>
                                            <td class="text-center"><a href="performancereview.jsp"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                            <td class="text-center"><a href="performancereview.jsp"></a><i class="fas fa-check" style="color: rgb(112,127,222);"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Bradley Greer</td>
                                            <td class="text-center">10-13-2019<br></td>
                                            <td class="text-center">Tim Carson</td>
                                            <td class="text-center">EC</td>
                                            <td class="text-center"><a href="#"><i class="fas fa-check"></i></a></td>
                                            <td class="text-center"><a href="#"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>Brenden Wagner</td>
                                            <td class="text-center">06-07-2019<br></td>
                                            <td class="text-center">Tim Carson</td>
                                            <td class="text-center">EC</td>
                                            <td class="text-center"><a href="#"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                            <td class="text-center"><a href="#"></a><i class="fas fa-check" style="color: rgb(112,127,222);"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Brielle Williamson</td>
                                            <td class="text-center">12-02-2019<br></td>
                                            <td class="text-center">Jim Mathews</td>
                                            <td class="text-center">SC-</td>
                                            <td class="text-center"><a href="#"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                            <td class="text-center"><a href="#"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>Bruno Nash<br></td>
                                            <td class="text-center">05-03-2019<br></td>
                                            <td class="text-center">Peg Gruber</td>
                                            <td class="text-center">SC+</td>
                                            <td class="text-center"><a href="#"><i class="fas fa-check"></i></a></td>
                                            <td class="text-center"><a href="#"><i class="fas fa-check"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>Caesar Vance</td>
                                            <td class="text-center">12-12-2019</td>
                                            <td class="text-center">Peg Gruber</td>
                                            <td class="text-center">NI</td>
                                            <td class="text-center"><a href="#"><i class="fas fa-check"></i></a></td>
                                            <td class="text-center"><a href="#"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>Cara Stevens</td>
                                            <td class="text-center">12-06-2019<br></td>
                                            <td class="text-center">Tim Carson</td>
                                            <td class="text-center">NI</td>
                                            <td class="text-center"><a href="#"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                            <td class="text-center"><a href="#"></a><i class="fas fa-check" style="color: rgb(112,127,222);"></i></td>
                                        </tr>
                                        <tr>
                                            <td>Cedric Kelly</td>
                                            <td class="text-center">03-29-2019<br></td>
                                            <td class="text-center">Tim Carson</td>
                                            <td class="text-center">SC+</td>
                                            <td class="text-center"><a href="#"><i class="fas fa-check"></i></a></td>
                                            <td class="text-center"><a href="#"><i class="fas fa-check"></i></a></td>
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