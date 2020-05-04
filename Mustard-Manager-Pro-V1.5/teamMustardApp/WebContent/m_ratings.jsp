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
                        </a><a class="btn active text-center" role="button" data-bs-hover-animate="pulse" style="margin: 0px 0px 0px 340px;background-color: #ffffff;color: rgb(21,4,4);font-weight: bold;margin-left: 42px;" href="all_employees.jsp">Employees</a>
                        <a
                            class="btn text-center d-xl-flex" role="button" data-bs-hover-animate="pulse" style="margin: 0px 0px px 200px;margin-left: -75px;color: rgb(21,4,4);background-color: rgb(255,255,255);font-weight: bold;padding-right: 6px;" href="r_budget.jsp">Reports &nbsp;</a><a class="btn text-center d-xl-flex" role="button" data-bs-hover-animate="pulse" style="margin: 0px 0px px 200px;margin-left: -78px;color: rgb(255,255,255);background-color: rgb(115,163,255);font-weight: bold;padding-right: 12px;padding-left: 12px;"
                                href="m_jobs.jsp">Manager</a><a class="text-white" href="m_jobs.jsp" style="margin-left: 216px;font-size: 23px;width: 34px;"></a><a class="text-dark" href="login.jsp"><i class="fas fa-sign-out-alt" data-bs-hover-animate="rubberBand" style="width: 16px;height: 16px;margin-right: 20px;"></i></a></div>
                </nav>
                <div class="container-fluid">
                    <div class="card shadow" style="margin-top: -10px;">
                        <div class="card shadow mb-5">
                            <div class="card-body" style="padding-bottom: px;height: 100px;">
                                <div class="row">
                                    <div class="col"></div>
                                    <div class="col" style="margin-top: 0px;margin-left: 30px;"><a class="btn" role="button" data-bs-hover-animate="pulse" style="margin: 10px;font-weight: bold;margin-left: 100px;background-color: rgb(255,255,255);color: rgb(21,4,4);margin-top: 15px;" href="m_jobs.jsp">Jobs</a>
                                        <a
                                            class="btn" role="button" data-bs-hover-animate="pulse" style="margin: 10px;font-weight: bold;background-color: rgb(115,163,255);color: rgb(255,255,255);margin-top: 15px;" href="m_ratings.jsp">Ratings</a>
                                    </div>
                                    <div class="col"></div>
                                </div>
                            </div>
                        </div>
                        <div class="card shadow" style="margin-top: -30px;">
                            <div class="card-body">
                                <div style="margin-left: 0px;margin-top: 0px;"><a class="btn btn-link" data-toggle="collapse" aria-expanded="false" aria-controls="collapse-1" href="#collapse-1" role="button" data-bs-hover-animate="pulse" style="background-color: rgb(115,163,255);font-weight: bold;color: rgb(255,255,255);">Add Rating</a>
                                    <div
                                        class="collapse" id="collapse-1">
                                        <div class="card" style="margin-top: 10px;">
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col">
                                                        <h5 style="font-weight: bold;font-size: 18px;">Rating Name</h5><textarea class="border rounded" style="color: rgb(110,112,126);padding: 6px 12px;height: 40px;margin-top: 0px;width: 260px;" name="signature"></textarea></div>
                                                    <div class="col">
                                                        <h5 style="font-weight: bold;font-size: 18px;">Projected Proportion</h5><textarea class="border rounded" style="color: rgb(110,112,126);padding: 6px 12px;height: 40px;margin-top: 0px;width: 260px;" name="signature"></textarea></div>
                                                    <div class="col"></div>
                                                </div>
                                                <div class="row">
                                                    <div class="col">
                                                        <h5 style="font-weight: bold;font-size: 18px;">Salary Increase Min</h5><textarea class="border rounded" style="color: rgb(110,112,126);padding: 6px 12px;height: 40px;margin-top: 0px;width: 260px;" name="signature"></textarea></div>
                                                    <div class="col">
                                                        <h5 style="font-weight: bold;font-size: 18px;">Salary Increase Max</h5><textarea class="border rounded" style="color: rgb(110,112,126);padding: 6px 12px;height: 40px;margin-top: 0px;width: 260px;" name="signature"></textarea></div>
                                                    <div class="col"><button class="btn" data-bs-hover-animate="pulse" type="submit" style="background-color: rgb(115,163,255);font-weight: bold;margin-top: 30px;color: rgb(255,255,255);">Submit</button></div>
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body" style="margin-top: -30px;">
                            <div class="table-responsive table mt-2" id="dataTable" role="grid" aria-describedby="dataTable_info">
                                <table class="table dataTable my-0" id="dataTable">
                                    <thead>
                                        <tr>
                                            <th class="text-center">Rating Name<i class="fas fa-sort-alpha-down" style="margin-left: 10px;"></i></th>
                                            <th class="text-center">Projected Proportion<i class="fas fa-sort-numeric-down" style="margin-left: 10px;"></i></th>
                                            <th class="text-center">Salary Increase Min<i class="fas fa-sort-amount-down" style="margin-left: 10px;"></i></th>
                                            <th class="text-center">Salary Increase Max<i class="fas fa-sort-amount-up" style="margin-left: 10px;"></i></th>
                                            <th class="text-center"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="text-center">EC</td>
                                            <td class="text-center">2.7</td>
                                            <td class="text-center">$2000</td>
                                            <td class="text-center">$4000<br></td>
                                            <td class="text-center"><a class="text-body" href="m_editrating.jsp"><i class="far fa-edit" data-bs-hover-animate="pulse"></i></a><br></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">SC</td>
                                            <td class="text-center">2.1</td>
                                            <td class="text-center">$1000</td>
                                            <td class="text-center">$2700</td>
                                            <td class="text-center"><i class="far fa-edit" data-bs-hover-animate="pulse"></i></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">SC+</td>
                                            <td class="text-center">1.2<br></td>
                                            <td class="text-center">$1200</td>
                                            <td class="text-center">$2900</td>
                                            <td class="text-center"><i class="far fa-edit" data-bs-hover-animate="pulse"></i></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">SC-</td>
                                            <td class="text-center">3.4</td>
                                            <td class="text-center">$800</td>
                                            <td class="text-center">$2500</td>
                                            <td class="text-center"><i class="far fa-edit" data-bs-hover-animate="pulse"></i></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">NI</td>
                                            <td class="text-center">2</td>
                                            <td class="text-center">$600</td>
                                            <td class="text-center">$2000</td>
                                            <td class="text-center"><i class="far fa-edit" data-bs-hover-animate="pulse"></i></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">NI+</td>
                                            <td class="text-center">2.5</td>
                                            <td class="text-center">$750</td>
                                            <td class="text-center">$1750</td>
                                            <td class="text-center"><i class="far fa-edit" data-bs-hover-animate="pulse"></i></td>
                                        </tr>
                                        <tr>
                                            <td class="text-center">NI-</td>
                                            <td class="text-center">0.3</td>
                                            <td class="text-center">$450</td>
                                            <td class="text-center">$1500</td>
                                            <td class="text-center"><i class="far fa-edit" data-bs-hover-animate="pulse"></i></td>
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
        </div>
        <footer class="bg-white sticky-footer">
            <div class="container my-auto">
                <div class="text-center my-auto copyright"><span>Copyright � MMP&nbsp;2020</span></div>
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