<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!--<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/diet.css">
---- Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="styles.css">

    <style>
        @import url('https://fonts.googleapis.com/css?family=Numans');
        html,body{
            background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            height: 100%;
            font-family: 'Numans', sans-serif;
        }
        .container{
            height: 100%;
            align-content: center;
        }
        .card{
            height: 370px;
            margin-top: auto;
            margin-bottom: auto;
            width: 400px;
            background-color: rgba(0,0,0,0.5) !important;
        }
        .social_icon span{
            font-size: 60px;
            margin-left: 10px;
            color: #FFC312;
        }
        .social_icon span:hover{
            color: white;
            cursor: pointer;
        }
        .card-header h3{
            color: white;
        }
        .social_icon{
            position: absolute;
            right: 20px;
            top: -45px;
        }
        .input-group-prepend span{
            width: 50px;
            background-color: #FFC312;
            color: black;
            border:0 !important;
        }
        input:focus{
        <!--outline: 0 0 0 0  !important;-->
            box-shadow: 0 0 0 0 !important;
        }
        .login_btn{
            color: black;
            background-color: #FFC312;
            width: 100px;
        }
        .login_btn:hover{
            color: black;
            background-color: white;
        }
        .links{
            color: white;
        }
        .links a{
            margin-left: 4px;
        }
    </style>
</head>


<body>
<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>Diet Write</h3></div>

            <div class="card-body">
                <form method="post"
                      action="${ pageContext.request.contextPath }/diet/write"
                      name="inputForm" enctype="multipart/form-data">
                    <div class="input-group form-group">
                        <input name="author" type="text" class="form-control" placeholder="Author">
                    </div>

                    <div class="input-group form-group">
                        <textarea name="content" class="form-control" rows="4" cols="50" name="content" placeholder="Content"></textarea>
                    </div>

                    <div class="input-group form-group">
                        <input type="file" name="files">
                    </div>

                    <div class="form-group">
                        <input type="submit" value="등록" class="btn float-right login_btn">
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
</body>
</html>












