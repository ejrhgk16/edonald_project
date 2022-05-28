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


				<section class="home-masthead page-masthead home-section">
					<div class="slideshow" style="position: relative; height: 475px;">
						<div class="cycle-pager slide-pager">
							<c:forEach var="list" items="${list }" varStatus="status">
								<a href="#" class="slide-pager-target ir <c:if test="${status.count eq 1 }">cycle-pager-active</c:if>">${status.index }</a>
							</c:forEach>
						</div>
						<c:forEach var="list" items="${list }" varStatus="status">
							<a class="slide-target slide-item action-ordernow cycle-slide <c:if test="${status.count eq 1 }">active-page</c:if>" style="background-image: url(${list.p_img}); position: absolute; top: 0px; left: 0px; z-index: 97; <c:choose><c:when test="${status.count eq 1 }">opacity: 1;</c:when><c:otherwise>opacity: 0; </c:otherwise></c:choose>" data-value="${status.index }"></a>
						</c:forEach>
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
															${principal.memberDto.deliverAddress.road_address} ${principal.memberDto.deliverAddress.detail_address} </span> <span
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
														<c:forEach var="addr"
															items="${principal.memberDto.addressList}">
															<li role="presentation"
																class="ui-selectmenu-item-selected"
																style="border-bottom: 1px solid #efefef;"><c:choose>
																	<c:when test="${addr.d_key eq 'd'}">
																		<input type="hidden" name="select" value="true">
																	</c:when>
																	<c:otherwise>
																		<input type="hidden" name="select" value="false">
																	</c:otherwise>
																</c:choose> <input type="hidden" name="addr"
																value="${addr.address_seq}"> <a href="#nogo"
																tabindex="-1" role="option" aria-selected="false">${addr.road_address} ${addr.detail_address} </a>
															</li>
														</c:forEach>
													</ul>
												</div>
												<a class="action-secondary action-link action-addaddress"
													href="/member/addAddressPage">주소 추가하기</a>
											</div>

											<fieldset class="form-actions">
												<p class="action-advance-order">
													<a href="#deliveryOptions" data-toggle="modal"
														id="homeOrderBtn"
														class="btn btn-red btn-block btn-xl btn-submit action-orderinadvance">주문하기</a>
												</p>
												<hr class="fading-divider">
												<p class="action-track-order">
													<a href="/member/mypage/trackOrder" data-toggle="modal"
														id="membertrackorder" class="action-link btn btn-block btn-red btn-xl">  주문조회
													</a>
												</p>
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</c:when>
						
						<c:when test="${!empty noLoginMemberDto }">
							
								<div class="panel panel-home-masthead panel-home-masthead-order">
									<div class="panel-heading">
										<div>
											<h2>환영합니다 ${noLoginMemberDto.user_name} 고객님</h2>
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
																${noLoginMemberDto.deliverAddress.road_address}</span> <span
															class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>

													<a class="action-secondary action-link action-addaddress"
														href="/order/nologin/registerAddress">주소 변경하기</a>
														<br>
													<a class="action-secondary action-link action-addaddress"
														href="/ed/logout.do">로그인하여 이용하기</a>	
												</div>

												<fieldset class="form-actions">
													<p class="action-advance-order">
														<a href="#deliveryOptions" data-toggle="modal"
															id="homeOrderBtn"
															class="btn btn-red btn-block btn-xl btn-submit action-orderinadvance">주문하기</a>
													</p>
													<hr class="fading-divider">

												</fieldset>
											</form>
										</div>
									</div>
								</div>
					
						</c:when>
						
						<c:otherwise>
					
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
											class="panel-home-masthead-form" data-required-symbol="false"
											novalidate="novalidate" action="/ed/memberLogin.do">
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
												style="margin-bottom: 4px;" href="/ed/joinPage"> <span>회원가입</span>
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
												href="/order/nologin/phonechek">비회원 주문</a> <a
												class="btn btn-block btn-red btn-xl" href=""
												id="nomembertrackorder">주문조회</a>
										</div>
									</div>
								</div>
							</div>
							</div>
						</c:otherwise>
					</c:choose>
				</section>


				<section class="promotions home-section">
					<div class="row"></div>
				</section>


				<section class="how-it-works home-section">
					<h1 class="section-title">맥딜리버리 이용 방법!</h1>
					<p>
						<a  data-target="#signin" data-toggle="modal"> <img
							class="img-block" alt=""
							src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/how_mcdelivery_works_ko.png">
						</a>
					</p>
				</section>

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
	<input id="role" type="hidden" value="${principal.memberDto.role }" />
	<input type="hidden" value="${principal.memberDto.user_name }" />
</body>
</html>