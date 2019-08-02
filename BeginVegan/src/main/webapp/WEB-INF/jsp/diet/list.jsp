<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Hello !</title>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script>
    function doAction(dietID) {
        location.href = "${ pageContext.request.contextPath }/diet/" + dietID;
    }
</script>


</head>
<body>
<header></header>
<section>
    <table class="list">
        <tr>
            <th width="7%">ID값</th>
            <th width="16%">작성자</th>
            <th>내용</th>
            <th>시간</th>
            <th>사진</th>
        </tr>
        <c:forEach items="${ dietList }" var="diet">
            <tr>
                <td>${ diet.id }</td>
                <td>${ diet.author }</td>
                <td>${ diet.content }</td>
                <td>${ diet.created }</td>
                <td>
                <a href="#" onclick="doAction(${diet.id})">
                    <c:out value="${ diet.image }" /></a>
                </td>
            </tr>
        </c:forEach>
    </table>
</section>
<footer></footer>
</body>
</html>