<%@ page session="false" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<jsp:include page="../include/header.jsp"/>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>간단한 지도 표시하기</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=7x83j87rq1"></script>
    <script type="text/JavaScript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
<div id="map" style="width:50%;height:500px;margin:auto;"></div>
<script>
    var map = new naver.maps.Map('map', {
        center: new naver.maps.LatLng(37.5666805, 126.9784147),
        zoom: 5,
        mapTypeId: naver.maps.MapTypeId.NORMAL
    });

    var infowindow = new naver.maps.InfoWindow();

    function onSuccessGeolocation(position) {
        var location = new naver.maps.LatLng(position.coords.latitude,
            position.coords.longitude);

        map.setCenter(location); // 얻은 좌표를 지도의 중심으로 설정합니다.
        map.setZoom(10); // 지도의 줌 레벨을 변경합니다.

        //infowindow.setContent('<div style="padding:20px;">' + '현재위치' + '</div>'); // 현재위치 나타내기

        //infowindow.open(map, location);
        console.log('Coordinates: ' + location.toString());
    }

    function onErrorGeolocation() {
        var center = map.getCenter();

        infowindow.setContent('<div style="padding:20px;">' +
            '<h5 style="margin-bottom:5px;color:#f00;">Geolocation failed!</h5>' + "latitude: " + center.lat() + "<br />longitude: " + center.lng() + '</div>');

        infowindow.open(map, center);
    }

    $(window).on("load", function () {
        if (navigator.geolocation) {
            /**
             * navigator.geolocation 은 Chrome 50 버젼 이후로 HTTP 환경에서 사용이 Deprecate 되어 HTTPS 환경에서만 사용 가능 합니다.
             * http://localhost 에서는 사용이 가능하며, 테스트 목적으로, Chrome 의 바로가기를 만들어서 아래와 같이 설정하면 접속은 가능합니다.
             * chrome.exe --unsafely-treat-insecure-origin-as-secure="http://example.com"
             */
            navigator.geolocation.getCurrentPosition(onSuccessGeolocation, onErrorGeolocation);
        } else {
            var center = map.getCenter();
            infowindow.setContent('<div style="padding:20px;"><h5 style="margin-bottom:5px;color:#f00;">Geolocation not supported</h5></div>');
            infowindow.open(map, center);
        }
    });
</script>
<!--
<script>
    var mapOptions = {
        center: new naver.maps.LatLng(37.3595704, 127.105399),
        zoom: 10
    };

    var map = new naver.maps.Map('map', mapOptions);
</script>-->
</body>
</html>
<jsp:include page="../include/footer.jsp"/>