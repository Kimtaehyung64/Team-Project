<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../commercial/header_index.jsp"%>

<body>
	<div id="map" style="width:1915px;height:790px;"></div>
	<script type="text/javascript"
				src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=wejnreaybi"></script>
	<div id="map">
	</div>
	<script>
	var seoul = new naver.maps.LatLngBounds(new naver.maps.LatLng(
			37.42829747263545, 126.76620435615891),
			new naver.maps.LatLng(37.7010174173061,
					127.18379493229875));
	var map = new naver.maps.Map(document.getElementById('map'), {
		minZoom : 11,
		zoom : 9.5,
		mapTypeId : 'normal',
		center : new naver.maps.LatLng(37.5998871, 126.989261),
		maxBounds : seoul,
		logoControl : false,
		baseTileOpacity : 0.5
	});
	</script>
</body>
<%@ include file="../include/footer.jsp"%> 