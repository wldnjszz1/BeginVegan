<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}../../resources/css/askform.css">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <script>
        function checkForm() {
            var form = document.inputForm;
            if (!form.title.value) {
                alert('제목은 필수항목입니다.');
                form.title.focus();
                return false;
            }
            return true;
        }
    </script>


</head>
<body>

<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div align="center" class="card-header">
                <h3>POST</h3>
            </div>
            <div class="card-body">
                <form name="inputForm"
                      class="form-horizontal"
                      method="POST"
                      action="${ pageContext.request.contextPath }/askBoard/askwrite"
                      onsubmit="return checkForm()">
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-edit"></i></span>
                        </div>
                        <input type="text" name="title" class="form-control" placeholder="제목을 입력하세요">
                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i> </span>
                        </div>
                        <input type="text" name="userId" class="form-control" value="${askVO.userId}" readonly="readonly">
                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-edit"></i> </span>
                        </div>
                        <textarea style="text-align: left" name="content" class="input-group-text"
                                  placeholder="내용을 입력하세요" cols="38"></textarea>
                    </div>
                    <div align="center" class="form-group">
                        <input type="submit" value="등록" class="btn login_btn">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>