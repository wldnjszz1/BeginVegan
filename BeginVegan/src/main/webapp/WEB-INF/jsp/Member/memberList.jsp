<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="../include/header.jsp"/>

<head>
    <title>Table V04</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}../resources/boardTemplate/images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}../resources/boardTemplate/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}../resources/boardTemplate/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}../resources/boardTemplate/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}../resources/boardTemplate/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}../resources/boardTemplate/vendor/perfect-scrollbar/perfect-scrollbar.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}../resources/boardTemplate/css/util.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}../resources/boardTemplate/css/main.css">
    <!--===============================================================================================-->
</head>
<body>
<div class="limiter">
    <div class="container">
        <div class="wrap-table100">
            <div class="table100 ver1 m-b-110">
                <div class="table100-head">
                    <table>
                        <thead>
                        <tr class="row100 head">
                            <th class="cell100 column1">ID</th>
                            <th class="cell100 column2">USER ID</th>
                            <th class="cell100 column3">PASSWORD</th>
                            <th class="cell100 column4">EMAIL</th>
                            <th class="cell100 column5">TYPE</th>
                            <th class="cell100 column6">    </th>
                        </tr>
                        </thead>
                    </table>
                </div>

                <div class="table100-body js-pscroll">
                    <table>
                        <tbody>
                        <c:forEach items="${members}" var="member">
                        <tr class="row100 body">
                            <td class="cell100 column1">${member.id}</td>
                            <td class="cell100 column2">${member.user_id}</td>
                            <td class="cell100 column3">${member.password}</td>
                            <td class="cell100 column4">${member.email}</td>
                            <td class="cell100 column5">${member.type}</td>
                            <td class="cell100 column6" style="cursor:pointer;" onClick = "location.href='http://naver.com'">  수정  </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>


<!--===============================================================================================-->
<script src="../../../resources/boardTemplate/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="../../../resources/boardTemplate/vendor/bootstrap/js/popper.js"></script>
<script src="../../../resources/boardTemplate/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="../../../resources/boardTemplate/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="../../../resources/boardTemplate/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script>
    $('.js-pscroll').each(function(){
        var ps = new PerfectScrollbar(this);

        $(window).on('resize', function(){
            ps.update();
        })
    });


</script>
<!--===============================================================================================-->
<script src="../../../resources/boardTemplate/js/main.js"></script>

</body>
</html>

