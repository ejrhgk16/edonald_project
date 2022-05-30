/**
 * 
 */

$(document).ready(function() {
	var menuType = $('.menuType').text();
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
	// 작업 중 .. 지점장 메뉴 활성화 비활성화 ajax 이벤트
	$(document).on('change', '.status_selecter_store', function() {
		var seq = $(this).parent().parent().children('.list_seq').text();
		var status = $(this).val();
		var url ="/sadmin/blockMenu.do?seq="+seq;
		var type = "";
		if(status == 0){
			type = "GET";
		}else{
			type = "DELETE";
		}
		$.ajax({
			url: url,
			type: type,
			success: function(data) {
				
			},
			error: function() {
				alert("error");
			}
		});
	});

	
	$('.btnRegister').on('click',function(){	
		var url = "/hadmin/register/menu";
		window.open(url, "a", "width=600, height=800, left=100, top=50, location=no");
	})
	
	$(document).on('click','.each-menu',function(){
		var seq = $(this).parent().children('.list_seq').text();
		var url = "/hadmin/register/menu?seq="+seq;
		window.open(url, "a", "width=600, height=800, left=100, top=50, location=no");
	})
	
	$(document).on('click','.btnModify',function(){
		var seq = $(this).parent().parent().children('.list_seq').text();	
		var url = "/hadmin/updateSubstitue.do";
		var sub_to = $("#sub_to_"+seq).is(':checked');
		var sub_pl = $("#sub_pl_"+seq).is(':checked');
		var sub_ls = $("#sub_ls_"+seq).is(':checked');
		var sub_s = $("#sub_s_"+seq).is(':checked');
		var sub_em = $("#sub_em_"+seq).is(':checked');
		
//		var sub_to = $(this).parent().parent().children().children().children('.sub_to').is(':checked');
//		var sub_pl = $(this).parent().parent().children().children().children('.sub_pl').is(':checked');
//		var sub_ls = $(this).parent().parent().children().children().children('.sub_ls').is(':checked');
//		var sub_s = $(this).parent().parent().children().children().children('.sub_s').is(':checked');
//		var sub_em = $(this).parent().parent().children().children().children('.sub_em').is(':checked');

		if(sub_to){sub_to = 1;}else{sub_to = 0;}
		if(sub_pl){sub_pl = 1;}else{sub_pl = 0;}
		if(sub_ls){sub_ls = 1;}else{sub_ls = 0;}
		if(sub_s){sub_s = 1;}else{sub_s = 0;}
		if(sub_em){sub_em = 1;}else{sub_em = 0;}
		$.ajax({
			url: url,
			type: 'POST',
			data:{
				seq: seq,
				sub_to: sub_to,
				sub_pl: sub_pl,
				sub_ls: sub_ls,
				sub_s: sub_s,
				sub_em: sub_em
			},
			success: function(){},
			error: function(){alert("error");}
		});
		
	})
	
	
});