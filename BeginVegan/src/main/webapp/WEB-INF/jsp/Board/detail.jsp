<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}../resources/css/business-casual.css">
<link rel="stylesheet" href="//cdn.rawgit.com/young-ha/webfont-archive/master/css/Godo.css">
<link rel="stylesheet" href="//cdn.rawgit.com/young-ha/webfont-archive/master/css/NanumGothic.css">

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
        $(document).ready(function () {
            $('#delBtn').click(function () {
                if (confirm("${board.id}번 게시물을 삭제하시겠습니까?")) {
                    // 동기식 삭제

                    //var name_by_id = $('#commentList').attr('id');


  //                 var commentList=$('#commentList').attr('id');

/*                  if(commentList){
                        alert("댓글이 달린 게시물은 삭제 할 수 없습니다.");
                        return ;
                    }
*/
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
        <input type="hidden" name="bno" value="${board.id}">
        <div class="container">
            <div class="col-md-8 col-sm-8">
                <div class="content-area">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="post-holder mb40">
                                <div class="post-block pinside30 outline" style="background-color: white">
                                    <!-- post block -->
                                    <div class="post-meta mb30" align="left">
                                        <!-- post meta -->
                                        <span class="meta-comment"><i class="fa fa-bell"></i>${board.id }</span>
                                        <span class="meta-date"><i class="fa fa-calendar"></i>${board.created }</span>
                                        <span class="meta-comment"><i
                                                class="fa fa-comments"></i>${board.user_id }</span>
                                    </div>
                                    <!-- /.post meta -->
                                    <div class="post-header mb20">
                                        <h1 class="post-title mb30 your-style2"><font size="6px;">${board.title }</font>
                                        </h1>
                                    </div>
                                    <div class="post-content" align="right">
                                        <a href="/fileDown/${files.bno}">${files.fileOriName}</a>
                                    </div>
                                    <div class="post-content" align="left">
                                        <pre class="your-style3"><font size="4px;"> ${board.content }</font></pre>
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

                                    <form action="#" method="post" class="inputForm" id="commentForm"
                                          role="form">
                                        <div class="comment-tabs">
                                            <ul class="nav nav-tabs" role="tablist">
                                                <li class="active"><a href="#comments-login" role="tab"
                                                                      data-toggle="tab">
                                                    <h4 class="reviews text-capitalize">Comments</h4></a></li>
                                            </ul>
                                            <div class="" align="left">
                                                <div class="dd" id="commentList"></div>
                                            </div>
                                            <hr>
                                            <div class="tab-pane" id="add-comment-disabled">
                                                <input type="hidden" name="author" value="${loginVO.id}">
                                                <input type="hidden" name="bno" value="${board.id}">
                                                <input type="hidden" name="writer" value="${loginVO.user_id}">
                                                <div class="form-group">
                                                    <div class="col-sm-10">
                                                        <textarea class="form-control" name="addComment" id="addComment"
                                                                  rows="3"></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-2 col-sm-10">
                                                        <button class="btn btn-success btn-circle text-uppercase"
                                                                type="button" id="submitComment"><span
                                                                class="glyphicon glyphicon-send"></span> Summit comment
                                                        </button>
                                                    </div>
                                                </div>
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
        <!-- /.post block -->
    </div>

</section>
</body>
<script>

    function editComment(cno, content, reg_date) {
        var writer = $('#cttwriter').text();
        var editForm = '';
        editForm += '<form action="#" method="post" class="inputForm" id="fixForm" role="form">';
        editForm += '<br>';
        editForm += '<br>';
        editForm += '<div class="tab-content" id="cno'+cno+'">';
        editForm += '<div class="tab-pane active" id="comments-login">';
        editForm += '<ul class="media-list">';
        editForm += '<li class="media">';
        editForm += '<div class="media-body">';
        editForm += '<div class="well well-lg">';
        editForm += '<h6 class="media-heading text-uppercase reviews writer" name="cttwriter" id="cttwriter">' + writer + '</h6>';
        editForm += '<ul class="media-date text-uppercase reviews list-inline">';
        editForm += '</form>';
        editForm += '<li name="cttdate" id="cttdate" class="dd">' + reg_date + '</li>';
        editForm += '</ul>';
        editForm += '<textarea class="form-control"name="cttcontent" id="cttcontent" rows="3">' + content + '</textarea>';
        editForm += '</div>';
        editForm += '</div>';
        editForm += '</li>';
        editForm += '</ul>';
        editForm += '</div>';
        editForm += '</div>';
        editForm += "<td><input id='btn' type='button' onclick='fixComment(" + cno + ")' value='수정'>";
        editForm += "<input id='btn' type='button' onclick='commentList()' value='취소'></td>";

        $("#cno"+cno).replaceWith(editForm);
        $("#commentList").html(editForm);
    }

    //댓글 목록
    function commentList() {
        var bno = "${requestScope.board.id}";

        $.ajax({
            url: '${pageContext.request.contextPath}/board/comments/list',
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
                    output += '<h6 id="cttwriter" class="media-heading text-uppercase reviews writer">' + obj.writer + '</h6>';
                    output += '<ul class="media-date text-uppercase reviews list-inline">';
                    output += '<li id="cttdate" class="dd">' + obj.reg_date + '</li>';
                    output += '</ul>';
                    output += '<hr>';
                    output += '<p id="cttcontent" name="cttcontent" class="media-comment">' + obj.content + '</p>';
                    output += '</div>';
                    output += '</div>';
                    output += '</li>';
                    output += '</ul>';
                    output += '</div>';
                    output += '</div>';

                    if ("${requestScope.loginVO.user_id}" == obj.writer) {
                        output += '<div align="right">';
                        output += "<button class='btn btn-outline' type='button' id='btnDelete' onclick='deleteComment(" + obj.cno + ")'>삭제</button>";
                        output += "<button class='btn btn-outline' type='button' id='btnUpdate' onclick='editComment("+ obj.cno + ",\"" + obj.content + "\"," +"\"" + obj.reg_date +"\")'>수정</button>";
                        output += '</div>';
                    }
                }

                $("#commentList").html(output);
            }
        });
    }


    //등록 버튼 눌렀을 때
    $("#submitComment").click(function () {

        var url = "${pageContext.request.contextPath}/board/comments/insert";

        var sendInfo = {
            bno: "${requestScope.board.id}",
            author: "${requestScope.loginVO.id}",
            content: $('#addComment').val(),
            writer: "${requestScope.loginVO.user_id}",
        };

        console.log(JSON.stringify(sendInfo));

        var content = $("#addComment").val().trim();
        var writer = "${requestScope.loginVO.user_id}";

        if (writer == "") {
            alert("로그인이 필요합니다");
        } else {
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
    });

    $(document).ready(function () {
        commentList(); //페이지 로딩시 댓글 목록 출력
    });

    function deleteComment(no) {
        if (confirm("정말 삭제하시겠습니까?") == true) {
            $.ajax({
                url: "${pageContext.request.contextPath}/board/comments/delete/" + no,
                type: "post",
                success: function (data) {
                    alert("삭제 완료!");
                    commentList();
                }
            });
        } else {
            return;
        }
    }

    function fixComment(cno) {
        var content = $("#cttcontent").val().trim();
        if (content === "") {
            alert("댓글을 입력하세요");
            $('#comment' + no + ' #content').focus();
        } else {
            $.ajax({
                url: "${pageContext.request.contextPath}/board/comments/update",
                type: "post",
                data: {
                    'cno': cno,
                    'content': content,
                },
                success: function (data) {
                    commentList();
                },
                error: function (request, status, error) {
                    alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                }
            });
        }
    }

</script>

<style type="text/css">
    #btnDelete, #btnUpdate {
        text-align: right;
    }

</style>

</html>