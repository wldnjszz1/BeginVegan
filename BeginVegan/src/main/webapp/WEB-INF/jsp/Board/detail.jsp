<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
                pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}../resources/css/business-casual.css">
<!DOCTYPE html>
<html>
<head>
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="../resources/boardDetail/style.css">
    <!-- animsition css -->
    <link rel="stylesheet" type="text/css" href="../resources/boardDetail/animsition.min.css">
    <!-- Font Awesome CSS -->
    <link href="../resources/boardDetail/font-awesome.min.css" rel="stylesheet">
    <!-- font css -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>

    <script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#delBtn').click(function() {
                if(confirm("${board.id}번 게시물을 삭제하시겠습니까?")){
                    // 동기식 삭제
                    location.href = "${ pageContext.request.contextPath }/Board/delete/${board.id}";
                }
            });
        });

        $(document).ready(function () {
            $('#updateBtn').click(function () {
                location.href = "${pageContext.request.contextPath}/Board/update/${board.id}";
            });
        });

        /*목록 버튼 클릭 이벤트*/
        $(document).ready(function () {
            $('#backBtn').click(function () {
                location.href = "${pageContext.request.contextPath}/Board";
            });
        });


    </script>

</head>
<body>
<jsp:include page="../include/header.jsp"/>

<section>

    <div class="content" align="center">
        <input type="hidden" name="author" value="${board.author}">
        <div class="container">
            <div class="col-md-8 col-sm-8" >
                <div class="content-area">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="post-holder mb40" >
                                <div class="post-block pinside30 outline" style="background-color: white">
                                    <!-- post block -->
                                    <div class="post-meta mb30" align="left" >
                                        <!-- post meta -->
                                        <span class="meta-comment"><i class="fa fa-bell"></i>${board.id }</span>
                                        <span class="meta-date"><i class="fa fa-calendar"></i>${board.created }</span>
                                        <span class="meta-comment"><i class="fa fa-comments"></i>${board.user_id }</span>
                                    </div>
                                    <!-- /.post meta -->
                                    <div class="post-header mb20">
                                        <h1 class="post-title mb30">${board.title }</h1>
                                    </div>
                                    <div class="post-content" align="right">
                                        <a href="/fileDown/${files.bno}">${files.fileOriName}</a>
                                    </div>
                                    <div class="post-content"  align="left" >
                                        <pre style="font-size: 17px;">${board.content }</pre>
                                    </div>
                                        <hr>
                                        <div class="social-icon" align="right">
                                            <a href="#" class="social-link"><i class="fa fa-share-alt"></i></a>
                                            <a href="#" class="social-link"><i class="fa fa-facebook-f"></i></a>
                                            <a href="#" class="social-link"><i class="fa fa-twitter"></i></a>
                                            <a href="#" class="social-link"><i class="fa fa-google-plus"></i></a>
                                            <hr>
                                        </div>
                                    <div class="form-group">
                                        <c:if test="${loginVO.id == board.author}">
                                            <button id="updateBtn" name="updateBtn" class="btn btn-outline">수정</button>
                                            <button id="delBtn" name="delBtn" class="btn btn-outline">삭제</button>
                                        </c:if>
                                        <button id="backBtn" class="btn btn-outline">글 목록</button>

                                    </div>

                                </div>
                                <!-- /.post block -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="comment-tabs">
        <ul class="nav nav-tabs" role="tablist">
            <li class="active"><a href="#comments-login" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">Comments</h4></a></li>
        </ul>
        <div class="container">
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
                    <div class="col-sm-10">
                        <textarea class="form-control" name="addComment" id="addComment" rows="5"></textarea>
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
</section>
</body>
<script>

    $("#submitComment").click(function(){

        var url="${pageContext.request.contextPath}/board/comments/insert";

        var sendInfo = {
            bno: "${requestScope.board.id}",
            content: $('#addComment').val(),
            writer: "${requestScope.loginVO.user_id}",
        };

        console.log(JSON.stringify(sendInfo));

        var content = $("#addComment").val().trim();
        var writer = "${requestScope.loginVO.user_id}";

        if(writer == "") {
            alert("로그인이 필요합니다");
        }else {
            var i = 0;
            var values = document.getElementsByClassName("writer");
            while (i < values.length) {
                var commentWriter = values[i].innerText;
                if (commentWriter.toLowerCase() == writer) {
                    alert("이미 댓글을 작성하셨습니다");
                    break;
                }
                i++;
            }
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
                    data: sendInfo
                });
            }
        }
    });


    $(document).ready(function(){

        var bno = "${requestScope.dining.id}";

        (function commentList(){
            $.ajax({
                url : '${pageContext.request.contextPath}/board/comments/list',
                type : 'get',
                data : {'bno':bno},
                success : function(data){
                    var output ='';
                    for(var i in data) {
                        var obj  = data[i];
                        output += '<br>';
                        output += '<br>';
                        output += '<div class="tab-content">';
                        output += '<div class="tab-pane active" id="comments-login">';
                        output += '<ul class="media-list">';
                        output += '<li class="media">';
                        output += '<div class="media-body">';
                        output += '<div class="well well-lg">';
                        output += '<h4 id="writer" class="media-heading text-uppercase reviews writer">'+obj.writer+'</h4>';
                        output += '<ul class="media-date text-uppercase reviews list-inline">';
                        output += '<li class="dd">'+obj.reg_date+'</li>';
                        output += '</ul>';
                        output += '<p class="media-comment">'+obj.content+'</p>';
                        output += '</div>';
                        output += '</div>';
                        output += '</li>';
                        output += '</ul>';
                        output += '</div>';
                        output += '</div>';

                        if("${requestScope.loginVO.user_id}" == obj.writer) {
                            output += "<button type='button' id='btnDelete' onclick='deleteComment("+obj.cno+")'>삭제</button>";
                            output += "<button type='button' id='btnUpdate' onclick='editComment("+obj.cno+",\""+obj.content+"\")'>수정</button>";
                        }
                    }

                    $("#commentList").html(output);
                }
            });
        })();
    });

</script>
<jsp:include page="../include/footer.jsp"/>
</html>