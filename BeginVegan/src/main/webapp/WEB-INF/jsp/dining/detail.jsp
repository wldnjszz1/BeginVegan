<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Review</title>

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <style type="text/css">
        .half-stars-example {

        /* use display:inline-flex to prevent whitespace issues. alternatively, you can put all the children of .rating-group on a single line */
        .rating-group {
            display: inline-flex;
        }

        /* make hover effect work properly in IE */
        .rating__icon {
            pointer-events: none;
        }

        /* hide radio inputs */
        .rating__input {
            position: absolute !important;
            left: -9999px !important;
        }

        /* set icon padding and size */
        .rating__label {
            cursor: pointer;
            /* if you change the left/right padding, update the margin-right property of .rating__label--half as well. */
            padding: 0 0.1em;
            font-size: 2rem;
        }

        /* add padding and positioning to half star labels */
        .rating__label--half {
            padding-right: 0;
            margin-right: -0.6em;
            z-index: 2;
        }

        /* set default star color */
        .rating__icon--star {
            color: orange;
        }

        .rating__icon--none {
            color: #eee;
        }

        /* if none icon is checked, make it red */
        .rating__input--none:checked + .rating__label .rating__icon--none {
            color: red;
        }

        /* if any input is checked, make its following siblings grey */
        .rating__input:checked ~ .rating__label .rating__icon--star {
            color: #ddd;
        }

        /* make all stars orange on rating group hover */
        .rating-group:hover .rating__label .rating__icon--star,
        .rating-group:hover .rating__label--half .rating__icon--star {
            color: orange;
        }

        /* make hovered input's following siblings grey on hover */
        .rating__input:hover ~ .rating__label .rating__icon--star,
        .rating__input:hover ~ .rating__label--half .rating__icon--star {
            color: #ddd;
        }

        /* make none icon grey on rating group hover */
        .rating-group:hover .rating__input--none:not(:hover) + .rating__label .rating__icon--none {
            color: #eee;
        }

        /* make none icon red on hover */
        .rating__input--none:hover + .rating__label .rating__icon--none {
            color: red;
        }

        }

    </style>
</head>


<body>
    <div align="center">
    <h1>${dining.title}</h1>
    <h2>전화번호 : ${dining.telephone}</h2><h2>카테고리 : ${dining.category}</h2>
    <h2>길주소 : ${dining.roadAddress}</h2>
    <h2>링크 :<a href="${dining.link}">${dining.link}</a></h2>
    </div>
    <hr>

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->


    <div class="container">
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1" id="login">
                <div class="page-header">
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
</body>
</html>












