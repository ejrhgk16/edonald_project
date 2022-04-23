
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<script>
					/*<![CDATA[*/
					window.WOSPageVars = {
						'DURATION_OF_GDPR_DAY' : 365
					};

					/*]]>*/
				</script>
				<!-- Begin Cookies Wrap -->

				<!-- End Cookies Wrap -->
				<div class="header-actions row">
					<div class="language-selector">
						<ul class="list-inline list-inline-divide">
							<li class="list-item selected"><a class="list-item-target"
								href="?locale=ko">한국어 <i class="fa fa-caret-left icon"></i></a>
								<!-- --></li>
							<li class="list-item"><a class="list-item-target"
								href="?locale=en">English <i class="fa fa-caret-left icon"></i></a></li>
						</ul>
					</div>
					<div class="my-account-quicklinks">
						<ul class="list-inline list-inline-divide">

							<li class="list-item"><img
								src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/icon_profile_gray.png"
								alt="Profile" width="20" class="profile-grey-avator"></li>

							<li class="list-item"
								onclick="console.log('signin_topright'); dataLayer.push({          'event': 'trackEvent',          'vpv': 'vpv_signin_topright',          'eventDetails.category': 'signin',          'eventDetails.action': 'click',          'eventDetails.label': 'signin_topright'         });">
								<a class="list-item-target" href="#signin" data-toggle="modal"
								data-target="#signin">로그인</a>
							</li>
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
								class="menu-item-target" href=""> <i
									class="fa mcd mcd-burger icon"></i> 메뉴
							</a></li>

							<li class="menu-item menu-item-account dropdown"><a
								class="menu-item-target dropdown-toggle" href="#signin"
								data-toggle="modal" data-target="#signin"> <i
									class="fa fa-user icon"></i> 마이 페이지
							</a></li>

							<li class="menu-item menu-item-support dropdown "><a
								class="menu-item-target dropdown-toggle" href=""
								data-toggle="dropdown"> <i class="fa fa-phone icon"></i>
									기타정보<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="" target="_self">이용약관</a>

									</li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="" target="_self">개인정보
											처리방침</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="" target="_self">자주
											묻는 질문</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="" target="_blank">과일
											칠러 판매 제외 매장</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="" target="_blank">영양정보/원산지
											정보/기타 정보</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="" target="_self">모바일
											웹</a></li>


								</ul></li>

						</ul>
					</div>
				</div>

				<div
					class="alert alert-warning alert-dismissable inline-alert type-flama hidden alert-menuswitch-timeout"
					data-dismiss-trigger="wos.menuswitch.warning1.closed">
					<button type="button" class="close" data-hide="inline-alert"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
					<p>
						<i class="fa fa-exclamation text-white icon"></i> <span><span
							class="text-primary timer menuswitch-timer"></span> 분 후 아침 메뉴
							주문으로 전환됩니다. 주문을 완료해 주세요.</span>
					</p>
				</div>


				<!-- Start of Session time out warning -->

				<!-- End of Session time out warning -->
				<!-- [countdownmenuswitchtimer.modal] -->
				<div id="countdownmenuswitchtimer" data-alert-type="modal"
					data-backdrop="static" data-keyboard="false"
					class="modal-countdownmenuswitchtimer modal-alert alert-menuswitch-timeout modal-alert modal fade"
					role="dialog" aria-labelledby="countdownmenuswitchtimer-title"
					aria-hidden="true" tabindex="-1">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header"></div>
							<div class="modal-body">
								<div class="row">
									<div class="col-xs-3 timer-wrapper">
										<div class="time-disclaimer">메뉴 변경 시간까지...</div>
										<div class="time timer text-din timer-clock menuswitch-timer"></div>
										<div class="time-disclaimer"></div>
									</div>
									<div class="col-xs-8 timer-wrapper">
										<div class="alert-content text-left">
											<h1 id="countdownmenuswitchtimer-title">곧 메뉴가 변경됩니다!</h1>
											<p>곧 아침 메뉴로 전환됩니다. 제한 시간 내에 주문을 완료해 주세요.</p>
											<p>
												<button type="button"
													data-dismiss-trigger="menuswitch.action.ok"
													aria-hidden="true" class="btn btn-red btn-lg text-ucase">확인</button>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- [/countdownmenuswitchtimer.modal] -->

				<!-- <div th:fragment="modals"> -->
				<!-- [deliveryhoursavailability.modal] -->
				<div data-alert-type="modal" data-backdrop="static"
					data-keyboard="false"
					class="modal-countdownstoreclosetimer modal-countdowntimer modal-alert modal fade"
					role="dialog" aria-labelledby="countdowntimer-title"
					aria-hidden="true" tabindex="-1">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">
									<i class="fa mcd mcd-close"></i>
								</button>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-xs-3 timer-wrapper">
										<div class="time-disclaimer">해당 매장의 영업은 다음 시간 후 종료됩니다:</div>
										<div class="time timer text-din timer-clock storeclose-timer"></div>
									</div>
									<div class="col-xs-8 timer-wrapper">
										<div class="alert-content text-left">
											<h1 id="countdowntimer-title">배달 가능 시간</h1>
											<p>해당 지역의 매장은 오후 0 까지 배달 가능합니다.</p>
											<p>지금 주문을 완료해 주십시오.</p>
											<p>
												<button data-dismiss="modal" aria-hidden="true"
													class="btn btn-red btn-lg text-ucase"
													data-dismiss-trigger="storeclose.action.continue">계속</button>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- [/deliveryhoursavailability.modal] -->

			</div>
			<div class="main" role="main">

				<div class="page-header">
					<h1 class="h4">배달 받을 주소를 입력하시면 예상 배달 시간을 확인 할 수 있습니다.</h1>
				</div>
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
			<div class="footer-nav">
				<div class="container">
					<div class="row">

						<div class="column">
							<h3 class="list-group-title">메뉴</h3>
							<ul class="list-unstyled">
								<li class="menu-item"><a class="menu-item-target" href="">추천
										메뉴</a></li>
								<li class="menu-item"><a class="menu-item-target" href="">버거
										&amp; 세트</a></li>
								<li class="menu-item"><a class="menu-item-target" href="">스낵
										&amp; 사이드</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=14">음료</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=15">디저트</a></li>
								<li class="menu-item"><a class="menu-item-target" href="">해피밀®</a></li>
								<li><a class="menu-item-target" target="_blank" href="">메뉴
										다운로드</a></li>
							</ul>
						</div>




						<div class="column">
							<h3 class="list-group-title">기타정보</h3>
							<ul class="list-unstyled">
								<li class="menu-item"><a class="menu-item-target" href=""
									target="_self">이용약관</a></li>
								<li class="menu-item"><a class="menu-item-target" href=""
									target="_self">개인정보 처리방침</a></li>
								<li class="menu-item"><a class="menu-item-target" href=""
									target="_self">자주 묻는 질문</a></li>
								<li class="menu-item"><a class="menu-item-target" href=""
									target="_blank">과일 칠러 판매 제외 매장</a></li>
								<li class="menu-item"><a class="menu-item-target" href=""
									target="_blank">영양정보/원산지 정보/기타 정보</a></li>
								<li class="menu-item"><a class="menu-item-target" href=""
									target="_self">모바일 웹</a></li>
							</ul>
						</div>

						<div class="column">
							<h3 class="list-group-title">팔로우</h3>
							<ul class="list-unstyled">

								<li class="menu-item"><a
									class="menu-item-target footer-icon fb"
									href="https://www.facebook.com/McDonaldsKorea" target="_blank">페이스북</a>
								</li>

								<li class="menu-item"><a
									class="menu-item-target footer-icon in"
									href="https://instagram.com/McDonalds_kr" target="_blank">인스타그램</a>
								</li>

								<li class="menu-item"><a
									class="menu-item-target footer-icon yt"
									href="https://www.youtube.com/user/McDonaldsKor"
									target="_blank">유튜브</a></li>

							</ul>
						</div>


					</div>
				</div>
			</div>
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
	<div id="loading-view" class="loading-view hidden">
		<div class="loading">
			<span class="loading-icon"></span>
		</div>
	</div>


	<div id="signin" class="modal-login modal fade signin-modal"
		role="dialog" aria-labelledby="modal-title" aria-hidden="true"
		tabindex="-1">
		<div class="modal-backdrop fade in" style="height: 754px;"></div>
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">


					<img class="logo"
						src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/mcdelivery_logo_ko.jpg"
						alt="">


					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">

					<h2 id="modal-title">주문을 하시려면 로그인하시기 바랍니다.</h2>

					<div class="row">
						<div class="col-xs-offset-3 col-xs-6">

							<ul id="signin-nav-tabs-login-fragment"
								class="nav nav-tabs nav-tabs-login-fragment">
								<li class="active"><a href="#modal-signin-tab-login"
									data-toggle="tab"
									onclick="dataLayer.push({               'event': 'trackEvent',               'eventDetails.category': 'sign in modal',               'eventDetails.action': 'click popup modal',               'eventDetails.label': 'sign in'              });">로그인</a>
								</li>

								<li class=""><a href="#modal-signin-tab-new"
									data-toggle="tab"
									onclick="dataLayer.push({               'event': 'trackEvent',               'eventDetails.category': 'sign in modal',               'eventDetails.action': 'click popup modal',               'eventDetails.label': 'i am new'              });">비회원
										주문</a></li>


							</ul>
							<div class="tab-content clearfix">
								<div class="tab-pane active" id="modal-signin-tab-login">
									<form action="#" method="post" accept-charset="utf-8"
										role="form" id="form_login_modal" name="form_login_modal"
										class="form-login-modal form-login"
										data-required-symbol="false" novalidate="novalidate">

										<fieldset class="form-credentials">
											<div class="list-group textfield-list-group">
												<div class="list-group-item textfield-list-group-item">
													<label class="sr-only" for="form_login_modal_username">아이디</label>
													<input type="text" name="userName"
														id="form_login_modal_username"
														class="required email list-group-form-control"
														placeholder="아이디" value="" aria-required="true">
												</div>
												<div class="list-group-item textfield-list-group-item">
													<label class="sr-only" for="form_login_modal_password">비밀번호</label>

													<input type="password" name="password"
														id="form_login_modal_password"
														class="required list-group-form-control"
														placeholder="비밀번호" autocomplete="off" maxlength="20"
														value="" aria-required="true">
												</div>
											</div>
											<label id="errorTips" style="display: none;"></label>
											<div class="checkbox">
												<div class="icheckbox" style="position: relative;">
													<input type="checkbox" name="rememberMe"
														id="modal_login_rememberme" value="true"
														style="position: absolute; opacity: 0;">
													<ins class="iCheck-helper"
														style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
												</div>
												<input type="hidden" name="_rememberMe" value="on">
												<label for="modal_login_rememberme" class="checkbox-label">자동
													로그인</label>
											</div>
										</fieldset>
										<fieldset class="form-actions">

											<button type="button"
												class="isLoginSuccessGtmEnabled btn btn-default btn-red btn-block btn-xl btn-submit">로그인</button>


											<p class="action-forgot-password">
												<a class="action-link" href="/kr/forgot-password.html">비밀번호
													찾기</a>
											</p>


										</fieldset>
									</form>

									<div
										class="frament-new-user section-border-top margin-bottom-0 centered-text">

										<a class="btn btn-block btn-red btn-xl"
											onclick="                   dataLayer.push({                    'event':'trackEvent',                    'eventDetails.category':'i am new',                    'eventDetails.action':'click popup modal',                    'eventDetails.label':'register now'                   });                  "
											href="guest.html"> <span>회원가입</span>
										</a>


									</div>
									<a href="#member-benefits" class="h5 text-link"
										data-toggle="html-popover" data-container="body"
										data-placement="top" data-html="true"
										data-content-selector="#member-benefits"
										data-original-title="" title=""> <span
										class="text-default">회원가입 하시고 다양한 혜택을 누리세요</span> <i
										class="mcd icon mcd-detail"></i>
									</a>
									<div id="member-benefits"
										class="popover-wrapper popover-details">
										<div class="popover-wrapper">
											<h5 class="text-default">신규 계정 생성</h5>
											<div class="guest-order-note"
												style="max-width: 300px !important; width: 300px !important;">맥딜리버리
												회원에게만 제공되는 할인 및 프로모션 혜택을 누리고, 지난 주문 내역을 검색하거나 즐겨찾기 메뉴를 이용해서
												더 빠르고 편리하게 맥딜리버리를 이용하세요.</div>
										</div>
									</div>


								</div>
								<div class="tab-pane " id="modal-signin-tab-new">

									<div class="frament-guest-order">
										<div class="guest-order-header">회원가입하지 않고 주문하기</div>
										<div class="guest-order-note">온라인 결제로 즉시 주문</div>
										<a class="btn btn-block btn-red btn-xl"
											onclick="dataLayer.push(               {                'event': 'trackEvent',                'eventDetails.category': 'i am new',                'eventDetails.action': 'click popup modal',                'eventDetails.label': 'guest order'               });"
											href="">비회원 주문</a>
									</div>
								</div>

							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="trackOrder" class="modal-trackorder modal fade"
		data-backdrop="static" role="dialog"
		aria-labelledby="trackorder-title" aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="trackorder-title">주문 조회</h1>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<p>주문 번호를 입력하시면 고객님의 주문의 진행상황을 확인하실 수 있습니다.</p>
					<form action="/kr/searchOrder.html" method="post" role="form"
						id="form_trackOrder" name="form_trackOrder"
						class="form form-track-order" novalidate="novalidate">

						<div class="form-group">
							<label class="field-label" for="form_trackOrder_orderNum">주문
								번호:</label> <input type="text" class="form-control input-lg required"
								id="form_trackOrder_orderNum" name="orderNum"
								aria-required="true">
						</div>
						<div class="form-group">
							<button type="submit"
								class="btn btn-default btn-red btn-lg text-ucase">확인</button>
						</div>
						<input type="hidden" name="csrfValue"
							value="32b852cabcd48f439cc26b34f2162528">
					</form>
					<p class="note">주문 관련 문의사항은 맥딜리버리 콜센터로연락하시기 바랍니다1600-5252.</p>
				</div>
			</div>
		</div>
	</div>
	<div id="alertCartCleared-signin" data-backdrop="static"
		class="modal-cartcleared modal-alert modal fade" role="dialog"
		aria-labelledby="cartcleared-title" aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="cartcleared-title">이전 선택한 메뉴는 취소됩니다.</h1>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<div class="alert-content">
						<p>진행하시겠습니까?</p>
						<p>
							<button data-dismiss="modal" aria-hidden="true"
								class="btn btn-default btn-black btn-lg text-ucase">
								아니오</button>
							<button data-switch-modal="#signin" data-toggle="modal"
								aria-hidden="true"
								class="btn btn-default btn-red btn-lg text-ucase"
								onclick="dataLayer.push({                          'event' : 'trackEvent',                          'eventDetails.category': 'cart clearance',                          'eventDetails.action': 'cart is cleared',                          'eventDetails.label': 'guest signin'                         });">
								예</button>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="alertCartCleared-changeaddress" data-backdrop="static"
		class="modal-cartcleared modal-alert modal fade" role="dialog"
		aria-labelledby="cartcleared-title" aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="cartcleared-title">이전 선택한 메뉴는 취소됩니다.</h1>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<div class="alert-content">
						<p>진행하시겠습니까?</p>
						<p>
							<button data-dismiss="modal" aria-hidden="true"
								class="btn btn-default btn-black btn-lg text-ucase">
								아니오</button>
							<button
								data-dismiss-trigger="changeaddress.cartcleared.action.yes"
								aria-hidden="true"
								class="btn btn-default btn-red btn-lg text-ucase"
								onclick="dataLayer.push({                           'event' : 'trackEvent',                           'eventDetails.category': 'cart clearance',                           'eventDetails.action': 'cart is cleared',                           'eventDetails.label': 'change delivery address'                          });">
								예</button>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- [#advancedOrder.modal] -->
	<div id="advancedOrder" data-backdrop="static"
		class="modal-advanceorder modal fade" role="dialog"
		aria-labelledby="advanceorder-title" aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<form action="/kr/selection/menu.html" method="post" role="form"
						class="form form_advancedorder" id="form_advancedorder"
						data-required-symbol="*">
						<fieldset class="fieldset fieldset-deliverydatetime">
							<div class="fieldset-heading">
								<h2 id="advanceorder-title">배달 받으실 시간을 선택해 주세요.</h2>
							</div>
							<div class="form-group">
								<div class="radio">
									<div class="iradio disabled" style="position: relative;">
										<input disabled="disabled" type="radio" value="now"
											name="form_advancedorder_datetime"
											id="form_advancedorder_datetime_now"
											style="position: absolute; opacity: 0;">
										<ins class="iCheck-helper"
											style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
									</div>
									<label class="radio-label"
										for="form_advancedorder_datetime_now">즉시 주문</label>
								</div>
								<div class="radio">
									<div class="iradio checked" style="position: relative;">
										<input checked="" type="radio" value="later"
											name="form_advancedorder_datetime"
											id="form_advancedorder_datetime_later"
											style="position: absolute; opacity: 0;">
										<ins class="iCheck-helper"
											style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
									</div>
									<label class="radio-label"
										for="form_advancedorder_datetime_later">예약 주문 (배달 받으실
										시간 기준 최소 null시간 전까지 주문 가능합니다.)</label>
								</div>
								<div class="form-group deliverydatetime">
									<label class="field-label overlay-sub-label">날짜:</label> <select
										name="date" class="hide-default-error"
										id="form_advancedorder_date" tabindex="0"
										style="display: none;" aria-disabled="false">

									</select><span class="hide-default-error"><a
										class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown"
										id="form_advancedorder_date-button" role="button" href="#nogo"
										tabindex="0" aria-haspopup="true"
										aria-owns="form_advancedorder_date-menu" aria-disabled="false"
										style="width: 0px;"><span class="ui-selectmenu-status"></span><span
											class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>
								</div>
								<div class="form-group deliverydatetime">
									<label class="field-label overlay-sub-label">시간:</label> <select
										name="time" class="hide-default-error"
										id="form_advancedorder_time" tabindex="0"
										style="display: none;" aria-disabled="false">
										<option value="">배달 받으실 시간을 선택해 주세요</option>

									</select><span class="hide-default-error"><a
										class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown"
										id="form_advancedorder_time-button" role="button" href="#nogo"
										tabindex="0" aria-haspopup="true"
										aria-owns="form_advancedorder_time-menu" aria-disabled="false"
										style="width: 0px;"><span class="ui-selectmenu-status">배달
												받으실 시간을 선택해 주세요</span><span
											class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>
								</div>
								<div class="deliverydatetime deliverydatetime-status"></div>
							</div>
						</fieldset>
						<fieldset class="fieldset form-actions">
							<div class="form-group">
								<button type="submit"
									class="btn btn-red btn-xl action-startneworder btn-submit">계속</button>
							</div>
						</fieldset>
						<input type="hidden" name="csrfValue"
							value="32b852cabcd48f439cc26b34f2162528">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- [/#advancedOrder.modal] -->

	<!-- [#trackOrder.modal] -->

	<!-- [/#trackOrder.modal] -->

	<!-- [countdowntimer.modal] -->
	<div id="countdowntimer" data-alert-type="modal" data-backdrop="static"
		data-keyboard="false"
		class="modal-countdowntimer modal-alert alert-session-timeout modal-alert modal fade"
		role="dialog" aria-labelledby="countdowntimer-title"
		aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header"></div>
				<div class="modal-body">
					<div class="row">
						<div class="col-xs-3 timer-wrapper">
							<div class="time-disclaimer">세션 만료까지</div>


							<div class="time timer text-din timer-clock session-timer">14:55</div>


							<div class="time-disclaimer">세션 만료까지 _분 남았습니다</div>

						</div>
						<div class="col-xs-8 timer-wrapper">
							<div class="alert-content text-left">
								<h1 id="countdowntimer-title">아직도 주문 중이신가요?</h1>


								<p>일시적으로 중단되었습니다. 주문을 계속하시려면 계속 버튼을 눌러주세요.</p>

								<p>
									<button type="button"
										data-dismiss-trigger="session.action.continue"
										aria-hidden="true" class="btn btn-red btn-lg text-ucase">
										계속</button>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [/countdowntimer.modal] -->

	<!-- [#alertOrderGuestDeliveryUnavailable.modal] -->
	<div id="alertOrderGuestDeliveryUnavailable" data-backdrop="static"
		class="modal-addressdeliveryunavailable modal-alert modal fade"
		role="dialog" data-show="true"
		aria-labelledby="addressdeliveryunavailable-title" aria-hidden="true"
		tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="addressdeliveryunavailable-title">선택하신 주소는 현재 배달 가능
						지역이 아닙니다.</h1>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<div class="alert-content">
						<p></p>
						<p>
							<button type="button" data-dismiss="modal"
								class="btn btn-default btn-red btn-lg text-ucase">확인</button>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [/#alertOrderGuestDeliveryUnavailable.modal] -->

	<!-- [#alertOrderGuestDeliveryUnavailableThankYou.modal] -->
	<div id="alertOrderGuestDeliveryUnavailableThankYou"
		data-backdrop="static"
		class="model-deliveryunavailablethankyou modal-alert modal fade"
		role="dialog" aria-labelledby="deliveryunavailablethankyou-title"
		aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="deliveryunavailablethankyou-title">감사합니다.</h1>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<div class="alert-content">
						<p>해당 주소지로 배달이 시작될 때 연락 드리겠습니다.</p>
						<p>
							<button data-dismiss="modal" aria-hidden="true"
								class="btn btn-default btn-red btn-lg text-ucase">확인</button>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [/#alertOrderGuestDeliveryUnavailableThankYou.modal] -->

	<!-- [#alertOrderGuestDeliveryUnavailable.modal] -->
	<div id="alertOrderGuestDeliveryUnavailable2" data-backdrop="static"
		class="modal-addressdeliveryunavailable modal-alert modal fade"
		role="dialog" data-show="true"
		aria-labelledby="addressdeliveryunavailable-title" aria-hidden="true"
		tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="addressdeliveryunavailable-title">선택하신 주소는 현재 배달 가능
						지역이 아닙니다.</h1>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<div class="alert-content">
						<p></p>
					</div>
					<div class="row">
						<div class="col-xs-offset-3 col-xs-6">
							<form class="form form-horizontal" role="form"
								id="form_addressUnavailable2"
								data-onsubmitsuccess-modal="#alertOrderGuestDeliveryUnavailableThankYou"
								method="post" action="/kr/ajax/saveOOBDetail.json">
								<div class="form-group">
									<label class="field-label" for="form_addressUnavailable_email"></label>
									<label class="error" for="form_addressUnavailable_email"
										style="display: none;"></label> <input type="text"
										class="form-control input-lg"
										name="form_addressUnavailable_email"
										id="form_addressUnavailable_email" data-rule-required="true"
										data-rule-email="true"
										data-msg-required="Please enter a valid Email."
										data-msg-email="Your email is not in the correct format."
										placeholder="이메일 주소">
								</div>
								<div class="form-group text-left">
									<div class="checkbox">
										<div class="icheckbox" style="position: relative;">
											<input type="checkbox"
												name="form_addressUnavailable_agreetnc" value="1"
												id="form_addressUnavailable_agreetnc"
												data-rule-required="true"
												data-msg-required="Acceptance of Terms &amp; Conditions is required."
												style="position: absolute; opacity: 0;">
											<ins class="iCheck-helper"
												style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
										</div>
										<label class="checkbox-label type-sans"
											for="form_addressUnavailable_agreetnc">예, <a
											href="{{link-privacypolicy}}" target="_blank">개인 정보 수집 및
												이용</a>에 관해 확인했으며, 이에 동의합니다
										</label>
									</div>
									<div class="checkbox">
										<div class="icheckbox" style="position: relative;">
											<input type="checkbox"
												name="form_addressUnavailable_legalage" value="1"
												id="form_addressUnavailable_legalage"
												data-rule-required="true"
												data-msg-required="Confirmation of age is required."
												style="position: absolute; opacity: 0;">
											<ins class="iCheck-helper"
												style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
										</div>
										<label class="checkbox-label type-sans"
											for="form_addressUnavailable_legalage">I confirm that
											I am 14 years of age or above.</label>
									</div>

								</div>
								<div class="form-group">
									<button type="submit"
										class="btn btn-default btn-red btn-lg text-ucase">확인</button>
								</div>
								<input type="hidden" name="csrfValue"
									value="32b852cabcd48f439cc26b34f2162528">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [/#alertOrderGuestDeliveryUnavailable.modal] -->

	<!-- [#alertRegistrationNotice.modal] -->
	<div id="alertRegistrationNotice" data-backdrop="static"
		class="modal-alertregistrationnotice modal-alert modal fade"
		role="dialog" aria-labelledby="alertregistrationnotice-title"
		aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="alertregistrationnotice-title">배달가능 시간 확인</h1>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<div class="alert-content">
						<p>
							현재 배달외 시간으로 주문이 불가합니다. <br>배달가능한 시간대로 선주문할 수 있습니다.
						</p>
						<p>회원등록 을 위해 버튼을 [진행] 을 클릭해주세요</p>
						<p>
							<button data-dismiss-trigger="store.closed.continue"
								aria-hidden="true"
								class="btn btn-default btn-red btn-lg text-ucase">진행</button>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [#alertRegistrationNotice.modal] -->

	<!-- [#alertAddressUnavailable.modal] -->
	<div id="alertAddressUnavailable" data-backdrop="static"
		class="modal-addressunavailable modal-alert modal fade" role="dialog"
		aria-labelledby="addressunavailable-title" aria-hidden="true"
		tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="addressunavailable-title">address unavailable</h1>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<div class="alert-content">
						<p>
							Sorry, the selected landmark / building name is unavailable.<br>
							Please try to input actual delivery address
						</p>
						<p>
							<button aria-hidden="true" data-dismiss="modal"
								class="btn btn-default btn-red btn-lg text-ucase">확인</button>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [#alertAddressUnavailable.modal] -->

	<div id="loading-view" class="loading-view hidden">
		<div class="loading">
			<span class="loading-icon"></span>
		</div>
	</div>

	<div id="rememberMe" class="modal-rememberme modal fade"
		data-backdrop="static" role="dialog"
		aria-labelledby="rememberme-title" aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="rememberme-title">자동 로그인</h1>
					<button type="button" class="close close-rememberMe"
						data-dismiss="modal" aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<p>입력하신 정보로 웹사이트에 자동 로그인 됩니다. 공공장소에 있는 컴퓨터에서는 개인정보가 유출될 수 있으니
						사용을 자제해 주시기 바랍니다.</p>
					<div class="form-group">
						<button id="btnRememberMeCancel"
							class="btn btn-default btn-black btn-lg text-ucase">취소</button>
						<button id="btnRememberMeAgree"
							class="btn btn-default btn-red btn-lg text-ucase">동의</button>
					</div>
					<p class="note">맥딜리버리 채널을 이용한 주문 관련 문의 사항은 맥딜리버리 콜센터
						(1600-5252) 를 이용해 주시기 바랍니다.</p>
				</div>
			</div>
		</div>
	</div>



	<iframe id="ne_tgmiframe_0" width="0" height="0"
		style="position: absolute; width: 0px; height: 0px; display: none;"
		src="about:blank"></iframe>
	<iframe id="ne_tgmiframe_1" width="0" height="0"
		style="position: absolute; width: 0px; height: 0px; display: none;"
		src="about:blank"></iframe>
	<div class="ui-selectmenu-menu hide-default-error"
		style="z-index: 1042; top: -18px; left: 0px;">
		<ul
			class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom"
			aria-hidden="true" role="listbox"
			aria-labelledby="form_advancedorder_date-button"
			id="form_advancedorder_date-menu" aria-disabled="false" tabindex="0"
			aria-activedescendant="ui-selectmenu-item-887" style="width: 0px;">
			<li role="presentation"
				class="ui-corner-bottom ui-selectmenu-item-selected ui-selectmenu-item-focus"><a
				href="#nogo" tabindex="-1" role="option" aria-selected="true"
				id="ui-selectmenu-item-887"></a></li>
		</ul>
	</div>
	<div class="ui-selectmenu-menu hide-default-error"
		style="z-index: 1042; top: 0px; left: 0px;">
		<ul
			class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom"
			aria-hidden="true" role="listbox"
			aria-labelledby="form_advancedorder_time-button"
			id="form_advancedorder_time-menu" aria-disabled="false" tabindex="0"
			aria-activedescendant="ui-selectmenu-item-137"
			style="width: 0px; height: 223.333px;">
			<li role="presentation"
				class="ui-corner-bottom ui-selectmenu-item-selected ui-selectmenu-item-focus"><a
				href="#nogo" tabindex="-1" role="option" aria-selected="true"
				id="ui-selectmenu-item-137">배달 받으실 시간을 선택해 주세요</a></li>
		</ul>
	</div>
</body>
</html>