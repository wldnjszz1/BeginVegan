<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Review</title>

   <script>
    </script>

    <style>
    </style>
</head>


<body>
    <div align="center">
    <h1>${dining.title}</h1>
    <h2>휴대폰 : ${dining.telephone} | 카테고리 : ${dining.category}</h2>
    <h2>길주소 : ${dining.roadAddress}</h2>
    <h2>링크 :<a href="${dining.link}">${dining.link}</a></h2>
    </div>
    <hr>
    <div >
        <h1>리뷰</h1>
    <h1>이 장소에 평가를 남겨주세요.</h1>
        <h1>☆☆☆☆☆</h1>
    </div>
    <hr>


</body>
</html>












