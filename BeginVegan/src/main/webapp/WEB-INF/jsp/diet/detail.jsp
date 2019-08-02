<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
    $(document).ready(function(){
        $('#delBtn').click(function(){
            if(confirm("$(diet.id)게시물을 삭제하시겠습니까?")){
                location.href = "${ pageContext.request.contextPath }/diet/remove/${diet.id}";
            }
        });
    });
</script>
</head>
<body>

<header></header>
<section>
    <div align="center">
        <br>
        <hr>
        <h2>식단게시판 상세</h2>
        <hr>
        <br>
        <table>
            <tr>
                <th width="25%">번호</th>
                <td>${ diet.id }</td>
            </tr>
            <tr>
                <th width="25%">작성자</th>
                <td>${ diet.author }</td>
            </tr>
            <tr>
                <th width="25%">내용</th>
                <td>${ diet.content }</td>
            </tr>
            <tr>
                <th width="25%">만든시간</th>
                <td>${ diet.created }</td>
            </tr>
            <tr>
                <th width="25%">사진</th>
                <td>${ diet.image }</td>
            </tr>
        </table>
        <br>
        <button id="updateBtn">수정</button>&nbsp;&nbsp;&nbsp;
        <button id="delBtn">삭제</button>&nbsp;&nbsp;&nbsp;
    </div>
</section>
<footer></footer>

</body>
</html>