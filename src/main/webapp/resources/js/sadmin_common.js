/**
 * 
 */

$(document).ready(function() {
	$('.store_status').on('click',function(){
		var status;
		if($(this).text() == '정상 영업'){
			status = 1;
			$('#dropdownMenuButton1').text("정상 영업");
		}else{
			status = 0;
			$('#dropdownMenuButton1').text("영업 종료");
		}
		var url = "/sadmin/storeStatus.do?store_status="+status;
		$.ajax({
			url: url,
			type: 'GET',
			success: function(data){
				
			},
			error: function(){
				alert("error");
			}
		})
	})
})