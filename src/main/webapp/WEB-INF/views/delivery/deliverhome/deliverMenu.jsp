<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!-- Spring Security Login Session 처리 -->
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="/resources/js/main.js"></script>
<script type="text/javascript" src="/resources/js/menu_sidebar.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$(document).on("click", ".action-create",  function(e){
			e.preventDefault();
			var menu_code =  $(this).attr("href");
	
			if('${principal}' == ""){
				alert("로그인을 해주세요");
				window.location.href = "/ed/deliverHome"
			}else{
				$(this).next(".menuInfo").submit();
				
			}
			
		})
	})
</script>



<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache,no-Store">

<title>Menu</title>
<meta name="keywords" content="Menu">
<meta name="description" content="Menu desc">



<link rel="stylesheet" href="/resources/css/main.css">
<!--[if lte IE 9]>
				<link rel="stylesheet" href="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/00/css/main-2.css" />
		<![endif]-->


<link rel="stylesheet" href="/resources/css/local.css">

</head>
<body class="country-82 lang-ko page-menu">

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
						<a class="navbar-brand wos-brand" href=""> <img
							src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/mcdelivery_logo_ko.jpg" alt="McDelivery&amp;trade;">

						</a>
					</div>
					<div class="main-navigation clearfix">
						<ul class="nav navbar-nav">

							<li class="menu-item menu-item-menu selected"><a
								class="menu-item-target" href="/kr/menu.html"> <i
									class="fa mcd mcd-burger icon"></i> 메뉴
							</a></li>

							<li class="menu-item menu-item-account dropdown"><a
								class="menu-item-target dropdown-toggle" href="#signin"
								data-toggle="modal" data-target="#signin"> <i
									class="fa fa-user icon"></i> 마이 페이지
							</a></li>

							<li class="menu-item menu-item-support dropdown "><a
								class="menu-item-target dropdown-toggle" href="#"
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
										class="dropdown-menu-item-target"
										href="http://www.mcdonalds.co.kr/kor/news/detail.do?page=1&amp;seq=517&amp;rnum=1&amp;temp_seq=&amp;searchWord="
										target="_blank">과일 칠러 판매 제외 매장</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href="http://www.mcdonalds.co.kr/uploadFolder/page/p_menu.jsp?staticLinkId=17&amp;locale=ko"
										target="_blank">영양정보/원산지 정보/기타 정보</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href="https://www.mcdelivery.co.kr/m/kr/changeSkin.html?skin=mobile"
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
			<div class="main">
				<div class="row row-narrow">
					<div class="page-sidebar">
						<div class="sidebar-menu" data-sticky="true">
							<div class="food-menu">
								<ul class="primary-menu">

									<li class="primary-menu-item selected"><a
										class="primary-menu-item-target" href="?daypartId=1"><span>일반
												메뉴</span><i class="fa fa-angle-right"></i></a>
										<ul class="secondary-menu">
											<li class="secondary-menu-item selected"><a
												class="secondary-menu-item-target" href="#"><i
													class="fa fa-circle"></i> <span>추천 메뉴</span></a></li>
											<li class="secondary-menu-item "><a
												class="secondary-menu-item-target" href="#"><i
													class="fa fa-circle"></i> <span>버거 &amp; 세트</span></a></li>
											<li class="secondary-menu-item "><a
												class="secondary-menu-item-target"
												href="?daypartId=1&amp;catId=13"><i class="fa fa-circle"></i>
													<span>스낵 &amp; 사이드</span></a></li>
											<li class="secondary-menu-item "><a
												class="secondary-menu-item-target"
												href="?daypartId=1&amp;catId=14"><i class="fa fa-circle"></i>
													<span>음료</span></a></li>
											<li class="secondary-menu-item "><a
												class="secondary-menu-item-target"
												href="?daypartId=1&amp;catId=15"><i class="fa fa-circle"></i>
													<span>디저트</span></a></li>
											<li class="secondary-menu-item "><a
												class="secondary-menu-item-target"
												href="?daypartId=1&amp;catId=16"><i class="fa fa-circle"></i>
													<span>해피밀®</span></a></li>

										</ul></li>

									<li class="primary-menu-item"><a
										class="primary-menu-item-target" href="?daypartId=2"><span>아침
												메뉴</span><i class="fa fa-angle-right"></i></a></li>

								</ul>
							</div>
							<a href="#menu-availability" class="h5 text-link"
								data-toggle="html-popover" data-container="body"
								data-html="true" data-content-selector="#menu-availability"
								data-placement="right" data-original-title="" title=""><i
								class="mcd icon mcd-detail"></i> <span class="text-default">메뉴
									주문 시간</span></a>
							<div id="menu-availability"
								class="popover-wrapper popover-details">
								<div class="popover-wrapper">
									<table class="table-default table-menu-availability">
										<thead>
											<tr>
												<td></td>
												<th class="menu-type">아침 메뉴</th>
												<th class="menu-type">일반 메뉴</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th class="days">월-금</th>
												<td><div>3:50 AM - 10:20 AM</div>
													<div class="last-order">(마지막 주문 10:20 AM)</div></td>
												<td><div>10:20 AM - 3:50 AM</div>
													<div class="last-order">(마지막 주문 3:50 AM)</div></td>
											</tr>
											<tr>
												<th class="days">토, 일 &amp; <br>공휴일
												</th>
												<td><div>3:50 AM - 10:20 AM</div>
													<div class="last-order">(마지막 주문 10:20 AM)</div></td>
												<td><div>10:20 AM - 3:50 AM</div>
													<div class="last-order">(마지막 주문 3:50 AM)</div></td>
											</tr>
										</tbody>
									</table>

								</div>
							</div>

						</div>
					</div>
					<div class="col-xs-10 pull-right">
						<div class="clearfix">
							<div class="page-breadcrumbs pull-left">
								<ol class="breadcrumb type-sans">
									<li><a href="">메뉴</a></li>

									<li class="active">추천 메뉴</li>

								</ol>
							</div>

						</div>
						<div class="page-content">
							<div class="row row-narrow">
								<div class="col-xs-8">
									<div id="product-cards" class="product-cards"
										data-equal-height=".product-card--standard .product-title, .product-card--standard .product-info">
										<div class="row row-narrow">
										<script type="text/javascript">
										 function comma(str) {
										     str = String(str);
										     return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
										 }

										
											<c:forEach items="${list}" var="list" varStatus="status">
											var price = ${list.price};
											price = comma(price);
											</script>
												<div class="product-card product-card--standard">
													<div class="panel panel-default panel-product">
														<div class="panel-body">
															<img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/${list.img_path}" class="img-block">
															<h5 class="product-title" style="height: 30.8px;">${list.name}</h5>
															<div class="product-badges"></div>
														</div>
														<div class="panel-footer">
															<div class="row row-narrow">
																<div class="product-info" style="height: 78.3px;">
																	<div class="product-details">
																		<div class="product-cost">
																			가격 ₩ <span class="starting-price"><script type="text/javascript">document.write(price);</script></span>
																		</div>
																		<div class="product-nutritional-info">
	
																			<span class="text-default">${list.kcal} Kcal</span>
																		</div>
	
																		<div class="product-allergen-info">
																			<div>
																				<a href="#" class="action-link"
																					data-toggle="html-popover" data-placement="bottom"
																					data-html="true"
																					data-content-selector=".popover-details"
																					data-original-title="" title="">
																					<i class="mcd icon mcd-allergen"></i> 
																					<span class="text-default">알레르기 정보</span>
																				</a>
																			
																				<div class="popover-details">
																					<div class="popover-wrapper type-sans">
																						<h4>${list.name }</h4>
																						<div>${list.name } (${list.allergy})</div>
																					</div>
																				</div>
																			</div>
																		</div>
	
																	</div>
																</div>
																<div class="product-controls">
																	<!-- MDSAP-11470 - INC10164449 Google Analytics data is missing due to incorrect implementation. -->
																	<!-- Point 1:  productClick - needs to be fixed. Pricing should not show currency or commas. The implementation can be found in Global GTM implementation guide page 26 and 27 -->
	
																	<!-- MDSAP-11470 - INC10164449 Google Analytics data is missing due to incorrect implementation. -->
																	<!-- Point 1:  productClick - needs to be fixed. Pricing should not show currency or commas. The implementation can be found in Global GTM implementation guide page 26 and 27 -->

																		<a data-productid="789" class="btn btn-block action-create btn-yellow" href="${list.code}">													
																		Order
																		</a>
																		
																		<form action="/member/orderMenu" method="post" class="menuInfo">
																			<input type="hidden" name="code" value="${list.code}">
																			<input type="hidden" name="name" value="${list.name}">
																			<input type="hidden" name="kcal" value="${list.kcal}">
																			<input type="hidden" name="img_path" value="${list.img_path}">
																			<input type="hidden" name="status" value="${list.status}">
																			<input type="hidden" name="type" value="${list.type}">
																			<input type="hidden" name="price" value="${list.price}">
																			<input type="hidden" name="allergy" value="${list.allergy}">
																			<input type="hidden" name="seq" value="${list.seq}">

																		</form>
																	
																</div>
															</div>
														</div>
													</div>
												</div>
											<script type="text/javascript">
											</c:forEach>
											</script>
											
										</div>
									</div>

								</div>
								<div class="col-xs-4">
									<div class="panel panel-basic panel-narrow">
										<div class="panel-section-group">
											<section class="panel-section how-it-works">
												<a href="#signin" data-toggle="modal" data-target="#signin"><img
													src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/how_mcdelivery_works_portrait_ko.png"></a>
											</section>

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
			<div class="footer-nav">
				<div class="container">
					<div class="row">

						<div class="column">
							<h3 class="list-group-title">메뉴</h3>
							<ul class="list-unstyled">
								<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=10">추천 메뉴</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=11">버거 &amp; 세트</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=13">스낵 &amp; 사이드</a>
								</li>
								<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=14">음료</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=15">디저트</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=16">해피밀®</a></li>
								<li><a class="menu-item-target" target="_blank"
									href="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/82/mcdelivery_menu_82_ko.pdf">메뉴
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



					<img class="logo" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/mcdelivery_logo_ko.jpg" alt="">


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
												<a class="action-link" href="">비밀번호 찾기</a>
											</p>


										</fieldset>
									</form>

									<div
										class="frament-new-user section-border-top margin-bottom-0 centered-text">

										<a class="btn btn-block btn-red btn-xl"
											onclick="                   dataLayer.push({                    'event':'trackEvent',                    'eventDetails.category':'i am new',                    'eventDetails.action':'click popup modal',                    'eventDetails.label':'register now'                   });                  "
											href=""> <span>회원가입</span>
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
							value="59a76edb4778114cb3a1ecdcd891bc82">
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








	<!-- 
	[#trackOrder.modal] -->

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


							<div class="time timer text-din timer-clock session-timer">14:23</div>


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

	<!-- [#signin.modal] -->

	<!-- [/#signin.modal] -->

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

	<div class="popover fade right in" role="tooltip"
		style="top: 365.034px; left: 127.602px; display: none;">
		<div class="arrow" style="top: 50%;"></div>
		<h3 class="popover-title" style="display: none;"></h3>
		<div class="popover-content">
			<div class="popover-wrapper">
				<table class="table-default table-menu-availability">
					<thead>
						<tr>
							<td></td>
							<th class="menu-type">아침 메뉴</th>
							<th class="menu-type">일반 메뉴</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th class="days">월-금</th>
							<td><div>3:50 AM - 10:20 AM</div>
								<div class="last-order">(마지막 주문 10:20 AM)</div></td>
							<td><div>10:20 AM - 3:50 AM</div>
								<div class="last-order">(마지막 주문 3:50 AM)</div></td>
						</tr>
						<tr>
							<th class="days">토, 일 &amp; <br>공휴일
							</th>
							<td><div>3:50 AM - 10:20 AM</div>
								<div class="last-order">(마지막 주문 10:20 AM)</div></td>
							<td><div>10:20 AM - 3:50 AM</div>
								<div class="last-order">(마지막 주문 3:50 AM)</div></td>
						</tr>
					</tbody>
				</table>

			</div>
		</div>
	</div>
</body>
</html>