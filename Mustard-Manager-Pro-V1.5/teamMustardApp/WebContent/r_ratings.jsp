<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
String tableinfo = (String) session.getAttribute("popinfo");
session.setAttribute("whereAmIFrom", "r_ratings");
%>
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
                        </a><a class="btn active text-center" role="button" data-bs-hover-animate="pulse" style="margin: 0px 0px 0px 340px;background-color: #ffffff;color: rgb(21,4,4);font-weight: bold;margin-left: 42px;" href="MainController?buttonpressed=employees">Employees</a>
                        <a
                            class="btn text-center d-xl-flex" role="button" data-bs-hover-animate="pulse" style="margin: 0px 0px px 200px;margin-left: -72px;color: rgb(255,255,255);background-color: rgb(115,163,255);font-weight: bold;padding-right: 6px;"
                            href="r_budget.jsp">Reports &nbsp;</a><a class="btn text-center d-xl-flex" role="button" data-bs-hover-animate="pulse" style="margin: 0px 0px px 200px;margin-left: -78px;color: rgb(21,4,4);background-color: rgb(255,255,255);font-weight: bold;padding-right: 6px;"
                                href="m_jobs.jsp">Manager</a><a class="text-white" href="m_jobs.jsp" style="margin-left: 216px;font-size: 23px;width: 34px;"></a><a class="text-dark" href="login.jsp"><i class="fas fa-sign-out-alt" data-bs-hover-animate="rubberBand" style="width: 16px;height: 16px;margin-right: 20px;"></i></a></div>
                </nav>
                <div class="container-fluid">
                    <div class="card shadow mb-5" style="margin-top: -10px;">
                        <div class="card-body" style="padding-bottom: px;height: 100px;">
                            <div class="row">
                                <div class="col"><a class="btn" role="button" data-bs-hover-animate="pulse" style="margin: 10px;font-weight: bold;background-color: rgb(255,255,255);color: rgb(21,4,4);margin-left: 480px;" href="r_performance.jsp"></a><a class="btn" role="button"
                                        data-bs-hover-animate="pulse" style="margin: 10px;font-weight: bold;color: rgb(21,4,4);background-color: rgb(255,255,255);" href="r_budget.jsp">Budget</a><a class="btn" role="button" data-bs-hover-animate="pulse" style="margin: 10px;font-weight: bold;color: rgb(255,255,255);background-color: rgb(115,163,255);"
                                        href="r_ratings.jsp">Ratings</a></div>
                            </div>
                        </div>
                    </div>
					<table class="table dataTable my-0" id="dataTable">
                    	<thead>
                    		<tr>
	                            <th class="text-center">Projected Ratings</th>
                            </tr>
	                        <tr>
	                            <th class="text-center">Rating</th>
	                            <th class="text-center">Rating Count</th>
	                            <th class="text-center">Rating Proportion %</th>
                            </tr>
                       </thead>
                       <tbody>
                            <!-- This is where are the projected rating information goes -->
                            <%=tableinfo%>
                       </tbody>
                    </table>
                    <table class="table dataTable my-0" id="dataTable">
                    	<thead>
                    		<tr>
	                            <th class="text-center">Actual Ratings</th>
                            </tr>
	                        <tr>
	                            <th class="text-center">Rating</th>
	                            <th class="text-center">Rating Count</th>
	                            <th class="text-center">Rating Proportion %</th>
                            </tr>
                       </thead>
                       <tbody>
                            <!-- This is where are the actual rating information goes -->
                       </tbody>
                    </table>
                    <div class="card-group">
                        <div class="card" style="margin-right: 10px;">
                            <div class="card-header d-flex justify-content-between align-items-center">
                                <h6 class="text-center font-weight-bold m-0" style="color: rgb(65,66,68);">Projected Performance Review</h6>
                            </div>
                            <div class="card-body">
                                <div class="chart-area"><canvas data-bs-chart="{&quot;type&quot;:&quot;pie&quot;,&quot;data&quot;:{&quot;labels&quot;:[&quot;EC&quot;,&quot;SC&quot;,&quot;SC+&quot;,&quot;SC-&quot;,&quot;NI&quot;],&quot;datasets&quot;:[{&quot;label&quot;:&quot;EC&quot;,&quot;backgroundColor&quot;:[&quot;#4e73df&quot;,&quot;#1cc88a&quot;,&quot;#36b9cc&quot;,&quot;#1fbcff&quot;,&quot;rgb(248,88,78)&quot;],&quot;borderColor&quot;:[&quot;#ffffff&quot;,&quot;#ffffff&quot;,&quot;#ffffff&quot;,&quot;#ffffff&quot;,&quot;#ffffff&quot;],&quot;data&quot;:[&quot;50&quot;,&quot;30&quot;,&quot;15&quot;,&quot;30&quot;,&quot;10&quot;]},{&quot;label&quot;:&quot;&quot;,&quot;backgroundColor&quot;:[],&quot;borderColor&quot;:[],&quot;data&quot;:[]},{&quot;label&quot;:&quot;&quot;,&quot;backgroundColor&quot;:[],&quot;borderColor&quot;:[],&quot;data&quot;:[]}]},&quot;options&quot;:{&quot;maintainAspectRatio&quot;:false,&quot;legend&quot;:{&quot;display&quot;:true,&quot;reverse&quot;:true},&quot;title&quot;:{&quot;display&quot;:true,&quot;text&quot;:&quot;Projected Performance Review&quot;,&quot;position&quot;:&quot;bottom&quot;,&quot;fontColor&quot;:&quot;#000000&quot;,&quot;fontFamily&quot;:&quot;Nunito, sans-serif&quot;}}}"></canvas></div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header d-flex justify-content-between align-items-center">
                                <h6 class="text-center font-weight-bold m-0" style="color: rgb(65,66,68);">Actual Performance Review</h6>
                            </div>
                            <div class="card-body">
                                <div class="chart-area"><canvas data-bs-chart="{&quot;type&quot;:&quot;pie&quot;,&quot;data&quot;:{&quot;labels&quot;:[&quot;EC&quot;,&quot;SC&quot;,&quot;SC+&quot;,&quot;SC-&quot;,&quot;NI&quot;],&quot;datasets&quot;:[{&quot;label&quot;:&quot;EC&quot;,&quot;backgroundColor&quot;:[&quot;#4e73df&quot;,&quot;#1cc88a&quot;,&quot;#36b9cc&quot;,&quot;#1fbcff&quot;,&quot;rgb(248,88,78)&quot;],&quot;borderColor&quot;:[&quot;#ffffff&quot;,&quot;#ffffff&quot;,&quot;#ffffff&quot;,&quot;#ffffff&quot;,&quot;#ffffff&quot;],&quot;data&quot;:[&quot;10&quot;,&quot;10&quot;,&quot;30&quot;,&quot;15&quot;,&quot;20&quot;]},{&quot;label&quot;:&quot;&quot;,&quot;backgroundColor&quot;:[],&quot;borderColor&quot;:[],&quot;data&quot;:[]},{&quot;label&quot;:&quot;&quot;,&quot;backgroundColor&quot;:[],&quot;borderColor&quot;:[],&quot;data&quot;:[]},{&quot;label&quot;:&quot;&quot;,&quot;backgroundColor&quot;:[],&quot;borderColor&quot;:[],&quot;data&quot;:[]}]},&quot;options&quot;:{&quot;maintainAspectRatio&quot;:false,&quot;legend&quot;:{&quot;display&quot;:true,&quot;reverse&quot;:true},&quot;title&quot;:{&quot;display&quot;:true,&quot;text&quot;:&quot;Actual Performance Review&quot;,&quot;position&quot;:&quot;bottom&quot;,&quot;fontColor&quot;:&quot;#000000&quot;,&quot;fontFamily&quot;:&quot;Nunito, sans-serif&quot;}}}"></canvas></div>
                            </div>
                        </div>
                    </div>
                    <div class="card shadow mb-4"></div>
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