$(document).ready(function() {
	$("#submit_button").on("click", function(e) {
		e.preventDefault();
		addr();
		$("#form_deliveryaddress").attr("action", "/ed/joinUserPage")
		$("#form_deliveryaddress").submit();
	});
	$("#register_button").on("click", function(e) {
		e.preventDefault();
		var roadAddr = "${addrDto.roadAddr}";
		console.log(roadAddr);
	})
})

function addr() {
	var roadAddr = $("#roadAddress").val();
		var geocoder = new kakao.maps.services.Geocoder();
	geocoder.addressSearch(roadAddr, function(result, status) {
		if (status === kakao.maps.services.Status.OK) {
			roadAddr += extraAddr;
			$("#lon").attr("value", result[0].x)
			$("#lat").attr("value", result[0].y)
		}
	})
}

/*
function addr() {
	var postcode = $("#postcode").val();
	var roadAddr = $("#roadAddress").val();
	var jibunAddr = $("#jibunAddress").val();
	var detailAddr = $("#detailAddress").val();
	var extraAddr = $("#extraAddress").val();

	var geocoder = new kakao.maps.services.Geocoder();
	geocoder.addressSearch(roadAddr, function(result, status) {
		if (status === kakao.maps.services.Status.OK) {
			roadAddr += extraAddr;
			var data = {
				postcode: postcode,
				roadAddr: roadAddr,
				jibunAddr: jibunAddr,
				detailAddr: detailAddr,
				lon: result[0].x,
				lat: result[0].y
			};
			$.ajax({
				type: "POST",
				url: "/ed/registeraddr",
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8"
			})
		}
	})

}
*/


