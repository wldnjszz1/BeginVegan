<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
</head>
<body>
<header></header>
<section>
    <div align="center">
        <br>
        <hr>
        <h2>Diet 등록</h2>
        <hr>
        <br>

        <form method="post"
              action="${ pageContext.request.contextPath }/diet/write"
              name="inputForm">
            <table>
                <tr>
                    <th width="20%">ID</th>
                    <td><textarea rows="5" cols="80" name="id"></textarea></td>
                </tr>
                <tr>
                    <th width="20%">AUTHOR</th>
                    <td><textarea rows="5" cols="80" name="author"></textarea></td>
                </tr>
                <tr>
                    <th width="20%">CONTENT</th>
                    <td><textarea rows="5" cols="80" name="content"></textarea></td>
                </tr>
                <tr>
                    <th width="20%">IMAGE</th>
                    <td><textarea rows="5" cols="80" name="image"></textarea></td>
                </tr>
            </table>
            <br>
            <button type="submit">등록</button>
        </form>
    </div>
</section>
<footer></footer>
</body>
</html>