
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="../include/header.jsp"/>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- Custom fonts for this theme -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}../resources/mypageTemplate/vendor/fontawesome-free/css/all.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Theme CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}../resources/mypageTemplate/css/freelancer.min.css">

</head>

  <!-- Contact Section -->
  <div class="page-section" style="background-color: white">
    <div class="container">

      <!-- Contact Section Heading -->
      <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Edit Profile</h2>

      <!-- Icon Divider -->
      <div class="divider-custom">
        <div class="divider-custom-line"></div>
        <div class="divider-custom-icon">
          <i class="fas fa-star"></i>
        </div>
        <div class="divider-custom-line"></div>
      </div>

      <!-- Contact Section Form -->
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
          <form method="post" action="${pageContext.request.contextPath}/mypage" id="contactForm" novalidate="novalidate">
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>ID</label>
                <input class="form-control" name="user_id" id="user_id" type="text" value="${loginVO.user_id}" placeholder="ID" required="required" data-validation-required-message="Please enter your id." readonly>
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Email Address</label>
                <input class="form-control" name="email" id="email" type="email" value="${loginVO.email}" placeholder="Email Address" required="required" data-validation-required-message="Please enter your email address.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>Password</label>
                <input class="form-control" name="password" id="password" type="tel" value="${loginVO.password}" placeholder="Password" required="required" data-validation-required-message="Please enter your password.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            <br>
            <div id="success"></div>
            <div class="form-group">
              <button type="submit" class="btn btn-primary btn-xl" id="sendMessageButton">Edit</button>
            </div>
          </form>
        </div>
      </div>

    </div>
  </div>

  <!-- Bootstrap core JavaScript -->
  <script src="../../../resources/mypageTemplate/vendor/jquery/jquery.min.js"></script>
  <script src="../../../resources/mypageTemplate/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="../../../resources/mypageTemplate/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Contact Form JavaScript -->
  <script src="../../../resources/mypageTemplate/js/jqBootstrapValidation.js"></script>
  <script src="../../../resources/mypageTemplate/js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="../../../resources/mypageTemplate/js/freelancer.min.js"></script>

</body>
<jsp:include page="../include/footer.jsp"/>
</html>
