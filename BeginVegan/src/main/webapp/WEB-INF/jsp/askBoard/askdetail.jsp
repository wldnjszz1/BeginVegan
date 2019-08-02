<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}../resources/css/business-casual.css">
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>

    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

</head>
<body>
<jsp:include page="../include/header.jsp"/>

<section>
    <div align="center">
        <br>
        <hr>
        <h2>게시판 상세</h2>
        <hr>
        <br>
        <table>
            <tr>
                <th width="25%">번호</th>
                <td>${ask.id}</td>
            </tr>
            <tr>
                <th width="25%">제목</th>
                <td>${ask.title }</td>
            </tr>
            <tr>
                <th width="25%">작성자</th>
                <td>${ask.userId }</td>
            </tr>
            <tr>
                <th width="25%">내용</th>
                <td>${ask.content }</td>
            </tr>
            <tr>
                <th width="25%">등록일</th>
                <td>${ask.created }</td>
            </tr>
        </table>
        <br>
        <button id="updateBtn">수정</button>
        &nbsp;&nbsp;&nbsp;
        <button id="delBtn">삭제</button>
        &nbsp;&nbsp;&nbsp;
    </div>
</section>

</body>
<jsp:include page="../include/footer.jsp"/>
</html>