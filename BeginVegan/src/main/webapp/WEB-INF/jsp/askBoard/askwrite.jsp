<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}../resources/css/business-casual.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <script>
        function checkForm(){
            var form = document.inputForm;
            if(!form.title.value) {
                alert('제목은 필수항목입니다.');
                form.title.focus();
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<jsp:include page="../include/header.jsp"/>

<section>
    <div align="center">
        <br>
        <hr>
        <h2>게시판 등록폼</h2>
        <hr>
        <br>

        <form method="post"
              action="${ pageContext.request.contextPath }/askBoard/askwrite"
              name="inputForm"
              onsubmit="return checkForm()">

            <table border="1" style="width: 80%;">
                <tr>
                    <th width="23%">제목</th>
                    <td><input type="text" name="title" size="80" autofocus="autofocus"></td>
                </tr>
                <tr>
                    <th width="23%">글쓴이</th>
                    <td>${ askVO.userId }
                        <!-- <input type="text" name="writer" size="80"> -->
                    </td>
                </tr>
                <tr>
                    <th width="23%">내용</th>
                    <td><textarea rows="5" cols="80" name="content"></textarea></td>
                </tr>
            </table>
            <br>
            <button type="submit">등록</button>

        </form>
    </div>
</section>
</body>
<jsp:include page="../include/footer.jsp"/>
</html>