<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<link rel="stylesheet" type="text/css" href="/resources/css/local.css">
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="/resources/js/main.js"></script>
<script type="text/javascript" src="/resources/js/join.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#joinComplete").on("click", function(e){
		e.preventDefault(); 
		var certifyNum  = '${certifyNum}';
		console.log(certifyNum);
		if( certifyNum==$("#form_accountactivation_activationcode").val() ){
			alert("인증완료");
		}else{
			alert("일치하지않습니다.");
		}
	})
})
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body
	class="country-82 lang-ko page-error-unexpected-difficulty page-error">

	<div class="root">
		<div class="wrap container">
			<div class="global-header">
				<script>	
			/*<![CDATA[*/ 	
				window.WOSPageVars = {	
	            	'DURATION_OF_GDPR_DAY': 365	
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

							<li class="list-item"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/icon_profile_gray.png"
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
								class="menu-item-target" href="/kr/menu.html"> <i
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
										class="dropdown-menu-item-target"
										href=""
										target="_self">이용약관</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href=""
										target="_self">개인정보 처리방침</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href=""
										target="_self">자주 묻는 질문</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href=""
										target="_blank">과일 칠러 판매 제외 매장</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href=""
										target="_blank">영양정보/원산지 정보/기타 정보</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href=""
										target="_self">모바일 웹</a></li>


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
						<i class="fa fa-exclamation text-white icon"></i> <span>메뉴는
							<span class="text-primary timer menuswitch-timer">49:50</span> 분
							후에 종료됩니다. 종료 전에 주문을 완료해 주세요.
						</span>
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
										<div class="time-disclaimer">메뉴 종료까지</div>
										<div class="time timer text-din timer-clock menuswitch-timer">49:50</div>
										<div class="time-disclaimer"></div>
									</div>
									<div class="col-xs-8 timer-wrapper">
										<div class="alert-content text-left">
											<h1 id="countdownmenuswitchtimer-title">메뉴가 종료됩니다</h1>
											<p>일반 메뉴 메뉴가 종료됩니다. 종료 전에 주문을 완료해 주세요.</p>
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
										<div class="time timer text-din timer-clock storeclose-timer">59:50</div>
									</div>
									<div class="col-xs-8 timer-wrapper">
										<div class="alert-content text-left">
											<h1 id="countdowntimer-title">배달 가능 시간</h1>
											<p>해당 지역의 매장은 오후 08:59 AM 까지 배달 가능합니다.</p>
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
											<button type="submit" id="joinComplete" class="btn btn-red btn-lg">확인</button>
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
			<div class="footer-nav">
				<div class="container">
					<div class="row">

						<div class="column">
							<h3 class="list-group-title">메뉴</h3>
							<ul class="list-unstyled">
								<li class="menu-item"><a class="menu-item-target"
									href="">추천 메뉴</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="">버거 &amp; 세트</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="">스낵 &amp; 사이드</a>
								</li>
								<li class="menu-item"><a class="menu-item-target"
									href="">음료</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="">디저트</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=16">해피밀®</a></li>
								<li><a class="menu-item-target" target="_blank"
									href="">메뉴
										다운로드</a></li>
							</ul>
						</div>




						<div class="column">
							<h3 class="list-group-title">기타정보</h3>
							<ul class="list-unstyled">
								<li class="menu-item"><a class="menu-item-target"
									href=""
									target="_self">이용약관</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href=""
									target="_self">개인정보 처리방침</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href=""
									target="_self">자주 묻는 질문</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href=""
									target="_blank">과일 칠러 판매 제외 매장</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href=""
									target="_blank">영양정보/원산지 정보/기타 정보</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href=""
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

			<div style="display: none">
				Store Number:688<br>:NpVersion: 6.1<br>Store Status:<br>1
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
														placeholder="아이디" value="" aria-required="true"
														aria-invalid="false">
												</div>
												<div class="list-group-item textfield-list-group-item">
													<label class="sr-only" for="form_login_modal_password">비밀번호</label>

													<input type="password" name="password"
														id="form_login_modal_password"
														class="required list-group-form-control"
														placeholder="비밀번호" autocomplete="off" maxlength="20"
														value="" aria-required="true" aria-invalid="false">
												</div>
												<label id="form_login_modal_username-error" class="error"
													for="form_login_modal_username"></label><label
													id="form_login_modal_password-error" class="error"
													for="form_login_modal_password"></label>
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
												<a class="action-link" href="">비밀번호
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
							value="c88ae5be33caf4e15ec216eb549176bb">
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

	
</body>
</html>