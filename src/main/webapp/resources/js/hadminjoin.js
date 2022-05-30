/**
 * 
 */

$(document).ready(function(){
	var status = 0;
	
	if($('#user_email_check').text() != ""){
		$('.haeder-text').text("유저 정보 수정");
		$('#submitBtn').text("수정");
		$('#submitBtn').attr("id","updateBtn");
		$('#inputId').attr("disabled",true);
	}else{
		$('#passwordBtn').attr('style','display:none;');
		$('.passwordDiv').removeAttr('style');	
		$('.storecode').removeAttr('style');
	}
	
	$('#passwordBtn').on('click',function(){
		if(status == 0){
			$('.passwordDiv').removeAttr('style');	
			status = 1;
		}else{
			$('.passwordDiv').attr('style','display:none;');
			status = 0;
		}
		
		
	})
	
	$(document).on('click','#updateBtn',function(){
		updateUserInfo(status);
	})
	
	$(document).on('click','#submitBtn',function(){
		joinUserInfo();
	})
})

function joinUserInfo(){
	var user_name = $('#inputName').val();
	var user_password = $('#inputPassword').val();
	var user_passwordCheck = $('#inputPasswordCheck').val();
	var user_email = $('#inputId').val();
	var user_gender = $('#inputGender').val();
	var user_phone = $('#inputPhone').val();
	var store_code = $('#storeCode').val();

	var emailVaild = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
	var phoneVaild = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}/;
	var phoneVaild2 = /^[0-9]{2,3}[0-9]{3,4}[0-9]{4}/;
	

	if (user_name == "") {
		alert("이름을 입력하세요.");
		$("#inputName").focus();
		return false;
	}
	if (user_password == "") {
		alert("비밀번호를 입력하세요.");
		$("#inputPassword").focus();
		return false;
	}
	if (user_password != user_passwordCheck){
		alert("비밀번호를 확인해주세요.");
		$('#inputPassword').focuse();
	}
	if (user_email == "") {
		alert("이메일을 입력하세요.");
		$("#inputId").focus();
		return false;
	}
//	if(emailVaild.test(user_email)==false){
//		alert("이메일형식이 올바르지 않습니다.");
//		$("#inputId").focus();
//		return false;
//	}
	if (user_gender == "") {
		alert("성별을 입력하세요.");
		$("#inputGender").focus();
		return false;
	}
	if (user_phone == "") {
		alert("전화번호를 입력하세요.");
		$("#inputPhone").focus();
		return false;
	}
	if (phoneVaild2.test(user_phone)==false){
		if (phoneVaild.test(user_phone)==false){
			alert("전화번호를 확인하세요.");
			$('#inputPhone');
			return false;
		}
		user_phone = user_phone.replace('-','');
		user_phone = user_phone.replace('-','');
	}	
	if (store_code == "") {
		alert("매장번호를 입력하세요.");
		$("#storeCode").focus();
		return false;
	}
	
	var url = "/hadmin/createSadmin.do";
	$.ajax({
		type : "POST",
		url : url,
		dataType : 'json',
		data : {
			user_email: user_email,
			user_password: user_password,
			user_name: user_name,
			user_gender: user_gender,
			user_phone: user_phone,
			store_code: store_code
		},
		success : function(res){
			opener.location.reload();
			window.open("about:blank","_self").close();
		},
		error : function(){
			alert("잘못된 입력입니다.");
		}
	})
}
function updateUserInfo(status){
	var user_name = $('#inputName').val();
	
	var user_email = $('#inputId').val();
	var user_gender = $('#inputGender').val();
	var user_phone = $('#inputPhone').val();
	var store_code = $('#storeCode').val();

	var phoneVaild = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}/;
	var phoneVaild2 = /^[0-9]{2,3}[0-9]{3,4}[0-9]{4}/;
	if(status == 1){
		var user_password = $('#inputPassword').val();
		var user_passwordCheck = $('#inputPasswordCheck').val();
		if (user_password == "") {
			alert("비밀번호를 입력하세요.");
			$("#inputPassword").focus();
			return false;
		}
		if (user_password != user_passwordCheck){
			alert("비밀번호를 확인해주세요.");
			$('#inputPassword').focuse();
		}
	}

	if (user_name == "") {
		alert("이름을 입력하세요.");
		$("#inputName").focus();
		return false;
	}
	if (user_gender == "") {
		alert("성별을 입력하세요.");
		$("#inputGender").focus();
		return false;
	}
	if (user_phone == "") {
		alert("전화번호를 입력하세요.");
		$("#inputPhone").focus();
		return false;
	}
	if (phoneVaild2.test(user_phone)==false){
		if (phoneVaild.test(user_phone)==false){
			alert("전화번호를 확인하세요.");
			$('#inputPhone');
			return false;
		}
		user_phone = user_phone.replace('-','');
		user_phone = user_phone.replace('-','');
	}	
	var data = new FormData();
	data.append('user_email',user_email);
	data.append('user_name',user_name);
	data.append('user_gender',user_gender);
	data.append('user_phone',user_phone);
	
	var json = {
		user_email:user_email,
		user_name:user_name,
		user_gender:user_gender,
		user_phone:user_phone
	}
	if(status == 1){
		data.append('user_password',user_password);
		json.user_password = user_password;
	}
	if($('#user_email_check').text() != ""){
		data.append('store_code',store_code);
		json.store_code = store_code;
	}
	
	
	var url = "/hadmin/modifyMember.do";
	$.ajax({
		type : "POST",
		url : url,
		data : json,
		success : function(){
			opener.location.reload();
			window.open("about:blank","_self").close();
		},
		error : function(request,status,error){
			alert("잘못된 입력입니다.!");
		}
	})
}
	