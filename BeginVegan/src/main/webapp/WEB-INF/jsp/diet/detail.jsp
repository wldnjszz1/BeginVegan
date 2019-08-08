<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/diet.css">
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="styles.css">

    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script>
        $(document).ready(function(){
            $('#delBtn').click(function(){
                if(confirm("${diet.id}번 게시물을 삭제하시겠습니까?")){
                    location.href = "${ pageContext.request.contextPath }/diet/remove/${diet.id}";
                }
            });

        });
    </script>

    <style>
    </style>
</head>


<body>
<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>Update or Delete</h3></div>

            <div class="card-body">
                <form role="form" action="/diet/update" method="POST">

                    <div class="input-group form-group">
                        <input name="id" value="<c:out value="${diet.id}" />"
                               type="text" class="form-control" readonly="readonly">
                    </div>

                    <div class="input-group form-group">
                        <textarea rows="4" cols="50" name="content"
                          class="form-control"><c:out value="${diet.content}" /></textarea>
                    </div>

                    <div class="input-group form-group">
                        <input name="created" value="<c:out value="${diet.created}" />"
                               type="text" class="form-control" readonly="readonly">
                    </div>

                    <div class="input-group form-group">
                        <input name="image" value="<c:out value="${diet.image}" />"
                               type="text" class="form-control" placeholder="image" readonly="readonly">
                    </div>

                    <div class="form-group">
                        <input type="submit" value="수정" class="btn float-right login_btn">
                    </div>
                </form>
                <div class="form-group">
                        <button id="delBtn" class="btn float-right login_btn">  삭제  </button>
                </div>

            </div>
        </div>
    </div>
</div>
</body>
</html>












