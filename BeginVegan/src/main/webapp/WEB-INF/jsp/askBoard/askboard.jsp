<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}../resources/css/business-casual.css">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="resources/boardTemplate/images/icons/favicon.ico"/>
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/boardTemplate/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
      href="resources/boardTemplate/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/boardTemplate/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/boardTemplate/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/boardTemplate/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/boardTemplate/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/boardTemplate/css/main.css">
<!--===============================================================================================-->


<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#writeBtn').click(function () {
                location.href = "${ pageContext.request.contextPath }/askBoard/askwrite"
            });
        });
    </script>
</head>
<body>
<jsp:include page="../include/header.jsp"/>
<section>
    <div class="limiter">
        <div class="container-table100">
            <div class="wrap-table100">
                <br>
                <hr>
                <h2>질문 답변 게시글 조회</h2>
                <hr>
                <br>

                <div class="table100 ver1 m-b-110">
                    <div class="table100-head">
                        <table>
                            <thead>
                            <tr class="row100 head">
                                <th width="10%" style="padding-left: 40px">번호</th>
                                <th class="cell100 column1">제목</th>
                                <th class="cell100 column4">작성자</th>
                                <th class="cell100 column5">작성일</th>
                            </tr>
                            </thead>
                        </table>
                    </div>

                    <div class="table100-body js-pscroll">
                        <table>
                            <tbody>

                            <c:forEach items="${ askBoardList }" var="ask">
                                <tr class="row100 body">
                                    <td width="10%" style="padding-left: 40px">${ ask.id }</td>
                                    <td class="cell100 column1">
                                        <a href="${pageContext.request.contextPath}/askBoard/${ask.id}">
                                                ${ ask.title }
                                        </a>
                                    </td>
                                    <td class="cell100 column1">${ ask.userId }</td>
                                    <td class="cell100 column1">${ ask.created }</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <br>
                <button id="writeBtn">새글등록</button>
            </div>
        </div>
    </div>
</section>

<!--===============================================================================================-->
<script src="resources/boardTemplate/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="resources/boardTemplate/vendor/bootstrap/js/popper.js"></script>
<script src="resources/boardTemplate/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="resources/boardTemplate/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="resources/boardTemplate/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script>
    $('.js-pscroll').each(function () {
        var ps = new PerfectScrollbar(this);

        $(window).on('resize', function () {
            ps.update();
        })
    });


</script>
<!--===============================================================================================-->
<script src="resources/boardTemplate/js/main.js"></script>


</body>
<jsp:include page="../include/footer.jsp"/>
</html>