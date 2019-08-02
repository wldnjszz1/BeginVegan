<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hello ${name}!</title>
    <link href="/css/main.css" rel="stylesheet">
</head>
<body>
<h2 class="hello-title">Hello ${name}!</h2>
<script src="/js/main.js"></script>
<h2>한112233</h2>
<a href="${ pageContext.request.contextPath }/diet">DIET 게시판</a><br>
<a href="${ pageContext.request.contextPath }/diet/write">DIET 글쓰기</a><br>
</body>
</html>