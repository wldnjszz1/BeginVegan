<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}../resources/css/register.css">

<script type="text/javascript">
    function tocheckpw2() {
        var pw = document.getElementById("inputPassword").value;
        var pwck = document.getElementById("inputConfirmPassword").value;

        if (pw != pwck) {
            document.getElementById('pwsame').innerHTML = '비밀번호가 틀렸습니다. 다시 입력해 주세요';
            return false;
        }
    }
</script>

<body>
<jsp:include page="../include/header.jsp"/>
<div class="container">
    <div class="row">
        <div class="col-lg-10 col-xl-9 mx-auto">
            <div class="card card-signin flex-row my-5">
                <div class="card-img-left d-none d-md-flex">
                    <!-- Background image for card set in CSS! -->
                </div>
                <div class="card-body">
                    <h5 class="card-title text-center">Register</h5>
                    <form class="form-signin" method="post" action="${pageContext.request.contextPath}/join" onsubmit="return tocheckpw2()">
                        <div class="form-label-group">
                            <input type="text" name="user_id" id="inputUserame" class="form-control"
                                   placeholder="Username" required autofocus>
                            <label for="inputUserame">Username</label>
                        </div>

                        <div class="form-label-group">
                            <input type="email" name="email" id="inputEmail" class="form-control"
                                   placeholder="Email address" required>
                            <label for="inputEmail">Email address</label>
                        </div>

                        <hr>

                        <div class="form-label-group">
                            <input type="password" name="password" id="inputPassword" class="form-control"
                                   placeholder="Password" required>
                            <label for="inputPassword">Password</label>
                        </div>

                        <div class="form-label-group">
                            <input type="password" id="inputConfirmPassword" class="form-control" placeholder="Password"
                                   required>
                            <label for="inputConfirmPassword">Confirm password</label>
                            <p id="pwsame" style="color:red;"></p>
                        </div>

                        <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Register</button>
                        <a class="d-block text-center mt-2 small" href="${pageContext.request.contextPath}/login">Sign In</a>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>
</body>


<jsp:include page="../include/footer.jsp"/>

</html>
