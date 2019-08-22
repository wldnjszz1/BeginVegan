<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
                pageEncoding="UTF-8"%>
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

</section>
<div class="container">
    <label for="content">comment</label>
    <form name="commentInsertForm">
        <div class="input-group">
            <input type="hidden" name="bno" value="${board.id}"/>
            <input type="text" class="form-control" id="content" name="content" placeholder="내용을 입력하세요.">
            <span class="input-group-btn">
                    <button class="btn btn-default" type="button" name="commentInsertBtn">등록</button>
               </span>
        </div>
    </form>
</div>

<div class="container">
    <div class="commentList"></div>
</div>

</body>

<%@ include file="../Board/comment.jsp" %>
<jsp:include page="../include/footer.jsp"/>
</html>