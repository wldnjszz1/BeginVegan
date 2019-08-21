<%@ page language="java" contentType="text/html; charset=UTF-8"
                pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}../resources/css/business-casual.css">
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>

    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#delBtn').click(function() {
                if(confirm("${board.id}번 게시물을 삭제하시겠습니까?")){
                    // 동기식 삭제
                    location.href = "${ pageContext.request.contextPath }/Board/delete/${board.id}";
                }
            });
        });

        $(document).ready(function () {
            $('#updateBtn').click(function () {
                location.href = "${pageContext.request.contextPath}/Board/update/${board.id}";
            });
        });
    </script>
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
                <td>${board.id}</td>
            </tr>
            <tr>
                <th width="25%">제목</th>
                <td>${board.title }</td>
            </tr>
            <tr>
                <th width="25%">작성자</th>
                <td>${board.user_id }</td>
            </tr>
            <tr>
                <th width="25%">첨부파일</th>
                <td><a href="/fileDown/${files.bno}">${files.fileOriName}</td>
            </tr>
            <tr>
                <th width="25%">내용</th>
                <td>${board.content }</td>
            </tr>
            <tr>
                <th width="25%">등록일</th>
                <td>${board.created }</td>
            </tr>
        </table>
        <br>
        <button id="updateBtn">수정</button>
        <button id="delBtn">삭제</button>
        &nbsp;&nbsp;&nbsp;
    </div>
</section>

</body>
<jsp:include page="../include/footer.jsp"/>
</html>