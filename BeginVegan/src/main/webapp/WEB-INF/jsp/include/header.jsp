
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Business Casual - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}../../../resources/vendor/bootstrap/css/bootstrap.css">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}../../../resources/css/business-casual.css">

</head>

<h1 class="site-heading text-center text-white d-none d-lg-block">
    <span class="site-heading-upper text-primary mb-3">A Free Bootstrap 4 Business Theme</span>
    <span class="site-heading-lower">Business Casual</span>
</h1>

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
                    <a class="nav-link text-uppercase text-expanded" href="http://localhost:8080">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item px-lg-4">
                    <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/../../about.jsp">About</a>
                </li>
                <!-- <li class="nav-item px-lg-4">
                    <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/../../products.jsp">Products</a>
                </li>
                <li class="nav-item px-lg-4">
                    <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/../../store.jsp">Store</a>
                </li> -->
                <li class="nav-item px-lg-4">
                    <a class="nav-link text-uppercase text-expanded" href="${pageContext.request.contextPath}/manageMember">Manage Member</a>
                </li>
            </ul>
        </div>
    </div>
</nav>