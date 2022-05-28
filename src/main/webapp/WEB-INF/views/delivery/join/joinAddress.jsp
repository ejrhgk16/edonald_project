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
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<link rel="stylesheet" type="text/css" href="/resources/css/local.css">
<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=57c82c3d4e52c1b3bb9f7077877b01c3&libraries=services"></script>
<script type="text/javascript" src="/resources/js/main.js"></script>
<script type="text/javascript" src="/resources/js/join.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="country-82 lang-ko page-guest-enter-delivery-address">

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

				<div class="page-content">
					<div class="form-column">
						<form method="post" role="form" class="form form_deliveryaddress"
							id="form_deliveryaddress" action="/ed/joinUserPage">
							<input type="hidden" id="lat" name="lat" value="">
							<input type="hidden" id="lon" name="lon" value="">
							<fieldset class="fieldset">
					
								<div class="fieldset-heading">
									<h2 class="fieldset-title">배달 받을 주소를 한글로 입력해 주세요.</h2>
									<p class="instructions">* 필수 항목</p>

								</div>
								<div class="iframe">
									

									<div class="flow"
										style="position: absolute center; margin-right: 10px; padding-right: 10px;"
										align="center">
										<img
											src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/order_floww_01.gif"
											width="897" height="100" alt="맥딜리버리 주문단계">
									</div>
									<fieldset class="sBox">
										<!-- 20191112 수정 yjs -->
										<div class="frm frwWrap" style="margin: 10px 10px 10px 20px"
											align="center">
											<span> <input type="text" class="addr1" id="postcode" name="postcode"
												placeholder="* 주소를 선택해주세요." readonly=""
												style="width: 250px;">
											</span>
											<button type="button" class="btnMC btnM"
												onclick="openApiPost()" title="주소찾기 새창 열림">주소찾기</button>
										</div>
										<div class="frm" style="margin: 10px 10px 0px 40px"
											align="center">
											<input type="text" class="addr2" id="roadAddress" name="roadAddress"
												style="width: 370px;" placeholder="* 도로명주소">
										</div>
										<div class="frm" align="center"
											style="margin: 10px 10px 10px 40px">
											<input type="text" class="addr2" id="jibunAddress" name="jibunAddress"
												style="width: 370px;" placeholder="* 지번주소">
										</div>
										<!-- //20191112 수정 yjs -->
										<div class="frm" align="center"
											style="margin: 10px 10px 10px 40px">
											<input type="text" class="addr2" id="detailAddress" name="detailAddress" placeholder="* 상세주소를 입력하세요."> 
											<input type="text"class="addr2" id="extraAddress" name="extraAddress" title="참고항목 입력하세요" placeholder="참고항목을 입력하세요.">
										</div>
										
										<div>
											<span id="guide" style="color:#999;display:none"></span>
										</div>
										
										<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
										<script>
											//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
											function openApiPost() {
												new daum.Postcode(
														{
															oncomplete : function(
																	data) {
																// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

																// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
																// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
																var roadAddr = data.roadAddress; // 도로명 주소 변수
																var extraRoadAddr = ''; // 참고 항목 변수

																// 법정동명이 있을 경우 추가한다. (법정리는 제외)
																// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
																if (data.bname !== ''
																		&& /[동|로|가]$/g
																				.test(data.bname)) {
																	extraRoadAddr += data.bname;
																}
																// 건물명이 있고, 공동주택일 경우 추가한다.
																if (data.buildingName !== ''
																		&& data.apartment === 'Y') {
																	extraRoadAddr += (extraRoadAddr !== '' ? ', '
																			+ data.buildingName
																			: data.buildingName);
																}
																// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
																if (extraRoadAddr !== '') {
																	extraRoadAddr = ' ('
																			+ extraRoadAddr
																			+ ')';
																}

																// 우편번호와 주소 정보를 해당 필드에 넣는다.
																document
																		.getElementById('postcode').value = data.zonecode;
																document
																		.getElementById("roadAddress").value = roadAddr;
																document
																		.getElementById("jibunAddress").value = data.jibunAddress;

																// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
																if (roadAddr !== '') {
																	document
																			.getElementById("extraAddress").value = extraRoadAddr;
																} else {
																	document
																			.getElementById("extraAddress").value = '';
																}

																var guideTextBox = document
																		.getElementById("guide");
																// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
																if (data.autoRoadAddress) {
																	var expRoadAddr = data.autoRoadAddress
																			+ extraRoadAddr;
																	guideTextBox.innerHTML = '(예상 도로명 주소 : '
																			+ expRoadAddr
																			+ ')';
																	guideTextBox.style.display = 'block';

																} else if (data.autoJibunAddress) {
																	var expJibunAddr = data.autoJibunAddress;
																	guideTextBox.innerHTML = '(예상 지번 주소 : '
																			+ expJibunAddr
																			+ ')';
																	guideTextBox.style.display = 'block';
																} else {
																	guideTextBox.innerHTML = '';
																	guideTextBox.style.display = 'none';
																}
															}
														}).open();
											}
										</script>
									</fieldset>
								</div>
							</fieldset>

							<div id="guest_submit_button">
								<fieldset class="fieldset form-actions">
									<div class="form-group">

										<button type="submit" id="submit_button" name="submit_button"
											class="btn btn-red btn-xl btn-submit">확인</button>

									</div>

								</fieldset>
							</div>

						</form>
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
	


	
						

	
	

	
</body>
</html>