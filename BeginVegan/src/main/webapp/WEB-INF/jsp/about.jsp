<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}../resources/css/business-casual.css">
<link rel="stylesheet" href="//cdn.rawgit.com/young-ha/webfont-archive/master/css/NanumSquare.css">


<body>
<jsp:include page="include/header.jsp"/>
<div style="background-color: white; width: 60%; position:relative; left: 20%">
  <section class="page-section">
    <div class="container">
      <div class="product-item">
        <div class="product-item-title d-flex">
          <div class="bg-faded p-5 d-flex ml-auto rounded" style="margin-top: 3em; background-color: rgba(206,255,153,0.25);">
            <h2 class="section-heading mb-0">
              <span class="section-heading-upper your-style"><font size="5px;">동물과 건강,
                환경을 생각하는</font></span>
              <span class="section-heading-lower" style="text-align: center;">'Vegan'</span>
            </h2>
          </div>
        </div>
        <img class="product-item-img mx-auto d-flex rounded img-fluid mb-3 mb-lg-0" src="resources/img/about-01.jpg" alt="" style="box-shadow: 8px 3px 8px rgba(18,18,18,0.63);">
        <div class="product-item-description d-flex mr-auto">
          <div class="p-5 rounded">
            <p class="mb-0 your-style"><font color="darkgreen" size="6px;"><strong>비건(vegan)</strong></font>은 육지 동물이나 물고기, 가금류, 어패류 등 살아 움직이는 동물은 물론 유제품, 계란, 꿀, 가죽제품, 양모, 오리털, 동물 화학실험 하는 모든 제품도 피하는 적극적인 개념의 채식주의입니다. 따라서 아주 적은 양이라도 동물에서 추출되었거나 동물의 성분이 섞인 음식이나 생활용품 역시 쓰지 않아야 합니다. 당연히 동물성 재료에서 추출된 성분이 함유된 제품은 비건 제품이 아닙니다.</p>
            <p class="mb-0 your-style">비건은 동물에 대한 착취 방식이 아니라 모든 형태의 착취 자체에 반대합니다. 비건 되기란 단순히 식생활 습관만을 바꾸는 문제가 아닙니다. 완전히 새로운 생활방식을 갖는 것을 뜻합니다.</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="page-section">
    <div class="container">
      <div class="product-item">
        <div class="product-item-title d-flex">
          <div class="bg-faded p-5 d-flex mr-auto rounded" style="margin-top: -5em; background-color: rgba(243,255,166,0.25);">
            <h2 class="section-heading mb-0">
              <span class="section-heading-upper your-style"><font size="5px;">올해의 트렌드</font></span>
              <span class="section-heading-lower">Vegetarian & Vegan</span>
            </h2>
          </div>
        </div>
        <img class="product-item-img mx-auto d-flex rounded img-fluid mb-3 mb-lg-0" src="resources/img/about-02.jpg" alt="" style="box-shadow: 8px 3px 8px rgba(18,18,18,0.63); margin-top: 2em;">
        <div class="product-item-description d-flex ml-auto">
          <div class="p-5 rounded your-style" style="margin-right: 20px; ">
            <p class="mb-0">“과거엔 중장년층이 건강과 체질적 이유로 관심을 가졌다면, 지금은 20~30대 세대가 환경, 동물보호와 같은 윤리적 측면에서 채식을 하고 있다” </p>
            <p class="mb-0">바야흐로 <strong>‘비건(Veganㆍ완전 채식)의 시대’</strong>입니다. 전 세계 채식 인구가 늘고 있는 지금 ‘비건’은 올해의 강력한 키워드이자, ‘핫’한 소비 트렌드로 떠올랐습니다. 영국 시사주간지 이코노미스트는 최근 발간한 ‘세계경제대전망 2019’(The World in 2019)에서 올해는 ‘비건의 해’가 될 것으로 전망했습니다.</p>
            <br>
            <p class="mb-0 hankc" align="center"><strong><font size="7px;">"비거니즘은 일시적 유행이 아닌 거부할 수 없는 세계적 흐름이다."</font></strong></p>
          </div>
        </div>
      </div>
    </div>
  </section>


</div>

</body>

<jsp:include page="include/footer.jsp"/>

</html>
