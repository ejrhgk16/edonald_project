/**
 * 
 */

$(document).ready(function() {
	var menuType = $('#menuType').text();
	if(menuType == 'burger'){
		menuType = "버거";
	}else if(menuType == 'side'){
		menuType = "사이드";
	}else if(menuType == 'drink'){
		menuType = "음료";
	}else if(menuType == 'dessert'){
		menuType = "디저트";
	}else if(menuType == 'happymeal'){
		menuType = "해피밀";
	}else if(menuType == 'emorning'){
		menuType = "이모닝";
	}else if(menuType == 'package'){
		menuType = "패키지";
	}else{
		menuType = " N U L L";
	}
	var menu = menuType+" 메뉴";
	$('.mt-4').text(menu);
	$('.breadcrumb-item.active').text(menu);
	$('.card-header').text("맥도날드 "+menu+"내역");
	
	$(document).on('change', '.status_selecter', function() {
		var seq = $(this).parent().parent().children('.list_seq').text();
		var status = $(this).val();
		var url ="/hadmin/updateStatus.do";
		$.ajax({
			url: url,
			type: 'post',
			data: {
				seq: seq,
				status: status
			},
			success: function(data) {

			},
			error: function() {
				alert(error);
			}
		});
	});
	
	$('.btnRegister').on('click',function(){	
		var url = "/hadmin/register/menu";
		window.open(url, "a", "width=600, height=800, left=100, top=50, location=no");
	})
	
	$(document).on('click','.btnModify',function(){	
		var seq = $(this).parent().parent().children('.list_seq').text();
		var url = "/hadmin/register/menu?seq="+seq;
		window.open(url, "a", "width=600, height=800, left=100, top=50, location=no");
	})

});