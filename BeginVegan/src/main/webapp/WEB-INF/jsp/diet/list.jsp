<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.2.5/jquery.fancybox.min.css"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <!--<link rel="stylesheet" href="css/style.css">-->


    <meta charset="UTF-8">

    <style>
        *{
            padding:0;
            margin:0;
        }

        section{
            padding: 50px 0;
        }


        .gallery-title{
            font-size: 36px;
            color: #3F6184;
            text-align: center;
            font-weight: 500;
            margin-bottom: 70px;
        }
        .filter-button{
            font-size: 18px;
            border: 2px solid #3F6184;
            padding:5px 10px;
            text-align: center;
            color: #3F6184;
            margin-bottom: 30px;
            background:transparent;
        }
        .filter-button:hover,
        .filter-button:focus,
        .filter-button.active{
            color: #ffffff;
            background-color:#3F6184;
            outline:none;
        }

        .jibro{
            font-size: 18px;
            border: 2px solid #3F6184;
            padding:5px 10px;
            text-align: center;
            color: #3F6184;
            margin-bottom: 30px;
            background:transparent;
        }
        .jibro:hover,
        .jibro:focus,
        .jibro.active{
            color: #ffffff;
            background-color:#3F6184;
            outline:none;
        }

        /* 여기가 진짜 사진크기 잘 수정해보기*/
        .gallery_product{
            margin: 4px; /* 이거수정하면 사진띄움 */
            padding: 4px; /* 이거랑 */
            width: 30rem;
            height: 30rem;
            background-size: cover;  /* background-size: auto | length | cover | contain | initial | inherit*/
            background-size: contain;
            background-position: center;

        }
        /* 사진내부 글쓰는곳 */
        .gallery_product .img-info{
            position: absolute;
            background: rgba(0, 0, 0, 0.5);
            left: 0;
            right: 0;
            bottom: 0;
            padding: 20px;
            overflow:hidden;
            color:#fff;
            top:0;
            display:none;
            -webkit-transition: 2s;
            transition: 2s;
        }

        .gallery_product:hover .img-info{
            display:block;
            -webkit-transition: 2s;
            transition: 2s;
        }
    </style>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.2.5/jquery.fancybox.min.js"></script>
    <script src="js/script.js"></script>
    <script>
        function doAction(dietID, dietAuthor) {

            var loginVO_id = '${loginVO.user_id}';
            if(loginVO_id == dietAuthor) {
                location.href = "${ pageContext.request.contextPath }/diet/" + dietID;
            }

        }

        $(document).ready(function(){


            $(".filter-button").click(function(){


                <c:if test="${loginVO.user_id == null}">
                alert("로그인 하셔야 이용 가능합니다.")
                location.href = "${ pageContext.request.contextPath }/login";
                </c:if>

                <c:if test="${loginVO.user_id != null}">
                location.href = "${ pageContext.request.contextPath }/diet/write";
                </c:if>
            });

            $(".jibro").click(function(){
                location.href = "${ pageContext.request.contextPath}/";
            })
        });
    </script>
</head>


<body>
<section class="portfolio" id="portfolio">
    <div class="container-fluid">
        <div class="row">
            <div class="gallery col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <h1 class="gallery-title">DIET GELLARY</h1>
            </div>

            <div align="center">
                <button class="filter-button" >글쓰기</button>
                <button class="jibro" >홈으로</button>
            </div><br/>

            <c:forEach items="${ dietList }" var="diet">
                <div class="gallery_product col-sm-3 col-xs-6 filter category1"
                     onclick="doAction(${diet.id}, '${diet.author}')" id="${diet.id}">
                    <img class="img-responsive" alt="" src="${pageContext.request.contextPath}/${diet.image}"
                         style="width: 30rem; height: 30rem;" />
                    <div class='img-info'>

                        <h4>작성자 : ${diet.author}</h4>
                        <p>작성시간 : ${diet.created}</p><br>
                        <p>${diet.content}</p>
                    </div>

                </div>
            </c:forEach>

        </div>
    </div>
</section>
</body>
</html>












