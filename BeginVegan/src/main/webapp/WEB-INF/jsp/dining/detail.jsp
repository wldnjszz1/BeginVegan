<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Review</title>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">
        /* use display:inline-flex to prevent whitespace issues. alternatively, you can put all the children of .rating-group on a single line */
        #half-stars-example .rating-group {
            display: inline-flex;
        }
        /* make hover effect work properly in IE */
        #half-stars-example .rating__icon {
            pointer-events: none;
        }
        /* hide radio inputs */
        #half-stars-example .rating__input {
            position: absolute !important;
            left: -9999px !important;
        }
        /* set icon padding and size */
        #half-stars-example .rating__label {
            cursor: pointer;
            /* if you change the left/right padding, update the margin-right property of .rating__label--half as well. */
            padding: 0 0.1em;
            font-size: 2rem;
        }
        /* add padding and positioning to half star labels */
        #half-stars-example .rating__label--half {
            padding-right: 0;
            margin-right: -0.6em;
            z-index: 2;
        }
        /* set default star color */
        #half-stars-example .rating__icon--star {
            color: orange;
        }
        /* set color of none icon when unchecked */
        #half-stars-example .rating__icon--none {
            color: #eee;
        }
        /* if none icon is checked, make it red */
        #half-stars-example .rating__input--none:checked + .rating__label .rating__icon--none {
            color: red;
        }
        /* if any input is checked, make its following siblings grey */
        #half-stars-example .rating__input:checked ~ .rating__label .rating__icon--star {
            color: #ddd;
        }
        /* make all stars orange on rating group hover */
        #half-stars-example .rating-group:hover .rating__label .rating__icon--star,
        #half-stars-example .rating-group:hover .rating__label--half .rating__icon--star {
            color: orange;
        }
        /* make hovered input's following siblings grey on hover */
        #half-stars-example .rating__input:hover ~ .rating__label .rating__icon--star,
        #half-stars-example .rating__input:hover ~ .rating__label--half .rating__icon--star {
            color: #ddd;
        }
        /* make none icon grey on rating group hover */
        #half-stars-example .rating-group:hover .rating__input--none:not(:hover) + .rating__label .rating__icon--none {
            color: #eee;
        }
        /* make none icon red on hover */
        #half-stars-example .rating__input--none:hover + .rating__label .rating__icon--none {
            color: red;
        }
        *{
            padding:0;
            margin:0;
        }
        body{
        }
        .jebal{
            background-image : url("${ pageContext.request.contextPath }/resources/img/a.jpg");
            padding: 50px 0;
            background-repeat: no-repeat;
            background-size: cover;  /* background-size: auto | length | cover | contain | initial | inherit*/
            background-position: center;
        }
        .page-header{
        }
        .gallery-title{
            font-size: 10rem;
            color: #010106;
            font-weight: 900;
            font-weight: bold;
            margin-bottom: 50px;
        <!--font-style : oblique;-->
        }
        .gallery-content{
            font-size: 25px;
            color: #010106;
            font-weight: 500;
            margin-bottom: 30px;
        }
        #ddd{
        <!--background-color : white;-->
        }
    </style>

</head>


