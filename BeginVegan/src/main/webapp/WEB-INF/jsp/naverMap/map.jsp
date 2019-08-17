<%@ page session="false"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" contentType="text/html; charset=UTF-8"
         trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=mn7cwsrvym&submodules=geocoder"></script>
</head>
<body>
<div id="mapContainer3_7" style="HEIGHT: 360px; WIDTH: 550px"></div>
<script type="text/javascript">
    /*지도 개체 생성 */
    var mapOptions = {
        center: new naver.maps.Point(516728, 359919),
        zoom: 10,
        mapTypes: new naver.maps.MapTypeRegistry({
            'normal': naver.maps.NaverMapTypeOption.getNormalMap({  // NAVER 일반 지도 유형
                projection: naver.maps.TM128Coord     //  지도 유형의 투영입니다. TM128 투영법
            }),
            'terrain': naver.maps.NaverMapTypeOption.getTerrainMap({  // NAVER 지형도 유형
                projection: naver.maps.TM128Coord
            }),
            'satellite': naver.maps.NaverMapTypeOption.getSatelliteMap({ // NAVER 위성 지도 유형
                projection: naver.maps.TM128Coord
            }),
            'hybrid': naver.maps.NaverMapTypeOption.getHybridMap({ // NAVER 위성 겹쳐 보기 지도 유형
                projection: naver.maps.TM128Coord
            })
        })
    };
        //tmt
    var Vmap = new naver.maps.Map('mapContainer3_7', mapOptions);  // 지도 생성..


    var xCoordArr = [304359,304838,314519,500789,304440,310382];
    var yCoordArr = [550480,549849,539808,288627,549896,552889];
    var titleArr  = ["야미요밀", "슬런치", "러빙헛", "피자헛", "쿡앤북", "발우공양"];

    var Vmarkers = [], VinfoWindows = [];
    for(var i = 0; i < xCoordArr.length; i++){
        var iconNum = i + 1;

        var marker = new naver.maps.Marker({
            map: Vmap,
            title : titleArr[i],
            position: new naver.maps.Point(xCoordArr[i], yCoordArr[i]),
            icon: {
                url: 'asdf',
                size: new naver.maps.Size(24, 24),   //  size 속성은 이미지의 크기, origin 속성은 (0, 0), anchor 속성은 이미지의 중앙 하단 포인터를 기본값으로 설정합니다
                origin: new naver.maps.Point(0, 0),
                anchor: new naver.maps.Point(12, 24)
            }
        });

        var infoWindow = new naver.maps.InfoWindow({
            content: '<div style="width:115px;text-align:center;padding:10px;"><strong>'+ titleArr[i] +'</strong></div>'
        });

        Vmarkers.push(marker);
        VinfoWindows.push(infoWindow);
    }

    // 해당 마커의 인덱스를 seq라는 클로저 변수로 저장하는 이벤트 핸들러를 반환합니다.
    function getClickHandler(map,markers,infoWindows,seq) {
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

    for (var i=0, ii = Vmarkers.length; i < ii; i++) {
        naver.maps.Event.addListener(Vmarkers[i], 'click', getClickHandler(Vmap,Vmarkers,VinfoWindows,i));
    }
</script>
</body>
</html>