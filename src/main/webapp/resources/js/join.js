$(document).ready(function() {
	$("#submit_button").on("click", function(e) {
		e.preventDefault();
		addr();
	});

	//성별체크
	var $icheck = $(".iCheck-helper")
	$icheck.eq(0).on("click", function() {
		$(this).parent().attr("class", "iradio checked");
		$icheck.eq(1).parent().attr("class", "iradio");
	})
	$icheck.eq(1).on("click", function() {
		$(this).parent().attr("class", "iradio checked");
		$icheck.eq(0).parent().attr("class", "iradio");
	})
	//인증방법체크
	$icheck.eq(2).on("click", function() {
		$(this).parent().attr("class", "iradio checked");
		$icheck.eq(3).parent().attr("class", "iradio");
	})
	$icheck.eq(3).on("click", function() {
		$(this).parent().attr("class", "iradio checked");
		$icheck.eq(2).parent().attr("class", "iradio");
	})

	$("#form_register_gender-button").on("click", function() {
		if ($(".ui-selectmenu-menu").attr("class") == "ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown") {
			$(".ui-selectmenu-menu").attr("class", "ui-selectmenu ui-widget ui-state-default ui-selectmenu-dropdown ui-state-active ui-corner-top")
			$("#form_register_gender-menu").parent().attr("class", "ui-selectmenu-menu select-lg ui-selectmenu-open")
		} else {
			$(".ui-selectmenu-menu").attr("class", "ui-selectmenu ui-widget ui-state-default ui-selectmenu-dropdown ui-corner-all")
			$("#form_register_gender-menu").parent().attr("class", "ui-selectmenu-menu select-lg")

		}
	})


	$("#register_button").on("click", function(e) {
		e.preventDefault();
		
		var user_name = $('#form_register_firstname').val();
		var user_password = $('#form_register_password').val();
		var user_passwordCheck = $('#form_register_password_confirm').val();
		var user_email = $('#form_register_email').val();
		var user_emailCheck = $('#form_register_email_comfirm').val();
		var user_phone = $('#form_register_contactno').val();
	
		var tac1 = $("#form_register_agreetnc").parent('div').hasClass("checked");
		var tac2 = $("#form_register_reviewconsent_personaldata_one").parent('div').hasClass("checked");
		var tac3 = $("#form_register_reviewconsent_tranferpersonaldata_one").parent('div').hasClass("checked");
		var tac4 = $("#form_register_agreeage").parent('div').hasClass("checked");
		
		
	
		
		var emailVaild = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		var phoneVaild = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}/;
		var phoneVaild2 = /^[0-9]{2,3}[0-9]{3,4}[0-9]{4}/;
		
		if (user_name == "") {
			alert("이름을 입력하세요.");
			$("#form_register_firstname").focus();
			return false;
		}
		if (user_password == "") {
			alert("비밀번호를 입력하세요.");
			$("#form_register_password").focus();
			return false;
		}
		if (user_password != user_passwordCheck){
			alert("비밀번호를 확인해주세요.");
			$('#inputPassword').focuse();
		}
		if (user_email == "") {
			alert("이메일을 입력하세요.");
			$("#form_register_email").focus();
			return false;
		}
		if (user_email != user_emailCheck){
			alert("이메일을 확인해주세요.");
			$('#inputPassword').focuse();
		}
		if(emailVaild.test(user_email)==false){
			alert("이메일형식이 올바르지 않습니다.");
			$("#inputId").focus();
			return false;
		}
		if (user_phone == "") {
			alert("전화번호를 입력하세요.");
			$("#form_register_contactno").focus();
			return false;
		}
		if (phoneVaild2.test(user_phone)==false){
			if (phoneVaild.test(user_phone)==false){
				alert("전화번호를 확인하세요.");
				$('#form_register_contactno');
				return false;
			}
			user_phone = user_phone.replace('-','');
			user_phone = user_phone.replace('-','');
		}
		
		var pw = user_password;
		var num = pw.search(/[0-9]/g);
		var eng = pw.search(/[a-z]/ig);
		var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
		if(pw.length < 8 || pw.length > 20){
			alert("8자리 ~ 20자리 이내로 입력해주세요.");
			return false;
		}else if(pw.search(/\s/) != -1){
			alert("비밀번호는 공백 없이 입력해주세요.");
			return false;
		}else if(num < 0 || eng < 0 || spe < 0 ){
			alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
			return false;
		}

		if(!(tac1&&tac2&&tac3&&tac4)){
			alert("약관을 확인해주세요.");
			return false;
		}		
		
		joinUserInfo();
	});
	
	
	
	//checkbox event (약관)
	$('.checkbox').not('#allChecked').on('click',function(){
		if($(this).children('div').attr("class") == "icheckbox"){
			$(this).children('div').attr("class","icheckbox");
		}else{
			$(this).children('div').attr("class","icheckbox checked");
		}
		
	})
	
	$('#allChecked').on('click',function(){
		if($(this).children('div').attr("class") == "icheckbox"){
			$(this).children('div').attr("class","icheckbox checked");
			$('.icheckbox').each(function(){
				$(this).attr("class", "icheckbox checked");
			})
		}else{
			$(this).children('div').attr("class","icheckbox");
			$('.icheckbox').each(function(){
				$(this).attr("class", "icheckbox");
			})
		}
	})

})

