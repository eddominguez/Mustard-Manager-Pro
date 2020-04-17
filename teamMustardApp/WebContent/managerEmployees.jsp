<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Employees - PerformFI</title>
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
                    <div class="container-fluid"><button class="btn btn-link d-md-none rounded-circle mr-3" id="sidebarToggleTop" type="button"><i class="fas fa-bars"></i></button><img src="assets/img/purp_fed.jpg?h=7d381502c413aec07ef3d15a064f2f69" style="width: 120px;margin: 30px;"><a class="btn active text-center" role="button"
                            data-bs-hover-animate="pulse" style="margin: 0px 0px 0px 290px;background-color: #73a3ff;color: rgb(255,255,255);font-weight: bold;" href="managerEmployees.jsp">Employees</a><a class="btn text-center d-xl-flex" role="button" data-bs-hover-animate="pulse"
                            style="margin: 0px 0px px 200px;margin-left: 20px;color: rgb(21,4,4);background-color: rgb(255,255,255);font-weight: bold;padding-left: 12px;padding-right: 0px;" href="managerReport.jsp">Reports &nbsp;</a><a class="btn text-center d-xl-flex"
                            role="button" data-bs-hover-animate="pulse" style="margin: 0px 0px px 200px;margin-left: 20px;color: rgb(21,4,4);background-color: rgb(255,255,255);font-weight: bold;" href="m_jobs.jsp">Manager</a>
                        <ul class="nav navbar-nav flex-nowrap ml-auto"
                            style="margin-right: -10px;margin-left: 236px;">
                            <div class="d-none d-sm-block topbar-divider"></div>
                        </ul><a class="text-black-50" href="#" style="font-size: 12.8px;padding: 20px;font-weight: bold;width: 158px;height: 72px;">Hello, &nbsp;Jenna<img class="rounded-circle" src="assets/img/avatars/avatar1.jpeg?h=0ecc82101fb9a10ca459432faa8c0656" style="width: 32px;height: 32px;margin-left: 10px;"></a>
                        <a
                            class="text-dark" href="login.jsp"><i class="fas fa-sign-out-alt" data-bs-hover-animate="rubberBand" style="width: 16px;height: 16px;margin-right: 20px;"></i></a>
                    </div>
                </nav>
                <div class="container-fluid">
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <p class="text-dark m-0 font-weight-bold" style="color: rgb(21,4,4);">Employee Info</p>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive table mt-2" id="dataTable" role="grid" aria-describedby="dataTable_info">
                                <table class="table dataTable my-0" id="dataTable">
                                    <thead>
                                        <tr>
                                            <th class="text-center">Name</th>
                                            <th class="text-center">Job Position</th>
                                            <th class="text-center">Employee ID</th>
                                            <th class="text-center">Last Review Period</th>
                                            <th class="text-center">Salary</th>
                                            <th class="text-center">Supervisor</th>
                                            <th class="text-center">PR Status</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="text-left"><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar1.jpeg?h=0ecc82101fb9a10ca459432faa8c0656">Airi Satou</td>
                                            <td class="text-center">Software Engineeer</td>
                                            <td class="text-center">K99281</td>
                                            <td class="text-center">11-28-2019</td>
                                            <td class="text-center">$82,700</td>
                                            <td class="text-center">Peg Gruber<br></td>
                                            <td class="text-center"><a class="text-dark" href="managerPerformance.jsp"><i class="fas fa-check" style="color: rgb(112,127,222);"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right" data-bs-hover-animate="pulse"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar2.jpeg?h=5d142be9441885f0935b84cf739d4112">Angelica Ramos</td>
                                            <td class="text-center">Application Developer</td>
                                            <td class="text-center">J88293</td>
                                            <td class="text-center">10-09-2019<br></td>
                                            <td class="text-center">$90,000</td>
                                            <td class="text-center">Jim Mathews</td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-check" style="color: rgb(112,127,222);"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right" data-bs-hover-animate="pulse"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar3.jpeg?h=c5166867f10a4e454b5b2ae8d63268b3">Ashton Cox</td>
                                            <td class="text-center">Database Analyst</td>
                                            <td class="text-center">F11299</td>
                                            <td class="text-center">01-12-2019<br></td>
                                            <td class="text-center">$76,000</td>
                                            <td class="text-center">Peg Gruber</td>
                                            <td class="text-center"><a href="performancereview.jsp"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right" data-bs-hover-animate="pulse"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar4.jpeg?h=fefb30b61c8459a66bd338b7d790c3d5">Bradley Greer</td>
                                            <td class="text-center">Software Engineer</td>
                                            <td class="text-center">P88291</td>
                                            <td class="text-center">10-13-2019<br></td>
                                            <td class="text-center">$72,000</td>
                                            <td class="text-center">Tim Carson</td>
                                            <td class="text-center"><a href="#"><i class="fas fa-check"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right" data-bs-hover-animate="pulse"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar5.jpeg?h=35dc45edbcda6b3fc752dab2b0f082ea">Brenden Wagner</td>
                                            <td class="text-center">Database Analyst</td>
                                            <td class="text-center">L11223</td>
                                            <td class="text-center">06-07-2019<br></td>
                                            <td class="text-center">$86,850</td>
                                            <td class="text-center">Tim Carson</td>
                                            <td class="text-center"><a href="#"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right" data-bs-hover-animate="pulse"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar1.jpeg?h=0ecc82101fb9a10ca459432faa8c0656">Brielle Williamson</td>
                                            <td class="text-center">Integration Specialist</td>
                                            <td class="text-center">K54643</td>
                                            <td class="text-center">12-02-2019<br></td>
                                            <td class="text-center">$72,000</td>
                                            <td class="text-center">Jim Mathews</td>
                                            <td class="text-center"><a href="#"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                            <td class="text-center" data-bs-hover-animate="pulse"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar2.jpeg?h=5d142be9441885f0935b84cf739d4112">Bruno Nash<br></td>
                                            <td class="text-center">Web Designer</td>
                                            <td class="text-center">M17723</td>
                                            <td class="text-center">05-03-2019<br></td>
                                            <td class="text-center">$61,500</td>
                                            <td class="text-center">Peg Gruber</td>
                                            <td class="text-center"><a href="#"><i class="fas fa-check"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right" data-bs-hover-animate="pulse"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar3.jpeg?h=c5166867f10a4e454b5b2ae8d63268b3">Caesar Vance</td>
                                            <td class="text-center">Application Manager</td>
                                            <td class="text-center">O99118</td>
                                            <td class="text-center">12-12-2019</td>
                                            <td class="text-center">$66,450</td>
                                            <td class="text-center">Peg Gruber</td>
                                            <td class="text-center"><a href="#"><i class="fas fa-check"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right" data-bs-hover-animate="pulse"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar4.jpeg?h=fefb30b61c8459a66bd338b7d790c3d5">Cara Stevens</td>
                                            <td class="text-center">Web Developer</td>
                                            <td class="text-center">Q88554</td>
                                            <td class="text-center">12-06-2019<br></td>
                                            <td class="text-center">$65,600</td>
                                            <td class="text-center">Tim Carson</td>
                                            <td class="text-center"><a href="#"><i class="fa fa-close" style="font-size: 20px;color: rgb(255,79,89);"></i></a></td>
                                            <td class="text-center"><a class="text-dark" href="#"><i class="fas fa-chevron-circle-right" data-bs-hover-animate="pulse"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td><img class="rounded-circle mr-2" width="30" height="30" src="assets/img/avatars/avatar5.jpeg?h=35dc45edbcda6b3fc752dab2b0f082ea">Cedric Kelly</td>
                                            <td class="text-center">Data Analyst</td>
                                            <td class="text-center">Y22783</td>
                                            <td class="text-center">03-29-2019<br></td>
                                            <td class="text-center">$63,060</td>
                                            <td class="text-center">Tim Carson</td>
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