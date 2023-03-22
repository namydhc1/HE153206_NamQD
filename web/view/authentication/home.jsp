<%-- 
    Document   : home
    Created on : Mar 21, 2023, 10:01:09 PM
    Author     : Namqd
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Stylish Portfolio - Start Bootstrap Template</title>
        <!--Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!--Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!--Simple line icons-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css" rel="stylesheet" />
        <!--Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
        <!--         Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <style>
        .aa {
            background-color: #993300;
            width: 300px;
            margin-left: 38%;
        }
        .aa a{
            color: white;
            font-size: 40px;
            
        }
        .aaa {
            background-color: #993300;
            width: 300px;
            margin-left: 38%;
        }
        .aaa a{
            color: white;
            font-size: 40px;
            
        }
        .bb{
            background-color: #993300;
        }
        .bb a{
            color: white;
            font-size: 35px;
            padding-left: 1350px;
        }
    </style>
    <body id="page-top">
        <!--         Navigation-->
                <c:if test="${sessionScope.acc != null}">
        <div class="bb">
                        <p>
                            <a href="logout">Log Out</a>
                        </p>
                    </div>
        </c:if>

        <!--Header-->
        
        <header class="masthead d-flex align-items-center">
            <div class="container px-4 px-lg-5 text-center">
                <h1 class="mb-1">FPT University</h1>
                <h3 class="mb-5"><em>Cung đi toi thanh cong, Tiep nguon sinh khi</em></h3>
                <c:if test="${sessionScope.acc == null}">
                    <a class="btn btn-primary btn-xl" href="login.jsp">Login</a>
<!--                    <a class="btn btn-primary btn-xl" href="login.jsp">Sign in for Lecturers</a>-->
                </c:if>
                <c:if test="${sessionScope.acc != null}">
                    <c:if test="${sessionScope.acc.rid == 1}">
                        <div class="aaa">
                        <p>
                            <a href="leccourse">Score Update</a>
                        </p>
                        <p>
                            <a href="course">Class Information</a>
                        </p>
                        </div>
                    </c:if>
                    <c:if test="${sessionScope.acc.rid == 2}">
                        <div class="aa">
                        <p>
                            <a href="viewgroup">Student's Transcript</a>
                        </p> 
                        <p>
                            <a href="course">Class Information</a>
                        </p>
                    </div>
                    </c:if>
                    
                </c:if>
            </div>
        </header>

        <!--Services-->
        <section class="content-section bg-primary text-white text-center" id="services">
            <div class="container px-4 px-lg-5">
                <div class="content-section-heading">
                    <h3 class="text-secondary mb-0">Services</h3>
                    <h2 class="mb-5">Contact</h2>
                </div>
                <div class="row gx-4 gx-lg-5">
                    <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
                        <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-screen-smartphone"></i></span>
                        <h4><strong>Hotline</strong></h4>
                        <p class="text-faded mb-0">024 7300 1866</p>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
                        <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-pencil"></i></span>
                        <h4><strong>Email</strong></h4>
                        <p class="text-faded mb-0">daihocfpt@fpt.edu.vn</p>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-5 mb-md-0">
                        <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-like"></i></span>
                        <h4><strong>Fanpate</strong></h4>
                        <p class="text-faded mb-0"><a href="https://www.facebook.com/DaihocFPTHaNoi">facebook.com/DaihocFPTHaNoi</a></p>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-mustache"></i></span>
                        <h4><strong>Address</strong></h4>
                        <p class="text-faded mb-0">Khu Giao duc và Dao tao, Khu Cong 
                            nghe cao Hoa Lac, Km29 Đai lo Thang 
                            Long, H. Thach That, TP. Ha Noi</p>
                    </div>
                </div>
            </div>
        </section>
        <!--Callout-->
        <section class="callout">
            <div class="container px-4 px-lg-5 text-center">
                <h2 class="mx-auto mb-5">
                    Welcome to
                    the wings of dreams!
                </h2>
                <a class="btn btn-primary btn-xl" href="https://daihoc.fpt.edu.vn/">Website</a>
            </div>
        </section>
    </body>
</html>