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
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="/resources/js/main.js"></script>
<script type="text/javascript" src="/resources/js/slide.js"></script>
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
							
							$(document).on("click", ".action-orderinadvance", function(e) {
								e.preventDefault();
								$(this).attr("class", "menu-item menu-item-menu selected");
								var store = '${principal.memberDto.deliverStore}';
								var principal = '${principal}'
								
								if('${principal}' == ""){
									window.location.href = "/ed/menuPage";
									return
								}else if('${principal.memberDto.deliverStore}' != ""){
									window.location.href = "/ed/menuPage";
									return
								}else{
									alert("현재 배달가능한 지점이 없습니다");
									return;
								}
							});
				
							$(document).on("click",".menu-item-menu", function(e) {
								e.preventDefault();
								$(this).attr("class", "menu-item menu-item-menu selected");
								var store = '${principal.memberDto.deliverStore}';
								var principal = '${principal}'
								
								if('${principal}' == ""){
									window.location.href = "/ed/menuPage";
									return
								}else if('${principal.memberDto.deliverStore}' != ""){
									alert('${principal.memberDto.deliverStore}')
									window.location.href = "/ed/menuPage";
									return
								}else{
									alert("현재 배달가능한 지점이 없습니다");
									return;
								}
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

<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title>Insert title here</title>
</head>
<body>
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
								class="menu-item-target" href="/ed/menuPage"> <i
									class="fa mcd mcd-burger icon"></i> 메뉴
							</a></li>


							<li class="menu-item menu-item-account dropdown"><a
								class="menu-item-target dropdown-toggle" href="#signin"
								data-toggle="modal" data-target="#signin"> <i
									class="fa fa-user icon"></i> 마이 페이지
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-item">
									
									<a class="dropdown-menu-item-target" href="/kr/trackorder.html">주문 조회</a>
								</li>
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target" href="/kr/account-order-history.html">주문 내역</a>
								</li>
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target" href="/kr/account-favourites.html">즐겨찾기 메뉴</a>
								</li>
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target" href="/kr/addressBook.html">주소록</a>
								</li>
								
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target" href="/member/changeAccount">계정 설정</a>
								</li>
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target" href="/member/changePassword">비밀번호 변경</a>
								</li>
							</ul></li>

							<li class="menu-item menu-item-support dropdown "><a
								class="menu-item-target dropdown-toggle" href="#"
								data-toggle="dropdown" aria-expanded="false"> <i
									class="fa fa-phone icon"></i> 기타정보<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="" target="_self">이용약관</a></li>
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
				
				

			</div>
			<div class="main" role="main">

				<!-- Begin Home Masthead Section -->
				<section class="home-masthead page-masthead home-section">
					<div class="slideshow" style="position: relative; height: 475px;">

						<div class="cycle-pager slide-pager">
							<a href="#" class="slide-pager-target ir" onclick="goSlide(0)">1</a>
							<a href="#" class="slide-pager-target ir" onclick="goSlide(1)">2</a>
							<a href="#" class="slide-pager-target ir" onclick="goSlide(2)">3</a>
						</div>

						<a class="slide-target slide-item action-ordernow cycle-slide"
							onclick="onPromoClick({ 'id':'10777','name':'모닝(제네릭)2','creative':'banner' + '1','position':'homepage'})"
							style="background-image: url(https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/landing_67739_WOS.jpg); position: absolute; top: 0px; left: 0px; z-index: 97; display: none; opacity: 1;">
						</a><a class="slide-target slide-item action-ordernow cycle-slide"
							onclick="onPromoClick({ 'id':'10865','name':'소시지스낵랩(BF)','creative':'banner' + '2','position':'homepage'})"
							style="background-image: url(https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/landing_67741_WOS.jpg); position: absolute; top: 0px; left: 0px; z-index: 100; display: none; opacity: 1;">
						</a><a class="slide-target slide-item action-ordernow cycle-slide"
							onclick="onPromoClick({ 'id':'10786','name':'맥카페','creative':'banner' + '3','position':'homepage'})"
							style="background-image: url(https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/landing_67743_WOS.jpg); position: absolute; top: 0px; left: 0px; z-index: 99; display: none; opacity: 1;">
						</a>
					</div>

					<c:choose>
						<c:when test="${!empty principal.username }">
							<div class="panel panel-home-masthead panel-home-masthead-order">
								<div class="panel-heading">

									<div>
										<h2>환영합니다 ${principal.memberDto.user_name} 고객님</h2>
									</div>
								</div>
								<div class="panel-body">
									<div class="panel-home-masthead-form">
										<form name="form_select_address"
											id="form_select_delivery_address" method="post"
											accept-charset="utf-8" role="form"
											class="panel-home-masthead-form" action="/kr/home.html">
											<div class="form-group">
												 <label for="form_select_address_delivery_address"
													class="control-label">다음의 주소로 배달됩니다:</label> <span
													class="address-picker hide-default-error"><a
													class="ui-selectmenu ui-widget ui-state-default ui-selectmenu-dropdown ui-corner-all"
													id="form_select_address_delivery_address-button"
													role="button" tabindex="0" aria-haspopup="true"
													aria-owns="form_select_address_delivery_address-menu"
													aria-disabled="false" style="width: 288px;"> <span
														class="ui-selectmenu-status">
															${principal.memberDto.deliverAddress.road_address}</span> <span
														class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>

												<div
													class="ui-selectmenu-menu address-picker hide-default-error"
													style="top: 75px;">
													<ul
														class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom"
														aria-hidden="false" role="listbox"
														aria-labelledby="form_select_address_delivery_address-button"
														id="form_select_address_delivery_address-menu"
														aria-disabled="false" tabindex="0"
														aria-activedescendant="ui-selectmenu-item-285"
														style="width: 286px;">
														<c:forEach var="addr" items="${principal.memberDto.addressList}">
														<li role="presentation" class="ui-selectmenu-item-selected" style="border-bottom: 1px solid #efefef;">
															<c:choose>
																<c:when test="${addr.d_key eq 'd'}">
																	<input type="hidden" name="select" value="true">		
																</c:when>
																<c:otherwise>
																	<input type="hidden" name="select" value="false">		
																</c:otherwise>
															</c:choose>																
															<input type="hidden" name="addr" value="${addr.address_seq}">		
															<a href="#nogo" tabindex="-1" role="option" aria-selected="false">${addr.road_address}</a>
														</li>
														</c:forEach>
													</ul>								
												</div>
												<a class="action-secondary action-link action-addaddress"
													href="/member/addAddressPage"><i class="fa fa-caret-right"></i>
													주소 추가하기</a>
											</div>

											<fieldset class="form-actions">
												<p class="action-advance-order">
													<a href="#deliveryOptions" data-toggle="modal" id="homeOrderBtn"
														class="btn btn-red btn-block btn-xl btn-submit action-orderinadvance">주문하기</a>
												</p>

												<hr class="fading-divider">
												<p class="action-track-order">
													<a href="#trackOrder" data-toggle="modal" id="membertrackorder"
														class="action-link"> <i class="fa fa-caret-right"></i>
														주문 조회
													</a>
												</p>
												
											</fieldset>
											<input type="hidden" name="csrfValue"
												value="0a238eea9cae586bd5f72eed2d19a687">
										</form>
									</div>
								</div>
							</div>


						</c:when>
						<c:otherwise>
							<!-- Begin Guest Checkout Login Panel -->
							<div class="panel panel-home-masthead panel-home-masthead-login">
								<div class="panel-heading">
									<h2>주문 시작하기</h2>
								</div>
								<div class="panel-body">
									<ul id="nav-tabs-login-fragment"
										class="nav nav-tabs nav-tabs-login-fragment">

										<li class="active"><a href="#home-tab-login"
											data-toggle="tab" aria-expanded="true">로그인</a></li>
										<li class=""><a href="#home-tab-new" data-toggle="tab"
											aria-expanded="false">비회원 주문</a></li>
									</ul>
									<div class="tab-content clearfix">
										<div class="tab-pane active" id="home-tab-login">
											<form method="post" accept-charset="utf-8" role="form"
												id="form_login_masthead" name="form_login_masthead"
												class="panel-home-masthead-form"
												data-required-symbol="false" novalidate="novalidate"
												action="/ed/memberLogin.do">
												<fieldset class="form-credentials">
													<div class="list-group textfield-list-group">
														<div class="list-group-item textfield-list-group-item">
															<label class="sr-only" for="form_login_masthead_username">Email</label>

															<input type="text" autocomplete="off" name="username"
																id="form_login_masthead_username"
																class="required email list-group-form-control"
																placeholder="아이디" value="" aria-required="true"
																aria-invalid="false">
														</div>
														<div class="list-group-item textfield-list-group-item">
															<label class="sr-only" for="form_login_masthead_password">Password</label>
															<input type="password" autocomplete="off" name="password"
																id="form_login_masthead_password"
																class="required list-group-form-control"
																placeholder="비밀번호" maxlength="20" value=""
																aria-required="true" aria-invalid="false">
														</div>
														<label id="form_login_masthead_username-error"
															class="error" for="form_login_masthead_username"></label><label
															id="form_login_masthead_password-error" class="error"
															for="form_login_masthead_password"></label>
													</div>

													<div class="checkbox">
														<div class="icheckbox" style="position: relative;"></div>
														<input type="hidden" name="_rememberMe" value="on">
														<label for="form_login_masthead_rememberme"
															class="checkbox-label">자동 로그인</label>
													</div>
												</fieldset>
												<fieldset class="form-actions">

													<button type="submit" id="edLogin"
														class="btn btn-default btn-red btn-block btn-xl btn-submit">로그인</button>

													<div>
													
														<a href="${naverUrl}"> <img
															src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/naverbtn.png">
														</a>
													</div>
													<p class="action-forgot-password " align="left">
														<a class="action-link" href=""><b>비밀번호 찾기</b></a>
													</p>
												</fieldset>
												<input type="hidden" name="csrfValue"
													value="628ed532d621dd405330ca87ed2a0b6f">
											</form>

											<div
												class="frament-new-user section-border-top margin-bottom-0 centered-text">

												<a class="btn btn-block btn-red btn-xl"
													style="margin-bottom: 4px;"
													onclick="             dataLayer.push({              'event':'trackEvent',              'vpv':'vpv_enter_delivery_address',              'eventDetails.category':'registration',              'eventDetails.action':'click',              'eventDetails.label':'register_homepage'             });             dataLayer.push({              'event':'trackEvent',              'eventDetails.category':'i am new',              'eventDetails.action':'click home page',              'eventDetails.label':'register now'             });            "
													href=""> <span>회원가입</span>
												</a> 
												<div id="member-benefits"
													class="popover-wrapper popover-details">
													<div class="popover-wrapper">
														<h5 class="text-default">신규 계정 생성</h5>
														<div class="guest-order-note"
															style="max-width: 300px !important; width: 300px !important;">맥딜리버리
															회원에게만 제공되는 할인 및 프로모션 혜택을 누리고, 지난 주문 내역을 검색하거나 즐겨찾기 메뉴를
															이용해서 더 빠르고 편리하게 맥딜리버리를 이용하세요.</div>
													</div>
												</div>
											</div>

										</div>
										<div class="tab-pane" id="home-tab-new">

											<div class="frament-guest-order">
												<div class="guest-order-header">회원가입하지 않고 주문하기</div>
												<div class="guest-order-note">온라인 결제로 즉시 주문</div>
																		
													<hr class="fading-divider">
												<a class="btn btn-block btn-red btn-xl"
													href="">비회원 주문</a>
			
												<a class="btn btn-block btn-red btn-xl"
													href="" id="nomembertrackorder">주문조회</a>

											</div>
											
											
				
										</div>
									</div>

								</div>
							</div>
						</c:otherwise>
					</c:choose>

					<!-- End Guest Checkout Login Panel -->
				</section>
				<!-- End Home Masthead Section -->


				<!-- Begin Promotion Section -->
				<section class="promotions home-section">
					<div class="row"></div>
				</section>
				<!-- End Promotion Section -->

				<!-- Begin Offer Section -->

				<!-- End isOfferWalletEnabled -->

				<!-- Begin How It Works Section -->
				<section class="how-it-works home-section">
					<h1 class="section-title">맥딜리버리 이용 방법!</h1>
					<p>
						<a href="#signin" data-target="#signin" data-toggle="modal"> <img
							class="img-block" alt=""
							src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/how_mcdelivery_works_ko.png">
						</a>
					</p>
				</section>
				<!-- End How It Works Section -->
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
								<li class="menu-item"><a class="menu-item-target" href="">맥모닝
										&amp; 세트</a></li>
								<li class="menu-item"><a class="menu-item-target" href="">스낵
										&amp; 사이드</a></li>
								<li class="menu-item"><a class="menu-item-target" href="">음료</a></li>
								<li class="menu-item"><a class="menu-item-target" href="">디저트</a></li>
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
									class="menu-item-target footer-icon fb" href="" target="_blank">페이스북</a>
								</li>

								<li class="menu-item"><a
									class="menu-item-target footer-icon in" href="" target="_blank">인스타그램</a>
								</li>

								<li class="menu-item"><a
									class="menu-item-target footer-icon yt" href="" target="_blank">유튜브</a></li>

							</ul>
						</div>

						<!-- <div class="column col-xs-4">
						<h3>Stay in touch with us!</h3>
						<form class="signup-form form" action="" method="post" accept-charset="utf-8" role="form">
						  	<div class="form-row">
						  		<input type="text" class="form-control input-lg" placeholder="Enter your email address">
						  	</div>
							<div class="form-row">
								<button type="submit" class="btn btn-primary btn-lg btn-block btn-red">Sign me up!</button>
							</div>
						</form>
					</div> -->
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
		<div id="signin" class="modal-login modal fade signin-modal"
			role="dialog" aria-labelledby="modal-title" aria-hidden="true"
			tabindex="-1" style="display: none;">
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
										data-toggle="tab">로그인</a></li>

									<li class=""><a href="#modal-signin-tab-new"
										data-toggle="tab">비회원 주문</a></li>

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
															aria-invalid="false"
															style="position: absolute; opacity: 0;">
														<ins class="iCheck-helper"
															style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
													</div>
													<input type="hidden" name="_rememberMe" value="off">
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
												href="/kr/guest_address.html">비회원 주문</a>
										</div>
									</div>

								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="rememberMe" class="modal-rememberme modal fade"
			data-backdrop="static" role="dialog"
			aria-labelledby="rememberme-title" aria-hidden="true" tabindex="-1"
			style="display: none;">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h1 id="rememberme-title">자동 로그인</h1>
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
		
		
		
	


	</div>
	<input id="role" type="hidden" value="${principal.memberDto.role }" />
	<input type="hidden" value="${principal.memberDto.user_name }" />
</body>
</html>