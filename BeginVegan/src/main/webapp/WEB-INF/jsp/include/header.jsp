
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>BeginVegan</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}../../../resources/vendor/bootstrap/css/bootstrap.css">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}../../../resources/css/business-casual.css">

</head>



<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
    <div class="container">
        <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="#">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item active px-lg-4">
                    <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/">Home
                    </a>
                </li>
                <c:if test="${loginVO.type == 'manager'}">
                <li class="nav-item px-lg-4">
                    <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/manageMember">Manage Member</a>
                </li>
                </c:if>
                <c:choose>
                    <c:when test="${loginVO.user_id == null}">
                        <li class="nav-item px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/Board">Free</a>
                        </li>
                        <li class="nav-item px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/dining">Map</a>
                        </li>
                        <li class="nav-item px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/diet">Diet</a>
                        </li>
                        <li class="nav-item px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/askBoard">Q&A</a>
                        </li>
                        <li class="nav-item px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/join">회원가입</a>
                        </li>
                        <li class="nav-item px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/login">로그인</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/Board">Free</a>
                        </li>
                        <li class="nav-item px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/diet">Diet</a>
                        </li>
                        <li class="nav-item px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/dining">Map</a>
                        </li>
                        <li class="nav-item px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/askBoard">Q&A</a>
                        </li>
                        <li class="nav-item px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/mypage">${loginVO.user_id}님</a>
                        </li>
                        <li class="nav-item px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/logout">로그아웃</a>
                        </li>
                    </c:otherwise>
                </c:choose>

            </ul>
        </div>
    </div>
</nav>