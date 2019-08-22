<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.2.5/jquery.fancybox.min.css"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <!--<link rel="stylesheet" href="css/style.css">-->


    <meta charset="UTF-8">


    <style type="text/css">

        *{
            padding:0;
            margin:0;
        }

        section{
            padding: 50px 0;
            background-image : url("${ pageContext.request.contextPath }/resources/img/a.jpg");
            background-repeat: no-repeat;
            background-size: cover;  /* background-size: auto | length | cover | contain | initial | inherit*/
            background-size: contain;
            background-position: center;
        }

        .gallery-title{
            font-size: 10rem;
            color: #181684;
            font-weight: 900;
            font-weight: bold;
            margin-bottom: 50px;
            font-style : oblique;
        }


        .gallery-content{
            font-size: 18px;
            color: #40ff33;
            font-weight: 500;
            margin-bottom: 30px;

        }


        #ddd{
            <!--background-color : white;-->

        }


    </style>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.2.5/jquery.fancybox.min.js"></script>
    <script src="js/script.js"></script>
    <script>
    </script>
</head>

<body>
<section class="portfolio" id="portfolio">


<!-- 지원씨한거 -->
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <div class="row">

        <div class="col-sm-10 col-sm-offset-1" id="login">
            <div class="page-header">

                <div class="container-fluid">
                    <div align="center">
                        <h1 class="gallery-title">러빙헛 스타일</h1>
                    </div>
                    <div class="row">
                        <div class="gallery col-lg-12 col-md-12 col-sm-12 col-xs-12"  id="ddd">
                            <h1 class="gallery-content"><a href="http://www.lovinghut.kr/"><b>http://www.lovinghut.kr/</b></a></h1>
                            <h1 class="gallery-content"><b>02-772-3011</b></h1>
                            <h1 class="gallery-content"><b>뷔페>채식,샐러드뷔페</b></h1>
                            <h1 class="gallery-content"><b>서울특별시 중구 남대문로 81 롯데백화점 본점 지하1층</b></h1>
                        </div>
                    </div>
                </div>

                <h3 class="reviews">Leave your comment</h3>
                <div class="logout">
                    <button class="btn btn-default btn-circle text-uppercase" type="button" onclick="$('#login').hide(); $('#logout').show()">
                        <span class="glyphicon glyphicon-off"></span> Login
                    </button>
                </div>
            </div>
            <div class="comment-tabs">
                <ul class="nav nav-tabs" role="tablist">
                    <li class="active"><a href="#comments-login" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Comments</h4></a></li>
                    <li><a href="#add-comment-disabled" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Add comment</h4></a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="comments-login">
                        <ul class="media-list">
                            <li class="media">
                                <div class="media-body">
                                    <div class="well well-lg">
                                        <h4 class="media-heading text-uppercase reviews">Marco</h4>
                                        <ul class="media-date text-uppercase reviews list-inline">
                                            <li class="dd">22</li>
                                            <li class="mm">09</li>
                                            <li class="aaaa">2014</li>
                                        </ul>
                                        <p class="media-comment">
                                            Great snippet! Thanks for sharing.
                                        </p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-pane" id="add-comment-disabled">
                        <div class="alert alert-info alert-dismissible" role="alert">
                            <button type="button" class="close" data-dismiss="alert">
                                <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                            </button>
                            <strong>Hey!</strong> If you already have an account <a href="#" class="alert-link">Login</a> now to make the comments you want. If you do not have an account yet you're welcome to <a href="#" class="alert-link"> create an account.</a>
                        </div>
                        <form action="#" method="post" class="form-horizontal" id="commentForm" role="form">
                            <div class="form-group">
                                <label for="email" class="col-sm-2 control-label">Comment</label>
                                <div class="col-sm-10">
                                    <textarea class="form-control" name="addComment" id="addComment" rows="5"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Star rating</label>
                                <div class="col-sm-10">
                                    <div class="input-group">
                                        <div class="half-stars-example" id="half-stars-example">
                                            <div class="rating-group">
                                                <input class="rating__input rating__input--none" checked name="rating2" id="rating2-0" value="0" type="radio">
                                                <label aria-label="0 stars" class="rating__label" for="rating2-0">&nbsp;</label>
                                                <label aria-label="0.5 stars" class="rating__label rating__label--half" for="rating2-05"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
                                                <input class="rating__input" name="rating2" id="rating2-05" value="0.5" type="radio">
                                                <label aria-label="1 star" class="rating__label" for="rating2-10"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                                <input class="rating__input" name="rating2" id="rating2-10" value="1" type="radio">
                                                <label aria-label="1.5 stars" class="rating__label rating__label--half" for="rating2-15"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
                                                <input class="rating__input" name="rating2" id="rating2-15" value="1.5" type="radio">
                                                <label aria-label="2 stars" class="rating__label" for="rating2-20"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                                <input class="rating__input" name="rating2" id="rating2-20" value="2" type="radio">
                                                <label aria-label="2.5 stars" class="rating__label rating__label--half" for="rating2-25"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
                                                <input class="rating__input" name="rating2" id="rating2-25" value="2.5" type="radio" checked>
                                                <label aria-label="3 stars" class="rating__label" for="rating2-30"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                                <input class="rating__input" name="rating2" id="rating2-30" value="3" type="radio">
                                                <label aria-label="3.5 stars" class="rating__label rating__label--half" for="rating2-35"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
                                                <input class="rating__input" name="rating2" id="rating2-35" value="3.5" type="radio">
                                                <label aria-label="4 stars" class="rating__label" for="rating2-40"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                                <input class="rating__input" name="rating2" id="rating2-40" value="4" type="radio">
                                                <label aria-label="4.5 stars" class="rating__label rating__label--half" for="rating2-45"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>
                                                <input class="rating__input" name="rating2" id="rating2-45" value="4.5" type="radio">
                                                <label aria-label="5 stars" class="rating__label" for="rating2-50"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                                <input class="rating__input" name="rating2" id="rating2-50" value="5" type="radio">
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button class="btn btn-success btn-circle text-uppercase disabled" type="submit" id="submitComment"><span class="glyphicon glyphicon-send"></span> Summit comment</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>

</body>
</html>












