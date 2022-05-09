/**
 * 
 */

$(document).ready(function() {
	$(document).on('change', '.status_selecter', function() {
		var code = $(this).parent().parent().children('.list_code').text();
		var status = $(this).val();
		var url = $('#menuType').text();
		url += "/updateStatus.do";
		$.ajax({
			url: url,
			type: 'post',
			data: {
				burger_code: code,
				burger_status: status
			},
			success: function(data) {

			},
			error: function() {
				alert("error");
			}
		});
	});
	
	$('.btnRegister').on('click',function(){	
		var url = "/hadmin/register/"+$('#menuType').text();
		window.open(url, "a", "width=600, height=800, left=100, top=50, location=no");
	})
	
	$(document).on('click','.btnModify',function(){	
		var code = $(this).parent().parent().children('.list_seq').text();
		var url = "/hadmin/register/"+$('#menuType').text()+"?b_seq="+code;
		window.open(url, "a", "width=600, height=800, left=100, top=50, location=no");
	})

});