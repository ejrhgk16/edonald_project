$(document).ready(function() {
	$("#submit_button").on("click", function(e) {
		e.preventDefault();
		addr();
	});
	$("#register_button").on("click", function(e) {
		e.preventDefault();
		var roadAddr = "<c:out value='${session.addrDto.roadAddr}'/>";
		alert("${addrDto.roadAddr}");
		console.log("asdfasdf"+roadAddr);
	});
})




function addr() {
	var postcode = $("#postcode").val();
	var roadAddr = $("#roadAddress").val();
	var jibunAddr = $("#jibunAddress").val();
	var detailAddr = $("#detailAddress").val();
	var extraAddr = $("#extraAddress").val();
	console.log("지번"+ jibunAddr)

	var geocoder = new kakao.maps.services.Geocoder();
	geocoder.addressSearch(roadAddr, function(result, status) {
		if (status === kakao.maps.services.Status.OK) {
			roadAddr += extraAddr;
			var data = {
				postcode: postcode,
				roadAddress: roadAddr,
				jibunAddress: jibunAddr,
				detailAddress: detailAddr,
				lon: result[0].x,
				lat: result[0].y
			};
			$.ajax({
				type: "POST",
				url: "/ed/joinUserPage",
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				success : function(res){
					
					location.href=res;
				}
			})
		}
	})

}



