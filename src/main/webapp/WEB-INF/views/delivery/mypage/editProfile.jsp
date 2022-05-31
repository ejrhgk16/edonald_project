<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!-- Spring Security Login Session 처리 -->
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이도날드</title>
<link rel="icon" href="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/favicon.ico">
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/local.css">
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="/resources/js/main.js"></script>
<script>
$(document).ready(function(){
	
	var gender = $('#hGender').text();
	if(gender == '2'){
		$('.iradio').eq(0).attr("class","iradio");
		$('.iradio').eq(1).attr("class","iradio checked");
	}
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
	
	// 탈퇴
	$('#deleteaccount').on('click',function(){
		
		var check = confirm("회원 탈퇴 하시겠습니까?");
		console.log(check);
		if (check){
			console.log('1');
			var user_email = "${principal.memberDto.user_email}";
			console.log('2');
			var user_password = $('#checkpassword').val();
			console.log(user_email + "," + user_password);
			$.ajax({
				type: 'POST',
				url: "/member/withdrawal.do",
				data: {
					user_email: user_email,
					user_password:user_password,
				},
				success:function(res){
					alert("탈퇴 되었습니다.");
					$(location).attr("href","/ed/logout.do");
				},
				error:function(res){
					alert(res.responseText);
				}
			})
		}
	})
	// 수정
	$('#changeaccout').on('click',function(){
		var name = $('#form_accountsetting_firstname').val();
		var gender = $('.iradio.checked').children('input').val();
		var phone = $('#form_accountsetting_contactno').val();
		var url = "/member/changedAccount.do";
		var user_password = $('#checkpassword').val();
		
		$.ajax({
			type : "POST",
			url : url,
			data : {
				user_name : name,
				user_gender : gender,
				user_phone : phone,
				user_password : user_password
			},
			success : function(res){
				if(res == "/ed/deliverHome"){
					location.href = res;
				}else{
					alert("잘못된 입력입니다.");
				}
			},
			error : function(){
				alert("error");
			}
		})
	})
	
})
</script>
</head>
<body>
<div class="root">
	
	<div class="wrap container">
		<div class="global-header">

				<div class="header-actions row">
					<div class="language-selector">
					</div>
					<div class="my-account-quicklinks">
						<ul class="list-inline list-inline-divide">

							<c:choose>
								<c:when test="${empty principal.username }">
									<li class="list-item"><img
										src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/icon_profile_gray.png"
										alt="Profile" width="20" class="profile-grey-avator"></li>

									<li class="list-item" id="loginText"><a
										href="/ed/deliverHome">로그인</a></li>
								</c:when>
								<c:otherwise>
									<li class="list-item"><img
										src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/icon_profile_gray.png"
										alt="Profile" width="20" class="profile-grey-avator"> <b><span
											class="first-name">${principal.memberDto.user_name}</span></b></li>
									<li class="list-item"><a href="/ed/logout.do">로그아웃</a></li>
								</c:otherwise>
							</c:choose>

							<li class="list-item"><a
								class="list-item-target track-order-flag" href="#signin"
								data-toggle="modal" data-target="#signin">주문 조회</a></li>

						</ul>
					</div>
				</div>
				<div class="global-navbar navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<a class="navbar-brand wos-brand" href="/kr/home.html"> <img
							src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/mcdelivery_logo_ko.jpg"
							alt="McDelivery&amp;trade;">

						</a>
					</div>
					<div class="main-navigation clearfix">
						<ul class="nav navbar-nav">

							<li class="menu-item menu-item-menu"><a
								class="menu-item-target" href="/ed/menuPage"> 메뉴
							</a></li>


							<li class="menu-item menu-item-account dropdown selected"><a
								class="menu-item-target dropdown-toggle" href="#signin"
								data-toggle="modal" data-target="#signin">마이 페이지
							</a></li>

							<li class="menu-item menu-item-support dropdown "><a
								class="menu-item-target dropdown-toggle" href="#"
								data-toggle="dropdown" aria-expanded="false">  기타정보<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="/ed/ect/useInfo" target="_self">이용약관</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="/ed/ect/userInfo" target="_self">개인정보
											처리방침</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="/ed/ect/question" target="_self">자주
											묻는 질문</a></li>
								</ul></li>

						</ul>
					</div>
				</div>



			</div>
			<div class="main" role="main">
				<div class="row row-narrow">
										<div class="page-sidebar">
						<div class="sidebar-menu">
							<h2 class="menu-category">마이 페이지</h2>
							<ul class="menu">
								<li class="menu-item"><a class="menu-item-target"
									href="/member/mypage/trackOrder">주문 조회</a></li>

								<li class="menu-item"><a class="menu-item-target"
									href="/member/mypage/addressBook">주소록</a></li>

								<li class="menu-item selected"><a class="menu-item-target"
									href="/member/changeAccount">계정 설정</a></li>
								<li class="menu-item "><a class="menu-item-target"
									href="/member/changePassword">비밀번호 변경</a></li>

							</ul>
						</div>
					</div>
					
					<div class="col-xs-10">
		<div class="page-title">
			<h1>계정 설정</h1>
			
		</div>

		<div class="page-content">
			<div class="panel-lg panel panel-default">
				<div class="panel-heading">
					<h3>회원정보 수정</h3>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-xs-12">
							<form action="" method="post" role="form" data-form-sync="#form_consentnewnumber" class="form form-register" id="form_accountsetting" name="form_accountsetting" autocomplete="off" data-required-symbol="*" novalidate="novalidate">
								<div class="form-register error-container">
									<p>표시된 필수 항목을 입력해 주세요.</p>
								</div>
								
								<fieldset class="fieldset">
									<div class="fieldset-heading">
									<h2 class="fieldset-title">회원 정보</h2>
										<p class="instructions">* 필수 항목</p>
									</div>
										
											<div class="row">
												<div class="col-xs-12">
													 <div class="form-group">
														 <label class="field-label" for="form_accountsetting_firstname"><span class="required-symbol">*</span>성함:</label>
														 
															 
															 
															 
																 <input type="text" class="form-control input-lg required no-special-characters" id="form_accountsetting_firstname" name="firstName" value="${principal.memberDto.user_name}" aria-required="true">
															 
														 
														 
													</div> 
												</div>
											</div>
										
									
									
										
							
										
											<div class="row">
										<div class="col-xs-6">
											<div class="form-group">
												<label class="field-label" for="form_register_gender">성별:</label>

												<fieldset class="fieldset">
													<div class="form-group">
														<div class="radio">
															<div class="iradio checked" style="position: relative;">
																<input type="radio" name="preferredNotification"
																	value="1" id="checkman"
																	style="position: absolute; opacity: 0;">
																<ins class="iCheck-helper"
																	style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
															</div>
															<label for="form_notification_channel_email"
																class="radio-label">남 <span
																id="man"></span></label>
														</div>
														<div class="radio">
															<div class="iradio" style="position: relative;">
															<input type="radio" name="preferredNotification"
																		value="2" id="checkwoman"
																	style="position: absolute; opacity: 0;">
																<ins class="iCheck-helper"
																	style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
															</div>
															<label for="form_notification_channel_mobile"
																class="radio-label">여<span
																id="woman"></span></label>
														</div>
													</div>
												</fieldset>

											</div>
										</div>
									</div>
										
									
									
										
							
										
											<div class="row">
												<div class="col-xs-12">
													 <div class="form-group">
														 <label class="field-label" for="form_accountsetting_contactno"><span class="required-symbol">*</span>휴대전화 번호:</label>
																 <input type="text" class="form-control input-lg required number digit-only" maxlength="11" id="form_accountsetting_contactno" name="contactNo" placeholder="숫자만 입력" value="${principal.memberDto.user_phone}" aria-required="true">
													</div> 
												</div>
											</div>
											<c:if test="${principal.memberDto.oauth == 'edonald'}">
											<div class="row">
												<div class="col-xs-12">
													 <div class="form-group">
														 <label class="field-label" for="form_accountsetting_contactno"><span class="required-symbol">*</span>비밀번호 확인:</label>
																 <input type="password" class="form-control input-lg required number digit-only" maxlength="11" id="checkpassword" name="contactNo" placeholder="숫자만 입력" aria-required="true">
													</div> 
												</div>
											</div>
											</c:if>
									
								</fieldset>
								
								
								<fieldset class="fieldset">
									<div>
										<button type="button" id="changeaccout" class="btn btn-red btn-xl">수정사항 저장</button>
										<button type="button" id="deleteaccount" class="btn btn-red btn-xl">회원 탈퇴</button>
									</div>
								</fieldset>
							<input type="hidden" name="csrfValue" value="31f3648ed912ae77500a4df46a38a325">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
					
				</div>
			</div>
		</div>
	<div class="global-footer">
			<div class="footer-disclaimer">
				<div class="container">
					<div class="text-center">한국맥도날드(유) | 대표자: 앤토니 마티네즈 | 서울특별시 종로구 종로 51 종로타워 14층 | 전화번호: 1600-5252 | 사업자등록번호: 101-81-26409 | 호스팅서비스 제공자: 아마존 웹 서비스	<br><br>공정위 사업자 링크 정보: <a href="https://www.ftc.go.kr/bizCommPop.do?wrkr_no=1018126409" target="_blank">한국맥도날드(유)</a></div>
					<div class="text-center text-ucase">Copyright © 2014 All Rights Reserved By McDonald's™</div>
					<div class="text-center text-ucase">골든 아치 로고와 "i'm lovin' it"은 맥도날드 고유의 상표입니다.</div>

					
				</div>
			</div>
			
		<div style="display:none">
			Store Number:1140535<br>:NpVersion: 6.1<br>Store Status:<br>1
		</div>
	
		</div>
	
</div>








	

<div id="hGender" hidden>${principal.memberDto.user_gender}</div>

</body>
</html>