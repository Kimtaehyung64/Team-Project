<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>CMJ - Start Estate Management</title>
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/styles.css" rel="stylesheet" />
        <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">CMJ</a><button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu<i class="fas fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About us</a></li>
                         <c:catch>
                       <c:choose>
                       <c:when test="${empty user}">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="login">고객센터</a></li>
                        </c:when>
                        <c:otherwise>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="listall">고객센터</a></li>
                        </c:otherwise>
                        </c:choose>
                        </c:catch>
                         <c:catch>
                       <c:choose>
                       <c:when test="${empty user}">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="login">로그인</a></li>
                        </c:when>
                        <c:otherwise>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="logout">로그아웃</a></li>
                        </c:otherwise>
                        </c:choose>
                        </c:catch>
                    </ul>
                </div>
            </div>
        </nav>