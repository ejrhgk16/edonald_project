<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/favicon.ico">
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="/resources/js/main.js"></script>
<script type="text/javascript" src="/resources/js/findpassword.js"></script>
<script type="text/javascript">
	var username = '{principal.username}'
					$(document).ready(function() {
						<!-- 주소 목록 열기-->
								$("#form_select_address_delivery_address-button").on("click", function(e) {
											console.log("ccccc")
											e.preventDefault();
											if ($(".ui-selectmenu-menu").attr("class") == "ui-selectmenu-menu address-picker hide-default-error") {
												$(".ui-selectmenu-menu").attr("class","ui-selectmenu-menu address-picker hide-default-error ui-selectmenu-open")
											} else {
												$(".ui-selectmenu-menu").attr("class", "ui-selectmenu-menu address-picker hide-default-error")
											}
										});
							
							<!-- 주소 선택-->
							$(".ui-selectmenu-item-selected").mouseover(function(){$(this).attr("class", "ui-selectmenu-item-selected ui-selectmenu-item-focus ui-state-hover")})
							$(".ui-selectmenu-item-selected").mouseleave(function(){$(this).attr("class", "ui-selectmenu-item-selected")})
							$(".ui-selectmenu-item-selected").on("click", function(e){
								e.preventDefault();
								$(".ui-selectmenu-menu").attr("class", "ui-selectmenu-menu address-picker hide-default-error")
								var addr_seq = $(this).children("input[name=addr]").val();
								window.location.href = "/member/selectAddress?address_seq="+addr_seq;
							});
							
							<!-- 권한 확인 후 버튼 활성화 -->
							if ($('#role').val() == 'ROLE_SADMIN'){
								var html = "";
								html += "<p class=\"action-sadmin\">";
								html += "<a id=\"sadminBtn\" href=\"/sadmin/index\" class=\"btn btn-red btn-block btn-xl\">관리자 사이트로</a></p>"
								$('.panel-home-masthead-form').html(html);
								$('div.panel-heading').html("<h4>환영합니다 ${principal.memberDto.user_name} 지점장님</h4>");
							}
					});
</script>
<title>이도날드</title>
</head>
	<body class="country-82 lang-ko ">
	<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-KM4PZ8" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript><script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src='//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);})(window,document,'script','dataLayer','GTM-KM4PZ8');</script>
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
					<h1>비밀번호를 잊어버렷나요 ?</h1>
				</div>

				<div class="page-content">
					<div class="panel panel-lg panel-default order-verification type-sans">

						<div class="panel-heading">
							<h3>가입 시 등록하신 고객님의 이메일을 아래에 입력해주세요.</h3>
						</div>

						

						<div class="panel-body">
							<form action="/ed/findpasswordCheck.do" method="post" role="form" id="form_forgotpassword" name="form_forgotpassword" data-required-symbol="*" novalidate="novalidate">

								<!-- ECP Workflow Start-->

								

								<!-- Normal Workflow Start-->
								<div>
									<div class="row">
										<div class="col-xs-4">
											<div id="inputform" class="form-group">
												
												
													<label for="verification-code" class="field-label"><span class="required-symbol">*</span>아이디:</label>
												
												<input type="text" name="userName" id="form_forgotpassword_verification" class="form-control input-lg required email" data-msg-email="이메일 형식이 잘못되었습니다." placeholder="name@mail.com" value="" aria-required="true">
											</div>
										</div>
									</div>
								</div>
								<!-- Normal Workflow End-->

								<div class="row">
									<div class="col-xs-4">
										
									</div>
								</div>

								<button type="button" id="sumbitBtn" class="btn btn-red btn-lg">확인</button>
							<input type="hidden" name="csrfValue" value="82e5a54b2662fecf50115b87c4d2e350"></form>
						</div>
					</div>
				</div>
			</div>
			</div>
			<div class="global-footer">
				<div class="footer-disclaimer">
					<div class="container">
						<div class="text-center">
						<br><br><br><br><br><br><br><br><br><br><br><br><br>
							한국맥도날드(유) | 대표자: 앤토니 마티네즈 | 서울특별시 종로구 종로 51 종로타워 14층 | 전화번호:
							1600-5252 | 사업자등록번호: 101-81-26409 | 호스팅서비스 제공자: 아마존 웹 서비스 <br>
							<br>공정위 사업자 링크 정보: <a href="" target="_blank">한국맥도날드(유)</a>
						</div>
						<div class="text-center text-ucase">Copyright © 2014 All
							Rights Reserved By McDonald's™</div>
						<div class="text-center text-ucase">골든 아치 로고와 "i'm lovin'
							it"은 맥도날드 고유의 상표입니다.</div>
	
	
					</div>
				</div>
			</div>
	
		


	</div>
	<input id="role" type="hidden" value="${principal.memberDto.role }" />
	<input type="hidden" value="${principal.memberDto.user_name }" />
	</body>
</html>