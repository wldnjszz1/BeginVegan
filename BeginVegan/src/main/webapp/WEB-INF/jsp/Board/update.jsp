<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}../resources/css/business-casual.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<jsp:include page="../include/header.jsp"/>

<section>
    <div align="center">
        <br>
        <hr>
        <h2>게시판 수정폼</h2>
        <hr>
        <br>
        <form method="POST"
              action="/Board/update"
              name="inputForm">
            <input type="hidden" name="id" value="${boardVO.id}">
            <input type="hidden" name="user_id" value="${boardVO.user_id}">
            <input type="hidden" name="created" value="${boardVO.created}">
            <table border="1" style="width: 80%;">
                <tr>
                    <th width="23%">제목</th>
                    <td><input type="text" name="title" value="${boardVO.title}" size="80" autofocus="autofocus"></td>
                </tr>
                <tr>
                    <th width="23%">글쓴이</th>
                    <td>${ boardVO.id }
                        <!-- <input type="text" name="writer" size="80"> -->
                    </td>
                </tr>
                <tr>
                    <th width="23%">내용</th>
                    <td><input type="textarea" rows="5" cols="80" name="content" value="${boardVO.content}"></td>
                </tr>
            </table>
            <br>
            <button>글 수정 </button>
        </form>
    </div>
</section>
</body>
<jsp:include page="../include/footer.jsp"/>
</html>