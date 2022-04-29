/**
 * 
 */

$(document).ready(function() {




	$('#btnMore').on('click', function() {

	})


})

function moreBoard() {
	$.ajax({ 
		type: "GET",
		url: "", 
		dataType: "text", 
		error: function() { alert('통신실패!!'); }, 
		success: function(data) { 
			alert("통신데이터 값 : " + data); 
			$("#dataArea").html(data); 
		} 
	});


}