
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>

<body>
  <jsp:include page="include/header.jsp"/>
  <h1 class="site-heading text-center text-white d-none d-lg-block">
    <span class="site-heading-upper text-primary mb-3">The vegan web community</span>
    <span class="site-heading-lower">Begin-Vegan</span>
  </h1>
  <section class="page-section clearfix">
    <div class="container">
      <div class="intro">
        <img class="intro-img img-fluid mb-3 mb-lg-0 rounded" src="../../resources/img/intro.png" style="max-width: 80%; height: auto;" alt="IAmVegan">
        <div class="intro-text left-0 text-center bg-faded p-5 rounded">
          <h2 class="section-heading mb-4">
            <span class="section-heading-upper">"왜 비건이 된 거에요?</span>
            <span class="section-heading-lower"> "왜 채식하세요?"</span>
          </h2>
            <p class="mb-3">대부분의 비건인 사람들은 비건으로 태어나지 않았고, 어렸을 때부터 비건으로 자라지 않았고, 근 몇 년 전까지 육식을 했다. 나도 마찬가지다.
              어디서부터 무엇이 잘못된 지 몰랐고, 의문을 가지지도 않은 채 그냥 어렸을 때부터 그래 왔듯이,
              주변에 다른 사람들이 다 그러니까 나도 그냥 그렇게 살아왔다.
              고기를, 유제품을, 해산물을, 달걀을 먹었고, 선택했고, 소비했다.
          </p>
            <pre align="right"> - by meejisux (Brunch 글)</pre>
          <div class="intro-button mx-auto">
            <a class="btn btn-primary btn-xl" href="#">Visit Us Today!</a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="page-section cta">
    <div class="container">
      <div class="row">
        <div class="col-xl-9 mx-auto">
          <div class="cta-inner text-center rounded">
            <h2 class="section-heading mb-4">
              <span class="section-heading-upper">Our Promise</span>
              <span class="section-heading-lower">To You</span>
            </h2>
            <p class="mb-0">When you walk into our shop to start your day, we are dedicated to providing you with friendly service, a welcoming atmosphere, and above all else, excellent products made with the highest quality ingredients. If you are not satisfied, please let us know and we will do whatever we can to make things right!</p>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>

<jsp:include page="include/footer.jsp"/>

</html>
