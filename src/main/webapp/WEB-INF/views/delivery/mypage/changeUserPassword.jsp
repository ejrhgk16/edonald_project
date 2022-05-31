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
	$(document).ready(
			function() {
				$('#btn-submit').on(
						'click',
						function() {
							var url = "/member/changedPassword.do";
							var user_password = $(
									'#form_accountsetting_newpassword').val();
							var user_passwordcheck = $(
									'#form_accountsetting_reenterpassword')
									.val();
							var checkPassword = $(
									'#form_accountsetting_oldpassword').val();
							if (user_password != user_passwordcheck) {
								alert("새 비밀번호를 확인하세요.");
							} else {
								$.ajax({
									url : url,
									type : 'POST',
									data : {
										user_password : user_password,
										checkPassword : checkPassword
									},
									success : function(res) {
										if (res != "fail") {
											alert("비밀번호변경완료")
											location.href = res;
										}else{
											alert("비밀번호가 틀렸습니다")
										}
									},
									error : function() {
										alert("error");
									}
								})
							}
						})
			})
</script>
</head>
<body>
	<div class="root">
		<div class="wrap container">
			<div class="global-header">

				<div class="header-actions row">
					<div class="language-selector"></div>
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
								class="menu-item-target" href="/ed/menuPage"> 메뉴 </a></li>


							<li class="menu-item menu-item-account dropdown selected"><a
								class="menu-item-target dropdown-toggle" href="#signin"
								data-toggle="modal" data-target="#signin">마이 페이지 </a></li>

							<li class="menu-item menu-item-support dropdown "><a
								class="menu-item-target dropdown-toggle" href="#"
								data-toggle="dropdown" aria-expanded="false"> 기타정보<span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="/ed/ect/useInfo"
										target="_self">이용약관</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="/ed/ect/userInfo"
										target="_self">개인정보 처리방침</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="/ed/ect/question"
										target="_self">자주 묻는 질문</a></li>
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

								<li class="menu-item"><a class="menu-item-target"
									href="/member/changeAccount">계정 설정</a></li>
								<li class="menu-item selected"><a class="menu-item-target"
									href="/member/changePassword">비밀번호 변경</a></li>

							</ul>
						</div>
					</div>

					<div class="col-xs-10">
						<div class="page-title">
							<h1>비밀번호 변경</h1>
							<p>비밀번호를 변경하시려면 기존 비밀번호와 변경하실 새로운 비밀번호를 아래에 입력해 주시기 바랍니다.</p>
						</div>
						<div class="page-content">
							<div class="panel-lg panel panel-default">
								<div class="panel-body">
									<div class="row">
										<div class="col-xs-12">
											<form action="/kr/updateUserPassword.html" method="post"
												role="form" data-form-sync="#form_consentnewnumber"
												class="form form-register" id="form_accountsetting"
												name="form_accountsetting" data-required-symbol="*"
												autocomplete="off" novalidate="novalidate">
												<fieldset class="fieldset">
													<div class="form-group">

														<label class="field-label"
															for="form_accountsetting_oldpassword"><span
															class="required-symbol">*</span>기존 비밀번호</label> <input
															type="password" class="form-control input-lg"
															id="form_accountsetting_oldpassword" name="oldPassword"
															autocomplete="off" data-rule-required="true"
															maxlength="20" value="" aria-required="true">
													</div>
													<div class="form-group">

														<label class="field-label"
															for="form_accountsetting_newpassword"><span
															class="required-symbol">*</span>새로운 비밀번호:</label> <input
															type="password" class="form-control input-lg"
															id="form_accountsetting_newpassword" name="password"
															autocomplete="off" data-rule-required="true"
															data-rule-rangelength="${passLengthMin},${passLengthMax}"
															data-rule-verifypassword="true"
															data-msg-required="휴대폰 번호를 입력해 주세요."
															data-msg-verifypassword="비밀번호는 문자, 숫자를 조합한 최소 8 글자 이상이어야 합니다."
															data-msg-rangelength="비밀번호는 8에서 20글자이어야 됩니다."
															maxlength="20" value="" aria-required="true"> <label
															for="form_accountsetting_newpassword"
															class="control-hint">비밀번호는 문자, 숫자를 조합한 최소 8 글자
															이상이어야 합니다.</label>

													</div>
													<div class="form-group">

														<label class="field-label"
															for="form_accountsetting_reenterpassword"><span
															class="required-symbol">*</span>새로운 비밀번호 재입력:</label> <input
															type="password" class="form-control input-lg"
															id="form_accountsetting_reenterpassword"
															name="comfirmPassword" autocomplete="off"
															data-rule-required="true" maxlength="20" value=""
															aria-required="true">
													</div>
												</fieldset>
												<fieldset class="fieldset form-actions">
													<div class="form-group">
														<button type="button"
															class="btn btn-red btn-xl btn-submit" id="btn-submit">비밀번호
															저장</button>
													</div>
												</fieldset>
												<input type="hidden" name="csrfValue"
													value="31f3648ed912ae77500a4df46a38a325">
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
					<div class="text-center">
						한국맥도날드(유) | 대표자: 앤토니 마티네즈 | 서울특별시 종로구 종로 51 종로타워 14층 | 전화번호:
						1600-5252 | 사업자등록번호: 101-81-26409 | 호스팅서비스 제공자: 아마존 웹 서비스 <br>
						<br>공정위 사업자 링크 정보: <a
							href="https://www.ftc.go.kr/bizCommPop.do?wrkr_no=1018126409"
							target="_blank">한국맥도날드(유)</a>
					</div>
					<div class="text-center text-ucase">Copyright © 2014 All
						Rights Reserved By McDonald's™</div>
					<div class="text-center text-ucase">골든 아치 로고와 "i'm lovin'
						it"은 맥도날드 고유의 상표입니다.</div>


				</div>
			</div>

		</div>

	</div>



</body>
</html>