<%@ page session="false" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=83bfuniegk&submodules=geocoder"></script>
</head>

<body>
<header>
<jsp:include page="../include/header.jsp"/>
</header>
<section>
<div id="map" style="width:50%;height:500px;margin:auto;"></div>
</section>
<footer>
<jsp:include page="../include/footer.jsp"/>
</footer>
<script>

    // 현재위치 만들어주기
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
        infowindow.setContent('<div style="padding:20px;">' + "가고싶은곳 클릭" +'</div>'); // 현재위치 나타내기
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

    // 마커들을 배열로 만들어주기위해 선언해 주는것들
    var markers = [], infoWindows = [];

<c:forEach items="${diningList}" var="dining">

        var marker = new naver.maps.Marker({
            map: map,
            title : '${dining.title}',
            position: new naver.maps.Point(${dining.mapx}, ${dining.mapy}),
            icon: {
                url: ' ',
                size: new naver.maps.Size(24, 24),   //  size 속성은 이미지의 크기, origin 속성은 (0, 0), anchor 속성은 이미지의 중앙 하단 포인터를 기본값으로 설정합니다
                origin: new naver.maps.Point(0, 0),
                anchor: new naver.maps.Point(12, 24)
        }
        });

    var infoWindow = new naver.maps.InfoWindow({
        content: '<div style="width:115px;text-align:center;padding:10px;"><strong>'+
                 '<a href="${pageContext.request.contextPath}/dining/${dining.id}">${dining.title}</a>' + '</strong></div>'
    });

    markers.push(marker);
    infoWindows.push(infoWindow);

</c:forEach>

    // 해당 마커의 인덱스를 seq라는 클로저 변수로 저장하는 이벤트 핸들러를 반환합니다.
    function getClickHandler(map,markers,i동,seq) {
        return function(e) {
            var marker = markers[seq],
                infoWindow = infoWindows[seq];

            if (infoWindow.getMap()) {
                infoWindow.close();
            } else {
                infoWindow.open(map, marker);
            }
        }
    }

    for (var i=0, ii = markers.length; i < ii; i++) {
        naver.maps.Event.addListener(markers[i], 'click', getClickHandler(map, markers, infoWindows, i));
    }



</script>


</body>

</html>