<body>
<div class="portfolio" id="portfolio">


    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <div class="jebal">
        <div class="page-header">
            <div class="container-fluid">
                <div align="center">
                    <h1 class="gallery-title">${dining.title}</h1>
                </div>
            </div>
            <div align="" style="margin-left:500px">
                <h1 class="gallery-content"><a href="${dining.link}"><b><i class="fa fa fa fa-twitter fa-2x"></i> ${dining.link}</b></a></h1>
                <h1 class="gallery-content"><b><i class="fa fa-mobile-phone fa-2x"></i> ${dining.telephone}</b></h1>
                <h1 class="gallery-content"><b><i class="fa fa-apple fa-2x"></i> ${dining.category}</b></h1>
                <h1 class="gallery-content"><b><i class="fa fa fa-road fa-2x"></i> ${dining.roadAddress}</b></h1>
                <!-- 내림입니다 -->
                <c:choose>
                    <c:when test="${dining.score  == 5.0}">
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                    </c:when>
                    <c:when test="${dining.score >= 4.5}">
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-half-o fa-5x" style="color:orange"></i>
                    </c:when>
                    <c:when test="${dining.score >= 4.0}">
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                    </c:when>
                    <c:when test="${dining.score >= 3.5}">
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-half-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                    </c:when>
                    <c:when test="${dining.score >= 3.0}">
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                    </c:when>
                    <c:when test="${dining.score >= 2.5}">
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-half-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                    </c:when>
                    <c:when test="${dining.score >= 2.0}">
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                    </c:when>
                    <c:when test="${dining.score >= 1.5}">
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-half-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                    </c:when>
                    <c:when test="${dining.score >= 1.0}">
                        <i class="fa fa-star fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                    </c:when>
                    <c:when test="${dining.score >= 0.5}">
                        <i class="fa fa-star-half-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                    </c:when>
                    <c:otherwise>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                        <i class="fa fa-star-o fa-5x" style="color:orange"></i>
                    </c:otherwise>

                </c:choose>
                <i class="gallery-content" style="font-size:5rem;"><b>(${dining.score})</b></i>
            </div>
        </div>
    </div>
    </div>
    </div>
    <div style="background-color:#FFE5CB;">
    <div class="container" style="background-color: #FFE5CB; margin:auto;">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1" id="login">


                <div class="comment-tabs">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="active"><a href="#comments-login" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Comments</h4></a></li>
                    </ul>
                    <div class="">
                        <div id="commentList"></div>
                    </div>
                    <hr>
                    <div class="tab-pane" id="add-comment-disabled">
                        <!-- <div class="alert alert-info alert-dismissible" role="alert">
                            <button type="button" class="close" data-dismiss="alert">
                                <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                            </button>
                            <strong>Hey!</strong> If you already have an account <a href="#" class="alert-link">Login</a> now to make the comments you want. If you do not have an account yet you're welcome to <a href="#" class="alert-link"> create an account.</a>
                        </div> -->
                        <form action="#" method="post" class="inputForm" id="commentForm" role="form">
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
                                    <button class="btn btn-success btn-circle text-uppercase" type="button" id="submitComment"><span class="glyphicon glyphicon-send"></span> Summit comment</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</div>
