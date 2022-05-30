<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
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
<link rel="icon" href="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/favicon.ico">
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<link rel="stylesheet" type="text/css" href="/resources/css/local.css">
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="/resources/js/main.js"></script>
<script type="text/javascript" src="/resources/js/join.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#joinComplete").on("click", function(e){
		var certifyNum = $("#form_accountactivation_activationcode").val()
		var url = "/order/nologin/checkNum?certifyNum="+certifyNum;
		$.ajax({
			type : "GET",
			url : url,
			success : function(){
				alert("회원가입 완료. 로그인 해주세요");
				location.href = "/ed/joinComplete";
			},
			error : function(){
				alert("인증번호가 다릅니다.")
			}
		})
	})
	
	
})
</script>
<meta charset="UTF-8">
<title>이도날드</title>
</head>
<body
	class="country-82 lang-ko page-error-unexpected-difficulty page-error">

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


							<li class="menu-item menu-item-account dropdown"><a
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
				<div class="page-title">
					<h1>회원인증</h1>
				</div>
				<div class="page-content">
					<div
						class="panel panel-lg panel-default order-verification type-sans">
						<div class="panel-heading">
							<h3>문자 발송완료</h3>
						</div>
						<div class="panel-body">
							<p>
								인증코드가 등록된 휴대전화 발송되었습니다: <strong>${memberDto.user_phone}</strong>.
							</p>
							<p>인증코드를 입력해주세요</p>
							<p>
								문자를 5분안에 받지못하셨다면, 재발송을 위해 <a href="/kr/sendActivate.html">여기</a>를
								클릭해주세요
							</p>
							<form id="form_accountactivation" name="form_accountactivation"
								method="post" accept-charset="utf-8" role="form"
								action="/kr/registerActivate.html" novalidate="novalidate">
								<div class="row">
									<div class="col-xs-4">
										<div class="form-group">
											<label for="form_accountactivation_activationcode"
												class="field-label">인증코드:</label> <input type="text"
												class="form-control input-lg"
												id="form_accountactivation_activationcode"
												name="activationCode" data-rule-required="true"
												data-msg-required="인증코드가 필요합니다." aria-required="true">
										</div>
										<div class="form-group">
											<button type="button" id="joinComplete" class="btn btn-red btn-lg">확인</button>
										</div>
									</div>
								</div>
								<input type="hidden" name="csrfValue"
									value="c88ae5be33caf4e15ec216eb549176bb">
							</form>

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