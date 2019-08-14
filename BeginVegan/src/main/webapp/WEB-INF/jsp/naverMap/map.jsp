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
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=xgttmuj4hc&submodules=geocoder"></script>
    <script type="text/JavaScript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
<div id="map" style="width:50%;height:500px;margin:auto;"></div>
<script>

    var map = new naver.maps.Map('map', {
        center: new naver.maps.Point(304359, 550480),
        zoom: 10,
        mapTypes: new naver.maps.MapTypeRegistry({
            'normal': naver.maps.NaverMapTypeOption.getNormalMap({
                projection: naver.maps.TM128Coord
            }),
            'terrain': naver.maps.NaverMapTypeOption.getTerrainMap({
                projection: naver.maps.TM128Coord
            }),
            'satellite': naver.maps.NaverMapTypeOption.getSatelliteMap({
                projection: naver.maps.TM128Coord
            }),
            'hybrid': naver.maps.NaverMapTypeOption.getHybridMap({
                projection: naver.maps.TM128Coord
            })
        }),
        mapTypeControl: true
    });

    var infowindow = new naver.maps.InfoWindow();

    function onSuccessGeolocation(position) {
        var location = new naver.maps.LatLng(position.coords.latitude,
            position.coords.longitude);

        var utmk = naver.maps.TransCoord.fromLatLngToUTMK(location);
        var tm128 = naver.maps.TransCoord.fromUTMKToTM128(utmk);

        map.setCenter(tm128); // 얻은 좌표를 지도의 중심으로 설정합니다.
        infowindow.setContent('<div style="padding:20px;">' +
            "현재위치 " + tm128 + '</div>'); // 현재위치 나타내기
        infowindow.open(map, tm128);
    }
    function onErrorGeolocation() {
        var center = map.getCenter();
        infowindow.setContent('<div style="padding:20px;">' +
            '<h5 style="margin-bottom:5px;color:#f00;">Geolocation failed!</h5>' + "latitude: " + center.lat() + "<br />longitude: " + center.lng() + '</div>');
        infowindow.open(map, center);
    }

    $(window).on("load", function () {
        if (navigator.geolocation) {

            navigator.geolocation.getCurrentPosition(onSuccessGeolocation, onErrorGeolocation);
        } else {
            var center = map.getCenter();
            infowindow.setContent('<div style="padding:20px;"><h5 style="margin-bottom:5px;color:#f00;">Geolocation not supported</h5></div>');
            infowindow.open(map, center);
        }
    });

    //////////////////Marker 해보기
    var markerArray = new Array();

    //지도에 표시하기
    makeMarker(map, new naver.maps.Point(315156,544597), 0); // 야미요밀
    makeMarker(map, new naver.maps.Point(315156,542997), 0); // 야미요밀
    makeMarker(map, new naver.maps.Point(313556,542997), 0); // 야미요밀


    function makeMarker(map, position, index) {
        var marker = new naver.maps.Marker({
            map: map,
            position: position,
        });
        return marker;

    }

    naver.maps.Event.addListener(marker, "click", function(e) {
        alert("hello");
    });



</script>
</body>
</html>
<jsp:include page="../include/footer.jsp"/>