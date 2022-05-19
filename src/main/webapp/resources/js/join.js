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
		joinUserInfo();
	});
	
	
	
	//checkbox event (약관)
	$('.checkbox').not('#allChecked').on('click',function(){
		if($(this).children('div').attr("class") == "icheckbox"){
			$(this).children('div').attr("class","icheckbox checked");
		}else{
			$(this).children('div').attr("class","icheckbox");
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
			location.href = res;
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