</section>
</body>
<script>

    function editComment(no, content){
        var date = $('#cttdate').text();
        var content = $('#cttcontent').text();
        var writer = $('#cttwriter').text();
        var score = $('#cttscore').text();
        var editForm ='';
        editForm += '<form action="#" method="post" class="inputForm" id="fixForm" role="form">';
        editForm += '<br>';
        editForm += '<br>';
        editForm += '<div class="tab-content">';
        editForm += '<div class="tab-pane active" id="comments-login">';
        editForm += '<ul class="media-list">';
        editForm += '<li class="media">';
        editForm += '<div class="media-body">';
        editForm += '<div class="well well-lg">';
        editForm += '<h4 id="cttwriter" class="media-heading text-uppercase reviews writer">' + writer + '</h4>';
        editForm += '<ul class="media-date text-uppercase reviews list-inline">';
        editForm += '<div class="half-stars-example" id="half-stars-example">';
        editForm += '<div class="rating-group">';
        editForm += '<input class="rating__input rating__input--none" checked name="rating2" id="rating2-0" value="0" type="radio">';
        editForm += '<label aria-label="0 stars" class="rating__label" for="rating2-0">&nbsp;</label>';
        editForm += '<label aria-label="0.5 stars" class="rating__label rating__label--half" for="rating2-05"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>';
        editForm += '<input class="rating__input" name="rating2" id="rating2-05" value="0.5" type="radio">';
        editForm += '<label aria-label="1 star" class="rating__label" for="rating2-10"><i class="rating__icon rating__icon--star fa fa-star"></i></label>';
        editForm += '<input class="rating__input" name="rating2" id="rating2-10" value="1" type="radio">';
        editForm += '<label aria-label="1.5 stars" class="rating__label rating__label--half" for="rating2-15"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>';
        editForm += ' <input class="rating__input" name="rating2" id="rating2-15" value="1.5" type="radio">';
        editForm += '<label aria-label="2 stars" class="rating__label" for="rating2-20"><i class="rating__icon rating__icon--star fa fa-star"></i></label>';
        editForm += ' <input class="rating__input" name="rating2" id="rating2-20" value="2" type="radio">';
        editForm += '<label aria-label="2.5 stars" class="rating__label rating__label--half" for="rating2-25"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>';
        editForm += '<input class="rating__input" name="rating2" id="rating2-25" value="2.5" type="radio" checked>';
        editForm += '<label aria-label="3 stars" class="rating__label" for="rating2-30"><i class="rating__icon rating__icon--star fa fa-star"></i></label>';
        editForm += '<input class="rating__input" name="rating2" id="rating2-30" value="3" type="radio">';
        editForm += '<label aria-label="3.5 stars" class="rating__label rating__label--half" for="rating2-35"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>';
        editForm += '<input class="rating__input" name="rating2" id="rating2-35" value="3.5" type="radio">';
        editForm += '<label aria-label="4 stars" class="rating__label" for="rating2-40"><i class="rating__icon rating__icon--star fa fa-star"></i></label>';
        editForm += '<input class="rating__input" name="rating2" id="rating2-40" value="4" type="radio">';
        editForm += ' <label aria-label="4.5 stars" class="rating__label rating__label--half" for="rating2-45"><i class="rating__icon rating__icon--star fa fa-star-half"></i></label>';
        editForm += '<input class="rating__input" name="rating2" id="rating2-45" value="4.5" type="radio">';
        editForm += ' <label aria-label="5 stars" class="rating__label" for="rating2-50"><i class="rating__icon rating__icon--star fa fa-star"></i></label>';
        editForm += '<input class="rating__input" name="rating2" id="rating2-50" value="5" type="radio">';
        editForm += '</div>';
        editForm += '</div>';
        editForm += '</form>';
        // editForm += '<li id="cttscore" class="dd">' + score + '</li>';
        editForm += '<li id="cttdate" class="dd">' + date + '</li>';
        editForm += '</ul>';
        // editForm += '<p id="cttcontent" class="media-comment">' + content + '</p>';
        editForm += '<textarea class="form-control" name="cttcontent" id="cttcontent" rows="5">'+content+'</textarea>';
        editForm += '</div>';
        editForm += '</div>';
        editForm += '</li>';
        editForm += '</ul>';
        editForm += '</div>';
        editForm += '</div>';
        editForm += "<td><input id='btn' type='button' onclick='fixComment("+no+")' value='수정'>";
        editForm += "<input id='btn' type='button' onclick='commentList()' value='취소'></td>";

        $('#commentList').html(editForm);
    }

    //댓글 목록
    function commentList() {
        var bno = "${requestScope.dining.id}";

        $.ajax({
            url: '${pageContext.request.contextPath}/dining/comments/list',
            type: 'get',
            data: {'bno': bno},
            success: function (data) {
                var output = '';
                for (var i in data) {
                    var obj = data[i];
                    output += '<br>';
                    output += '<br>';
                    output += '<div class="tab-content">';
                    output += '<div class="tab-pane active" id="comments-login">';
                    output += '<ul class="media-list">';
                    output += '<li class="media">';
                    output += '<div class="media-body">';
                    output += '<div class="well well-lg">';

                    output += '<ul class="media-date text-uppercase reviews list-inline">';

                    if(obj.score == 5.0){
                        output +=
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>';
                    }
                    else if(obj.score >= 4.5){
                        output +=
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-half-o fa-2x" style="color:orange"></i>';
                    }
                    else if(obj.score >= 4.0){
                        output +=
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>';
                    }
                    else if(obj.score >= 3.5){
                        output +=
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-half-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>';
                    }
                    else if(obj.score >= 3.0){
                        output +=
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>';
                    }
                    else if(obj.score >= 2.5){
                        output +=
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-half-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>';
                    }
                    else if(obj.score >= 2.0){
                        output +=
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>';
                    }
                    else if(obj.score >= 1.5){
                        output +=
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-half-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>';
                    }
                    else if(obj.score >= 1.0){
                        output +=
                            '<i class="fa fa-star fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>';
                    }
                    else if(obj.score >= 0.5){
                        output +=
                            '<i class="fa fa-star-half-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>';
                    }
                    else{
                        output +=
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>'+
                            '<i class="fa fa-star-o fa-2x" style="color:orange"></i>';
                    }
                    /*
                    output += ' (' + obj.score + ') <br>';
                    */

                    output += '<h4 id="cttwriter" class="media-heading text-uppercase reviews writer">' + obj.writer + '</h4>';
                    output += '<li id="cttdate" class="dd">' + obj.reg_date + '</li>';
                    output += '</ul>';
                    output += '<p id="cttcontent" class="media-comment">' + obj.content + '</p>';
                    output += '</div>';
                    output += '</div>';
                    output += '</li>';
                    output += '</ul>';
                    output += '</div>';
                    output += '</div>';

                    if ("${requestScope.loginVO.user_id}" == obj.writer) {
                        output += "<button type='button' id='btnDelete' onclick='deleteComment(" + obj.cno + ")'>삭제</button>";
                        output += "<button type='button' id='btnUpdate' onclick='editComment(" + obj.cno + ",\"" + obj.content + "\")'>수정</button>";
                    }
                }

                $("#commentList").html(output);
            }
        });
    }

    function sendData() {
        var url = "${pageContext.request.contextPath}/dining/comments/insert";
        var content = $("#addComment").val().trim();
        var score = document.forms['commentForm'].rating2.value;
        var sendInfo = {
            bno: "${requestScope.dining.id}",
            content: $('#addComment').val(),
            writer: "${requestScope.loginVO.user_id}",
            score: score
        };
        if (content === "") {
            alert("내용을 입력하세요");
            $("#addComment").focus();
        } else {
            $.ajax({
                headers: {
                    'X-HTTP-Method-Override': 'POST'
                },
                type: "POST",
                url: url,
                data: sendInfo,
                success: function (data) {
                    if (data == 1) {
                        $('[name=addComment]').val('');
                    }
                    commentList(); //페이지 로딩시 댓글 목록 출력
                }
            });
        }
    }


    function updateComment() {
        var url = "${pageContext.request.contextPath}/dining/comments/insert";

        var score = document.forms['commentForm'].rating2.value;

        var sendInfo = {
            bno: "${requestScope.dining.id}",
            content: $('#addComment').val(),
            writer: "${requestScope.loginVO.user_id}",
            score: score
        };
        console.log(JSON.stringify(sendInfo));

        var content = $("#addComment").val().trim();
        var writer = "${requestScope.loginVO.user_id}";

        if (writer == "") {
            alert("로그인이 필요합니다");
            location.href = "${ pageContext.request.contextPath }/login";
        } else {
            var i = 0;
            var values = document.getElementsByClassName("writer");
            console.log(values.length);
            if (values.length == 0){
                sendData();
            }else {
                for (var i = 0; i < values.length; i++) {
                    var commentWriter = values[i].innerText;
                    console.log(commentWriter);
                    console.log(i);
                    if (commentWriter.toLowerCase() != writer && i == (values.length - 1)) {
                        console.log(commentWriter.toLowerCase());
                        sendData();
                    } else {
                        alert("이미 리뷰를 작성하셨습니다");
                        break;
                    }
                }
            }
        }
    }

    //등록 버튼 눌렀을 때
    $("#submitComment").click(function () {
        updateComment();
    });


    $(document).ready(function () {
        commentList(); //페이지 로딩시 댓글 목록 출력
    });

    function deleteComment(no) {
        if(confirm("정말 삭제하시겠습니까?")==true) {
            $.ajax({
                url : "${pageContext.request.contextPath}/dining/comments/delete/" +no,
                type : "post",
                success : function(data) {
                    alert("삭제 완료!");
                    commentList();
                }
            });
        } else {
            return;
        }
    }


    function fixComment(no) {
        var content = $("#cttcontent").val().trim();
        var score = document.forms['fixForm'].rating2.value;
        if (content ==="") {
            alert("댓글을 입력하세요");
            $('#comment'+no+' #content').focus();
        }else {
            $.ajax({
                url : "${pageContext.request.contextPath}/dining/comments/update",
                type: "post",
                data : {
                    'content' : content,
                    'cno' : no,
                    'score' : score,
                },
                success : function(data) {
                    commentList();
                },
                error:function(request,status,error){
                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);}
            });
        }
    }



</script>
</html>