function joinUserInfo() {
	var user_name = $("#form_register_firstname").val();
	var user_phone = $("#form_register_contactno").val();
	var user_email = $("#form_register_email").val();
	var email_check = $("#form_register_email_comfirm").val();
	if (user_email != email_check) { alert("이메일이 같지않습니다"); return; }
	var user_password = $("#form_register_password").val();
	var password_check = $("#form_register_password_confirm").val();
	console.log(user_password);
	console.log(password_check);
	if (user_password != password_check) { alert("비밀번호가 같지않습니다"); return; }
	var user_gender;
	if ($(".iradio").eq(0).attr("class") == "iradio checked") {
		user_gender = 1;
	} else {
		user_gender = 2;
	}
	
	var sms_agree;
	if($("#form_register_subscribe").parent().attr("class") == "icheckbox checked"){
		sms_agree = 1;
	}else{
		sms_agree = 0;
	}
	
	var terms_agree;
	if($("#form_register_reviewconsent_personaldata_two").parent().attr("class", "icheckbox checked")){
		terms_agree = 1;
	}else {terms_agree = 0;}
	

	var url;
	if ($(".iradio").eq(2).attr("class") == "iradio checked") {
		url = "/ed/certifyEmail";
	} else {
		url = "/ed/certifyPhone";
	}
	
	var data = {
		user_email : user_email,
		user_password : user_password,
		user_name : user_name,
		user_gender : user_gender,
		user_phone : user_phone,
		sms_agree : sms_agree,
		terms_agree : terms_agree
	}
	
	$.ajax({
		type : "POST",
		url : url,
		data : JSON.stringify(data),
		contentType: "application/json; charset=utf-8",
		success : function(res){
			location.href = "/ed/checkPhonePage";
		},
		error : function(res){
			alert(res.responseText);
		}
	})

}


function addr() {
	var postcode = $("#postcode").val();
	var roadAddr = $("#roadAddress").val();
	var jibunAddr = $("#jibunAddress").val();
	var detailAddr = $("#detailAddress").val();
	var extraAddr = $("#extraAddress").val();
	console.log("지번" + jibunAddr)

	var geocoder = new kakao.maps.services.Geocoder();
	geocoder.addressSearch(roadAddr, function(result, status) {
		if (status === kakao.maps.services.Status.OK) {
			roadAddr += extraAddr;
			var data = {
				postcode: postcode,
				road_address: roadAddr,
				jibun_address: jibunAddr,
				detail_address: detailAddr,
				lon: result[0].x,
				lat: result[0].y
			};
			$.ajax({
				type: "POST",
				url: "/ed/joinUserPage",
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				success: function(res) {
					location.href = res;
				}
			})
		}
	})

}

