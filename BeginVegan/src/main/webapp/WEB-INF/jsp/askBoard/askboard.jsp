<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#writeBtn').click(function() {
                location.href = "${ pageContext.request.contextPath }/askBoard/askwrite"
            });
        });
    </script>
</head>
<body>
<section>
    <div align="center">
        <br>
        <hr>
        <h2>질문 답변 게시글 조회</h2>
        <hr>
        <br>

        <table class="list">
            <tr>
                <th width="10%">번호</th>
                <th>제목</th>
                <th width="16%">작성자</th>
                <th width="20%">작성일</th>
            </tr>
            <c:forEach items="${ askBoardList }" var="ask">
                <tr>
                    <td>${ ask.id }</td>
                    <td>${ ask.title }</td>
                    <td>${ ask.userId }</td>
                    <td>${ ask.created }</td>
                </tr>
            </c:forEach>
        </table>
        <br>
            <button id="writeBtn">새글등록</button>
    </div>
</section>

</body>
</html>