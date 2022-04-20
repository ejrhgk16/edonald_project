<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../main.css">
<script type="text/javascript" src="../../js/jquery-3.6.0.js"></script>
<script>
	$(document).ready(function(){
		
		
		$("a[href='#enter-promocode']").on('click',function(evt){
			evt.preventDefault();
			
			
			
			if( !$('#enter-promocode').hasClass("in")){	
				$(this).addClass("collapsed");
				$(this).attr('aria-expanded','true');
				$('#enter-promocode').addClass('in');
			}else{
				$(this).removeClass("collapsed");
				$(this).attr('aria-expanded','false');
				$('#enter-promocode').removeClass('in');	
			}
			
		});
	});
</script>
</head>
<body class="country-82 lang-ko page-menu">

	<noscript>
		<iframe src="//www.googletagmanager.com/ns.html?id=GTM-KM4PZ8"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	


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





							<li class="list-item"><img
								src="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/00/img/icon_profile_gray.png"
								alt="Profile" width="20" class="profile-grey-avator"></li>





							<li class="list-item"
								onclick="console.log('signin_topright'); dataLayer.push({          'event': 'trackEvent',          'vpv': 'vpv_signin_topright',          'eventDetails.category': 'signin',          'eventDetails.action': 'click',          'eventDetails.label': 'signin_topright'         });">
								<a class="list-item-target" href="#alertCartCleared-signin"
								data-toggle="modal" data-target="#alertCartCleared-signin">로그인</a>
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
							src="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/82/img/mcdelivery_logo_ko.jpg"
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
								class="menu-item-target dropdown-toggle"
								href="#alertCartCleared" data-toggle="modal"
								data-target="#alertCartCleared"> <i class="fa fa-user icon"></i>
									마이 페이지
							</a></li>





							<li class="menu-item menu-item-support dropdown "><a
								class="menu-item-target dropdown-toggle" href=""
								data-toggle="dropdown"> <i class="fa fa-phone icon"></i>
									기타정보<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href="https://www.mcdelivery.co.kr/kr/support-tnc.html?staticLinkId=7&amp;locale=ko"
										target="_self">이용약관</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href="https://www.mcdelivery.co.kr/kr/support-privacy.html?locale=ko"
										target="_self">개인정보 처리방침</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href="https://www.mcdelivery.co.kr/kr/support-faq.html?staticLinkId=10&amp;locale=ko"
										target="_self">자주 묻는 질문</a></li>
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
										<div class="time timer text-din timer-clock menuswitch-timer">36:01</div>
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
										<div class="time timer text-din timer-clock storeclose-timer">36:01</div>
									</div>
									<div class="col-xs-8 timer-wrapper">
										<div class="alert-content text-left">
											<h1 id="countdowntimer-title">배달 가능 시간</h1>
											<p>해당 지역의 매장은 오후 10:00 PM 까지 배달 가능합니다.</p>
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
			
			<!--  여기서부터 로딩 -->
			
			<div class="main" role="main">


				<div class="clearfix">
					<div class="page-title pull-left">
						<h1>
							<span>주문 확인</span>
						</h1>
					</div>
					<div class="pull-right">
						<div class="well well-sm ordering-steps clearfix">
							<div class="steps-header">1-2-3단계로 간편하게 주문하기</div>
							<div class="steps">
								<div class="step">
									<span class="step-number text-din">1.</span><span>배달 받을
										장소</span>
								</div>
								<div class="step">
									<span class="step-number text-din">2.</span><span>주문 선택</span>
								</div>
								<div class="step current">
									<span class="step-number text-din">3.</span><span>결제</span>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="page-content">

					<div class="row row-narrow">
						<div class="col-xs-8">
							<form name="form_my_order" id="form_my_order" role="form"
								data-required-symbol="*" method="post"
								action="/kr/submit-order-payment.html" novalidate="novalidate">
								<div class="panel panel-lg panel-default">
									<div class="panel-heading">
										<h3>
											<span>내 주문 정보</span>
										</h3>
									</div>
									<div class="panel-body">
										<section class="panel-section my-orders">
											<table class="table-default table-order-details">
												<tbody>


													<!--  세팅할 데이터 -->

													<tr>
														<td class="quantity">1</td>
														<td class="picture-img"><img
															src="//www.mcdelivery.co.kr/kr//static/1648609546423/assets/82/products/7991.png"
															class="img-block" alt="">
															<div class="controls">
																<a class="text-gray-light btn-action action-edit"
																	href="/kr/menu.html#edit/1" title="변경"><i
																	class="mcd mcd-edit icon"></i></a> 
																	<a class="text-gray-light btn-action action-delete"
																	href="/kr/configurator/deletecart.json?cartId=1"
																	title="삭제"
																	onclick="onProductRemoveClick({ 'name':'맥딜리버리 상하이 버거 플러스팩','id':'7991','price':'13000.000','brand':'McDonalds','variant':'','quantity':'1'})"><i
																	class="mcd mcd-remove icon"></i></a>
															</div></td>
														<td class="product-name">
															<div>맥딜리버리 상하이 버거 플러스팩</div>
															<ul>
																<li>단품 - 맥스파이시® 상하이 버거</li>
																<li>단품 - 맥너겟® 6조각</li>
																<li>단품 - 에그 불고기 버거</li>
																<li>랜덤소스</li>
																<li>코카-콜라 - 미디엄</li>
																<li>품절 시 맥너겟/치즈스틱으로 배송될 수 있습니다. 장바구니를 확인해주세요.</li>
															</ul>


														</td>
														<td class="cost">₩ 13,000</td>
													</tr>





												</tbody>
											</table>
										</section>


										<section class="panel-section order-remarks">
											<div class="form-group">
												<label for="form_review_order_remarks" class="field-label"><h3>배달시
														요청 사항:</h3></label> <input type="text" class="form-control input-lg"
													name="form_review_order_remarks"
													id="form_review_order_remarks"
													data-rule-verifyspecialcharacters="true"
													data-msg-verifyspecialcharacters="form.reviewconfirm.orderverification.orderremark.error.invalid"
													value="">
											</div>
											<label class="control-hint" for="form_review_order_remarks">"&gt;",
												"", ";"와 같은 특정 특수문자는 사용 불가합니다.</label>
										</section>
									</div>



								</div>
								<input type="hidden" name="csrfValue"
									value="adbabdbe39b6584f2496831725874eb3">
							</form>
						</div>
						<div class="col-xs-4">
							<!-- <form name="form_order_summary" id="form_order_summary" th:action="@{/applyCoupon.html}" method="post" role="form" data-required-symbol="*" accept-charset="utf-8">  -->
							<div class="panel panel-basic panel-narrow order-summary">
								<div class="panel-heading">
									<h3 class="text-center">주문 요약</h3>
								</div>
								<div class="panel-section-group">
									<section class="panel-section section-delivery-address">
										<table class="table-default table-delivery-address">
											<tbody>
												<tr>
													<th scope="row"><span>배달 주소:</span></th>
													<td><div>서울특별시 종로구 돈의동 103-15 4층 it뱅크</div></td>
												</tr>
											</tbody>
										</table>
									</section>

									<section class="panel-section section-delivery-datetime">
										<table class="table-default table-delivery-datetime">
											<tbody>
												<tr>
													<th scope="row">예상 배달 시간:</th>
													<td>
														<div class="when-to-deliver"></div>
														<div class="how-long-to-deliver">

															<span>2022/04/01 15:15</span>


														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</section>
									
									
									
									<section class="panel-section section-promocode">
										<div>
											<a href="#enter-promocode"
												class="action-link action-edit action-edit-promocode collapsed"
												data-toggle="collapse"> <span>쿠폰 코드 입력</span> <i
												class="fa" ></i></a>
											<div id="enter-promocode" class="collapse">
												<form class="form-promocode" role="form" id="form_promocode"
													name="form_promocode" method="post" accept-charset="UTF-8"
													action="/kr/applyCoupon.html">

													<div class="form-group">
														<div class="input-group">
															<input type="text" name="couponCode" id="couponCode"
																class="form-control">
															<div class="input-group-btn">
																<button type="submit" class="btn btn-red">적용</button>
															</div>
														</div>
														<label for="enter-promocode" class="control-hint"></label>

													</div>
													<input type="hidden" name="csrfValue"
														value="adbabdbe39b6584f2496831725874eb3">
												</form>
											</div>

										</div>









									</section>
									<section class="panel-section section-cost-breakdown">
										<table class="table-default table-cost">
											<tfoot class="total">
												<tr>
													<th scope="row"><span>총 주문합계:</span></th>
													<td><span>₩ 13,000</span></td>
												</tr>
											</tfoot>
											<tbody>



												<tr>
													<th scope="row"><span>소액 주문비:</span></th>
													<td>₩ 0</td>
												</tr>

												<!-- MDSAP-11635-v1 -->

												<!-- MDSAP-11635-v1 -->



											</tbody>

										</table>

										<p class="notes">맥딜리버리 가격은 매장과 상이하며, 매장 별 소액 주문비가 다르게 운영될
											수 있는 점 이용에 참고 부탁 드립니다.</p>
										<fieldset class="form-actions text-center">
											<div class="form-group">
												<button type="button" class="btn btn-red btn-block btn-xl"
													data-associated-form="#form_my_order">
													<span>주문 확인</span>
												</button>
											</div>
											<div class="form-group">
												<a class="action-secondary action-link "
													href="/kr/menu.html"><i class="fa fa-caret-right"></i>
													&nbsp; <span>항목 추가</span></a>
											</div>
										</fieldset>
									</section>
									<!-- section class="panel-section">
							<img src="http://placehold.it/300x100" alt="" class="img-block promotional-banner" />
						</section-->
								</div>
							</div>
							<!-- </form>  -->
						</div>
					</div>
				</div>


				<div id="loading-view" class="loading-view hidden">
					<div class="loading">
						<span class="loading-icon"></span>
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
								<li class="menu-item"><a class="menu-item-target"
									href="https://www.mcdelivery.co.kr/kr/support-tnc.html?staticLinkId=7&amp;locale=ko"
									target="_self">이용약관</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="https://www.mcdelivery.co.kr/kr/support-privacy.html?locale=ko&amp;locale=ko"
									target="_self">개인정보 처리방침</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="https://www.mcdelivery.co.kr/kr/support-faq.html?staticLinkId=10&amp;locale=ko"
									target="_self">자주 묻는 질문</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="http://www.mcdonalds.co.kr/kor/news/detail.do?page=1&amp;seq=517&amp;rnum=1&amp;temp_seq=&amp;searchWord=&amp;locale=ko"
									target="_blank">과일 칠러 판매 제외 매장</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="http://www.mcdonalds.co.kr/uploadFolder/page/p_menu.jsp?staticLinkId=17&amp;locale=ko"
									target="_blank">영양정보/원산지 정보/기타 정보</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="https://www.mcdelivery.co.kr/m/kr/changeSkin.html?skin=mobile&amp;locale=ko"
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
				Store Number:1140396<br>:NpVersion: 6.1<br>Store Status:<br>1
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
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">



					<img class="logo"
						src="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/82/img/mcdelivery_logo_ko.jpg"
						alt="">


					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				








	<div id="promo-removed-alert-modal" data-backdrop="static"
		class="modal-alert modal fade" role="dialog"
		aria-labelledby="promo-removed-alert-title" aria-hidden="true"
		tabindex="-1>">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="promo-removed-alert-title">사용 가능한 프로모션이 없습니다</h1>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<div class="alert-content promo-removed-alert-desc">
						<p>맥딜리버리를 이용해 주셔서 감사합니다. 해당 프로모션은 사용 가능한 횟수가 모두 사용되어 현재 사용
							가능하지 않습니다.:</p>
						<ul class="promo-removed-alert-promo-list">

						</ul>
						<button data-dismiss="modal" aria-hidden="true"
							class="btn btn-default btn-red btn-lg text-ucase">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>

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


							<div class="time timer text-din timer-clock session-timer">14:38</div>


							<div class="time-disclaimer">분 남았습니다</div>
						</div>
						<div class="col-xs-8 timer-wrapper">
							<div class="alert-content text-left">

								<h1 id="countdowntimer-title">아직도 주문 중이신가요?</h1>


								<p>일시적으로 중단되었습니다. 주문을 계속하시겠습니까?</p>
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











	<script>
			/*<![CDATA[*/
				$(function() {
					$('.global-privacy-notice').removeClass('show');
				});
			/*]]>*/
		</script>

	<script>
			/*<![CDATA[*/
			$(document).on('ready', function() {
				var isPlexureAuthEnabled = false;
				if(isPlexureAuthEnabled){
					$.ajaxPrefilter(function(options, originalOptions, jqXHR) {
						jqXHR.setRequestHeader("csrfValue", 'adbabdbe39b6584f2496831725874eb3');
					});

					var sendingOtp = false;
					$("#resend-otp-link").on('click', function () {
						var mfaToken = $('#form_accountverification_mfa').val();
						if(!sendingOtp){
							console.log("Handling click on resend otp.");
							sendingOtp = true;
							$('html').addClass("wait");
							$.ajax( {
								type: 'POST',
								url: '/kr/ajax/resendOtp.json',
								complete: function () {
									$('html').removeClass("wait");
									sendingOtp = false;
								},
								data: JSON.stringify({ mfaToken: mfaToken }),
								contentType: "application/json; charset=utf-8",
								dataType: "json",
								success: function(data) {
									if(data.code === 1){
										console.log("Otp sent successfully.");
									} else {
										console.error("Error trying to send otp. [errCode=" + data.code + "]");
										$('#accountVerificationOTP').modal('hide');
										//User is locked
										if (data.code === -1049) {
											console.error("Showing account locked modal.");
											$('#authorizationPinError-accountVerification').modal('show');
										} else {
											console.error("Redirecting to home.html");
										}
									}
								}
							});
						}
					});
				}
			});
			/*]]>*/
		</script>

	<script>
			/*<![CDATA[*/
			$(function(){
				var removedPromotions = [] || [];

				var statusRemoved = 'removed';
				removedPromotions = removedPromotions.filter(lp => lp.status === statusRemoved);

				console.log("removedPromotions: ");
				console.log(removedPromotions);
				if(removedPromotions.length > 0){
					console.log("Before removedPromotions popup...")
					$("#promo-removed-alert-modal").modal('show');
				};
			});
			/*]]>*/
		</script>
	<script>
			/*<![CDATA[*/
				$(function() {
					var autoCheckEnabled = true;	
					var remCheckInitialised = false;
	
					$("#modal_login_rememberme").on("ifChecked", function(event){
						if(remCheckInitialised) {
							$("#rememberMe").modal("show"); 
						} 			
					});
					
					$(".signin-modal").on("show.bs.modal", function(event){ 
						remCheckInitialised = false;
						
						console.log("signind-modal show event...")
						console.log("auto check enabled: " + autoCheckEnabled);
						
						if(autoCheckEnabled){
							$("#modal_login_rememberme").iCheck("check");		
						}
						remCheckInitialised = true;
					});
					
				});
			/*]]>*/
		</script>

	<script>
			/*<![CDATA[*/
				$(function() {
					$('.global-privacy-notice').removeClass('show');
				});
			/*]]>*/
		</script>


	<script>
			$(document).ready(function() {
				console.log("doc ready");
                $(":input[name= 'form_deliveryoptions_datetime']").on('change', function() {
					console.log("Delivery option date-time changed")
                    var value = $('input[name=form_deliveryoptions_datetime]:checked').attr("value");
                    if (value == "later") {
                        $('#form_deliveryoptions_time').selectmenu('enable');
                        $('#form_deliveryoptions_date').selectmenu('enable');
						$('.deliverydatetime-group').show();
                    } else {
                        $('#form_deliveryoptions_time').selectmenu('disable');
                        $('#form_deliveryoptions_date').selectmenu('disable');
						$('.deliverydatetime-group').hide();
                    }

                });
                $(":input[name= 'form_deliveryoptions_datetime']").trigger("change");
				console.log("onChange set");
    });
			</script>

	<script>
			$(document).ready(function() {
				console.log("doc ready2");
                $("#form_deliveryoptions_datetime_later").on('change', function() {
					console.log("form_deliveryoptions_datetime_later changed")
					$('.deliverydatetime-group').show();   
                });
				
				$("#form_deliveryoptions_datetime_now").on('change', function() {
					console.log("form_deliveryoptions_datetime_now changed")
					$('.deliverydatetime-group').hide();   
                });
				
				$("#form_deliveryoptions_datetime_later").on('ifChecked', function() {
					console.log("form_deliveryoptions_datetime_later ifChecked")
					$('.deliverydatetime-group').show();   
                });
				
				$("#form_deliveryoptions_datetime_now").on('ifChecked', function() {
					console.log("form_deliveryoptions_datetime_now ifChecked")
					$('.deliverydatetime-group').hide();   
                });
				
				console.log("onChange set2");
    });
		</script>

	<script>
/*<![CDATA[*/
	$(function() {
		
		if(false){
			$('body').on('click', '.menu-item-menu .menu-item-target, .action-ordernow, a[href*="account-order-history"] , a[href*="account-favourites"]', function(event) {
					event.preventDefault();
					$('#deliveryOptions').one('show.bs.modal', function() {
							$('#form_deliveryoptions_datetime_later').iCheck('check');
					}).modal('show');
			});
		  }
		/* [#deliveryOptions.modal] */
    	$('#form_deliveryoptions').deliveryOptions({
    		// copy
    		timeInputHint: '\uBC30\uB2EC \uBC1B\uC73C\uC2E4 \uC2DC\uAC04\uC744 \uC120\uD0DD\uD574 \uC8FC\uC138\uC694',
    			
    		// api endpoints
    		getTimeSlotsUrl: '/kr/ajax/getTimeSlots.json',
    		validateUrl: '/kr/validate/validateStoreStatus.json',
			
			// status codes
			STATUS_CODE_ADDRESS_OOB:  416,
			STATUS_CODE_STORE_CLOSED: 503,
			STATUS_CODE_ADDRESS_OK:	  200
    	});
		/* [/#deliveryOptions.modal] */
		$.ajaxPrefilter(function(options, originalOptions, jqXHR) {
			jqXHR.setRequestHeader("csrfValue", 'adbabdbe39b6584f2496831725874eb3');
		});
		var signin = null;
		if(signin != null){
			$("#signin").modal();
			var loginErrMsg = $("form[action*=login] #errorId");
			if($(loginErrMsg)[0]){
				$(loginErrMsg).clone().appendTo($("#signin fieldset:first"));
			}
		}
	});	
	
	
	$(".isLoginSuccessGtmUnenabled").click(function(event){
		event.preventDefault();
		if ($("#form_login_modal").valid()) {
			// Check that field is not empty
		    var username = $('#form_login_modal_username'); 
		    var password = $('#form_login_modal_password');
		    var usernameVal = username.val(); 
			var passwordVal = password.val();
			
			$("#errorTips").text("");
			$("#errorTips").removeClass("error");
			$("#errorTips").css({"display":"none"});

			// If field is not empty, ajax validation
	        // error.hide();
	        $.ajax('/kr/login/authenticate.json', {
	            data: {
	            	Username : usernameVal,
	                Password : passwordVal
	            },
	            method:"POST",
	            success: function(response, status, xhr) {
					if(response.loginRs == "1"){						
						if (window.location.href.indexOf("offer-wallet-unsigned.html") >= 0) {
							var redirectUrl = response.redirectUrl.replace("home.html", "offers.html");							
							response.redirectUrl = redirectUrl;
						}
						if (window.location.href.indexOf("user-deregistration.html") >= 0) {
							location.reload();
						}
						window.location.replace(response.redirectUrl);
					}else{
						$("#errorTips").addClass("error");
						$("#errorTips").text(response.errorCode);
						$("#errorTips").css({"display":"block"});
					}
	            }
	        });
		}
	});
	
	var isTrackOrderLogin = false;
	$(".track-order-flag").click(function(event){
	    isTrackOrderLogin = true;
	});
	
	$(".isLoginSuccessGtmEnabled").click(function(event){
		event.preventDefault();
		if ($("#form_login_modal").valid()) {

			dataLayer.push({
				'event':'trackEvent',
				'vpv':'vpv_signin',
				'eventDetails.category':'signin',
				'eventDetails.action':'click',
				'eventDetails.label':'signin_popup'
			});

			// Check that field is not empty
		    var username = $('#form_login_modal_username'); 
		    var password = $('#form_login_modal_password');
		    var usernameVal = username.val(); 
			var passwordVal = password.val();
			
			$("#errorTips").text("");
			$("#errorTips").removeClass("error");
			$("#errorTips").css({"display":"none"});

			// If field is not empty, ajax validation
	        // error.hide();
	        $.ajax('/kr/login/authenticate.json', {
	            data: {
	            	Username : usernameVal,
	                Password : passwordVal,
	                IsTrackOrderLogin : isTrackOrderLogin
	            },
	            method:"POST",
	            success: function(response, status, xhr) {
					if(response.loginRs == "1"){
						if (window.location.href.indexOf("user-deregistration.html") >= 0) {
							location.reload();
						} else {
							window.location.replace(response.redirectUrl);
						}
					}else{
						$("#errorTips").addClass("error");
						$("#errorTips").text(response.errorCode);
						$("#errorTips").css({"display":"block"});
					}
	            }
	        });
		}
	});

	$(document).on({
		'wos.session.ending.warning1': function() {
			$('.inline-alert.alert-session-timeout').removeClass('hidden');
		},
		'wos.session.ending.warning2': function() {
			if (true) {
				console.log('gtm_final_timer');
				dataLayer.push({
					'event':'trackEvent',
					'vpv': 'vpv_final_timer_popup',
					'eventDetails.category':'error_popups',
					'eventDetails.action':'inactive',
					'eventDetails.label':'final_timer'
				});
			}
			$('.modal-alert.alert-session-timeout').modal('show');
		},
		'session.action.continue': function() {
			$.get('/kr/ajax/ping.json', function(response) {
				if(!response.isExpired){
					$(document).trigger('wos.session.reset');
				}else{
					window.location= '/kr/expireSession.html';
				}
			});
		},
		'wos.session.reset': function() {
			$('.inline-alert.alert-session-timeout').addClass('hidden');
		},
		'wos.session.ended': function() {
			if (true) {
				if(!false){
					dataLayer.push({
						 'event': 'trackEvent',
						 'vpv': 'vpv_order_verification/unable_to_save_order_otp_session_ended',
						 'eventDetails.category': 'cart clearance',
						 'eventDetails.action': 'cart is cleared',
						 'eventDetails.label': 'unable to save order as session timeout'
						});
				}
			window.location= '/kr/sessionEnded.html'; }
		}
	});	
	
	$(document.body).sessiontimer({
		duration: 900000, //  x mins * 60 * 1000
		triggers: [
			{
				when: 0, // x mins * 15 * 60 * 1000
				eventName: 'wos.session.ending.warning1'
			},
			{
				when: 300000, // x mins * 60 * 1000
				eventName: 'wos.session.ending.warning2'
			}
		]
	});
	
	$(document).on({
	    'wos.menuswitch.ending.warning1': function() {
	        if (!$.cookie('wos.menuswitch.warning1.status')) {
	            $.cookie('wos.menuswitch.warning1.status', 'show');
	        }
	 
	        if ($.cookie('wos.menuswitch.warning1.status') == 'show') {
	            $('.inline-alert.alert-menuswitch-timeout').removeClass('hidden');
	        } else {
	            $('.inline-alert.alert-menuswitch-timeout').addClass('hidden');
	        }
	    },
	    'wos.menuswitch.ending.warning2': function() {
	        if(!$.cookie('wos.menuswitch.warning2.status')) {
	            $.cookie('wos.menuswitch.warning2.status', 'show');
	        }
	 
	        if ($.cookie('wos.menuswitch.warning2.status') == 'show') {
	            $('.modal-alert.alert-menuswitch-timeout').modal('show');
	        } else {
	            $('.modal-alert.alert-menuswitch-timeout').modal('hide');
	        }
	    },
	    'wos.menuswitch.warning1.closed': function() {
	        $.cookie('wos.menuswitch.warning1.status', 'close');
	        $('.inline-alert.alert-menuswitch-timeout').addClass('hidden');
	    },
	    'wos.menuswitch.warning2.closed': function() {
	        $.cookie('wos.menuswitch.warning2.status', 'close');
	    },
	    'wos.menuswitch.ended': function() {
	        $.removeCookie('wos.menuswitch.warning1.status');
	        $.removeCookie('wos.menuswitch.warning2.status');
	 
	        $('.modal-alert.alert-menuswitch-timeout').modal('hide');
	        //window.location = '/kr/home.html';
			if (0 != 0) {
	        	window.location = 'changeMenu.html?changeMenuTo=0';
	        }
	    },
	    'menuswitch.action.ok': function() {
	        $.cookie('wos.menuswitch.warning2.status', 'close');
	    }
	}); 
	 
	$(document.body).menuswitchtimer({
	    duration: 27383000, // 5 mins left to menu switch off
	    triggers: [
	        {
	            when: 900000, // 3 mins before menu switch over, trigger this event
	            eventName: 'wos.menuswitch.ending.warning1'
	        },
	        {
	            when: 300000, // 1 min before menu switch over, trigger this event
	            eventName: 'wos.menuswitch.ending.warning2'
	        }
	    ]
	});

	$(document).on({'wos.storeclose.ending.warning1': function() {
			if(!$.cookie('wos.storeclose.warning1.status')) {
	            $.cookie('wos.storeclose.warning1.status', 'show');
	        }
	        if ($.cookie('wos.storeclose.warning1.status') == 'show') {
				$('.modal-alert.modal-countdownstoreclosetimer').modal('show');
			} else {
				$('.modal-alert.modal-countdownstoreclosetimer').modal('hide');
			}
		},
		'wos.storeclose.ended': function() {
			$.removeCookie('wos.storeclose.warning1.status');
			window.location = '/kr/homeStoreClosed.html';
		},
		'storeclose.action.continue': function() {
			$.cookie('wos.storeclose.warning1.status', 'close');
		}
	});
	 
	if (true) {
		$(document.body).storeclosetimer({
			duration: 27383000,
			triggers: [
		        {
		        	when: (5 * 60 * 1000),
		        	eventName: 'wos.storeclose.ending.warning1'
		        }
		    ]
		});
	}
	
	function manageAlerts() {
	    var menuswitchTimer = $(document.body).data('plugin_menuswitchtimer');
	    var sessionTimer = $(document.body).data('plugin_sessiontimer');
	    if (menuswitchTimer.remaining > 0) {
		    menuswitchTimer.enableTrigger(menuswitchTimer.remaining < sessionTimer.remaining);
		    sessionTimer.enableTrigger(!menuswitchTimer.enabled);
	    } else {
	    	sessionTimer.enableTrigger(true);
	    	menuswitchTimer.enableTrigger(false);
	    }
	    setTimeout(manageAlerts, 1000);
	}
	
	manageAlerts();
		
/*]]>*/
</script>


	<div>



		<div>
			<script type="text/javascript">
/*<![CDATA[*/
$(function() {	
		/* [/#page-content] */
		
		  $('#form_login_masthead').validate({
		      	rules: {
		      		userName: {
						required: true,
						email: true
					},
		
		    		password: {
						required: true
					}
		      	},
		    	messages: {
		    		userName: {
						required: '\uC774\uBA54\uC77C \uC8FC\uC18C\uB97C \uC785\uB825\uD558\uC154\uC57C \uB429\uB2C8\uB2E4.',
						email: '\uC798\uBABB\uB41C \uC774\uBA54\uC77C \uC8FC\uC18C\uC785\uB2C8\uB2E4.'
					},
		
		    		password: {
						required: '\uBE44\uBC00\uBC88\uD638\uB97C \uC785\uB825\uD558\uC154\uC57C \uB429\uB2C8\uB2E4'
					}
		    	},
		    	errorPlacement: function(error, element) {
					if (element.attr("name") == "userName" || element.attr("name") == "password" ) {
						$("#form_login_masthead ul").remove(); 
						$('#form_login_masthead_password').parents('.textfield-list-group').append(error);
					} else {
						 error.insertAfter(element);
					}
				}
	});
	/* [/#page-content] */
	
             
      /* [#trackOrder.modal] */
 	        $('#form_trackOrder').validate({
	        	rules: {
	        		orderNum: {
	        			required: true,
	        			remote: {
	                    	param: {
	                    		url: '/kr/validate/trackOrder.json',
		                    	data: {
		                    		orderNumber: function() {
		                    			console.log('orderNumber : ', $('#form_trackOrder_orderNum').val());
		                    			return $('#form_trackOrder_orderNum').val();
		                    		}
		                    	},
		                    		method:"POST",
 	       							complete: function(xhr, status) {
 	       							var response = xhr.responseJSON;
               						if(response.valid==false)
               							{
    	                            $('#form_trackOrder .form-group .error')
    	                                .html(response.message);
               							}
          						 }
	                    	}
	        		}
	        	}
	        	},
	            messages: {
	                orderNum: {
	                    required : '\uC8FC\uBB38 \uBC88\uD638\uB97C \uC785\uB825\uD574 \uC8FC\uC2DC\uAE30 \uBC14\uB78D\uB2C8\uB2E4.'
	                }
	            }
	        });
		/* [/#trackOrder.modal] */
		
  	$('#form_login_modal').validate({
		  		rules: {
			      		userName: {
						required: true,
						email: true
					},
		
		    		password: {
						required: true
					}
			      	},
		    	messages: {
		    		userName: {
						required: '\uC774\uBA54\uC77C \uC8FC\uC18C\uB97C \uC785\uB825\uD558\uC154\uC57C \uB429\uB2C8\uB2E4.',
						email: '\uC798\uBABB\uB41C \uC774\uBA54\uC77C \uC8FC\uC18C\uC785\uB2C8\uB2E4.'
					},
		
		    		password: {
						required: '\uBE44\uBC00\uBC88\uD638\uB97C \uC785\uB825\uD558\uC154\uC57C \uB429\uB2C8\uB2E4'
					}
		    	},
	    	errorPlacement: function(error, element) {
			    var ElementParent = element.parent();
			    if (element.attr("name") == "userName" || element.attr("name") == "password" ) {
			    	$('#form_login_modal_password').parents('.textfield-list-group').append(error);
			    	$("#form_login_masthead #errorId").remove();
			    } else {
			    	error.insertAfter(element);
			    }
			}
	    });  


	/* [#signin-facebook.modal] */

    $(document).on('facebook.linkaccount.action.no', function(event) {
        setTimeout(function() {
            $('#signin-facebook').one('show.bs.modal', function() {
                $('#form_deliveryoptions_datetime_later').prop('checked', true);
            }).modal('show');
        }, 5);
        
    });




    /* [#signin-facebook-linkaccount.modal] */

    $(document).on('facebook.linkaccount.action.yes', function(event) {
        setTimeout(function() {
            $('#signin-facebook-linkaccount').one('show.bs.modal', function() {
                $('#form_deliveryoptions_datetime_later').prop('checked', true);
            }).modal('show');
        }, 5);
        
    });


    
    if (window.location.hash && window.location.hash == '#_=_') {
        window.location.hash = '';
    }

    
    $('#form_login_facebook_modal').validate({		
		rules : {
			contactNo: {
				required: true,
 				number: true,
 				verifyPhoneNo:true
			},
			email: {
				required: true,
				email: true,
				remote: {
                	param: {
                		url: '/kr/validate/validateFacebookEmail.json',
                    	data: {
	                    		emailString: function() {
	                    			console.log('email : ', $('#form_login_facebook_modal_username').val());
	                    			return $('#form_login_facebook_modal_username').val();
	                    		}
                    		},
                    		method:"POST",
       					complete: function(xhr, status) {
       							var response = xhr.responseJSON;
       							if(response.valid == false)
       							{
                            		$('#email .form-group .error').html(response.message);
       							}
  						 }
                	}
    			}
			}
		},
		messages: {	
			contactNo: {
				required: '\uC798\uBABB\uB41C \uD734\uB300\uC804\uD654 \uBC88\uD638\uC785\uB2C8\uB2E4.',
            	number : '\uD734\uB300\uC804\uD654 \uBC88\uD638 \uD615\uC2DD\uC774 \uC798\uBABB\uB418\uC5C8\uC2B5\uB2C8\uB2E4.',
            	verifyPhoneNo: '\uD734\uB300\uC804\uD654 \uBC88\uD638 \uD615\uC2DD\uC774 \uC798\uBABB\uB418\uC5C8\uC2B5\uB2C8\uB2E4.'
			},
			
			email: {
				required: '\uC798\uBABB\uB41C \uC774\uBA54\uC77C \uC8FC\uC18C\uC785\uB2C8\uB2E4.',
				email: '\uC774\uBA54\uC77C \uD615\uC2DD\uC774 \uC798\uBABB\uB418\uC5C8\uC2B5\uB2C8\uB2E4.',
				remote: "Email id already exists"
			},
			agreeTandC: {
				required: '*\uD544\uC218\uD56D\uBAA9\uC785\uB2C8\uB2E4.'
			},
			agreeUsePersonalInfo: {
				required: '\uAC1C\uC778\uC815\uBCF4\uC758 \uC218\uC9D1 \uBC0F \uC774\uC6A9\uC5D0 \uB3D9\uC758 \uD558\uC154\uC57C \uD569\uB2C8\uB2E4.'
			},
			passUserAge: {
				required: '*\uD544\uC218\uD56D\uBAA9\uC785\uB2C8\uB2E4.'
			},
			form_register_agreetnc: {
				required: '*\uD544\uC218\uD56D\uBAA9\uC785\uB2C8\uB2E4.'
			},
			form_register_agreeage: {
				required: '*\uD544\uC218\uD56D\uBAA9\uC785\uB2C8\uB2E4.'
			}
		},
		errorPlacement: function(error, element) {
			    var ElementParent = element.parent();
			    if (element.attr("name") == "email" || element.attr("name") == "contactNo" ) {
			    	$('#form_login_facebook_modal_username').parents('.textfield-list-group').append(error);
			    	$("#form_login_facebook_modal #errorId").remove();
			    } else {
			    	error.insertAfter(element);
			    }
			}
	});  

    /* [#form_login_facebook_modal.modal] */
 	$('#form_login_facebook_modal').on('click', '[type=\"submit\"]', function(event) {
		    event.preventDefault();
		    if ($('#form_login_facebook_modal').valid()) {
			    // Check that field is not empty
			    var email = $('#form_login_facebook_modal_username'); 
			    var contactNo = $('#form_login_facebook_modal_contactno');
			    var subscribe = $('#form_login_wechat_subscribe');
			    var emailVal = email.val(); 
				var contactNoVal = contactNo.val();
				var subscribeVal = subscribe.val();  
	
			    var error = contactNo.parent('div').parent('div').next('.error'); // error message element
			    var form = $(this).parents('form');
		        // If field is not empty, ajax validation
		        error.hide();
		        $.ajax('/kr/login/socialRegister.json', {
		            data: {
		                Email : emailVal,
		                ContactNo : contactNoVal,
		                SubscribeMailList : subscribeVal
		            },
		            method:"POST",
		            success: function(response, status, xhr) {
						// success, we can submit the form
	                    if(response.message=='success' && typeof(response.code)=='undefined'){
	                    	 console.log('success');
	                         $('#form_login_facebook_modal').hide();
	                          error.empty().hide();
	                          error.parents('.form-group').removeClass('form-group-error');
	                          window.location.replace(response.redirectUrl);
	                    }else{
	                    	 $('#form_login_facebook_modal').show();
	                            error.html(response.message).show();
	                            error.parents('.form-group').addClass('form-group-error');
	                    }
		            }
		        });
    		}
		});
    /* [/#form_login_facebook_modal.modal] */
    
	$('#form_fb_linkaccount_modal').validate({
    	rules: {
	  		email: {
				required: true, 
				email: true
			},
			password: {
				required: true
			}
	  	},
	  	messages: {
			email: {
				required: '\uC774\uBA54\uC77C \uC8FC\uC18C\uB97C \uC785\uB825\uD558\uC154\uC57C \uB429\uB2C8\uB2E4.',
				email: '\uC774\uBA54\uC77C \uD615\uC2DD\uC774 \uC798\uBABB\uB418\uC5C8\uC2B5\uB2C8\uB2E4.'
			},
			password: {
				required: '\uBE44\uBC00\uBC88\uD638\uB97C \uC785\uB825\uD558\uC154\uC57C \uB429\uB2C8\uB2E4'
			}
		},
        errorPlacement: function(error, element) {
            var ElementParent = element.parent();
            if (element.is(':checkbox')) {
                var controlGroup = element.parents('.checkbox');
                var label = controlGroup.find('.checkbox-label');
                label.append(error);
            } else if (element.attr("name") == "email" || element.attr("name") == "password") {
                $('#form_fb_linkaccount_modal_password').parents('.textfield-list-group').append(error);
            } else {
                error.insertAfter(element);
            }
        }
    });
    /* [/#signin-facebook-linkaccount.modal] */
	
    /* [#form_fb_linkaccount_modal.modal] */
 	$('#form_fb_linkaccount_modal').on('click', '[type=\"submit\"]', function(event) {
		    event.preventDefault();
		    if ($('#form_fb_linkaccount_modal').valid()) {
			    // Check that field is not empty
			    var email = $('#form_fb_linkaccount_modal_username'); 
			    var password = $('#form_fb_linkaccount_modal_password');
			    var emailVal = email.val(); 
				var passwordVal = password.val();
	
			    var error = email.parent('div').parent('div').next('.error'); // error message element
			    var form = $(this).parents('form');
		        // If field is not empty, ajax validation
		        error.hide();
		        $.ajax('/kr/login/socialLinkAccount.json', {
		            data: {
		                Email : emailVal,
		                Password : passwordVal
		            },
		            method:"POST",
		            success: function(response, status, xhr) {
						// success, we can submit the form
	                    if(response.message=='success' && typeof(response.code)=='undefined'){
	                    	 console.log('success');
	                         $('#form_fb_linkaccount_modal').hide();
	                          error.empty().hide();
	                          error.parents('.form-group').removeClass('form-group-error');
	                          window.location.replace(response.redirectUrl);
	                    }else{
	                    	 $('#form_fb_linkaccount_modal').show();
	                            error.html(response.message).show();
	                            error.parents('.form-group').addClass('form-group-error');
	                    }
		            }
		        });
    		}
		});
    /* [/#form_fb_linkaccount_modal.modal] */
    
   /* $('a').click(function(){
  		$('.modal').modal('hide')
	})*/
		/* [/#signin.modal] */  
  	if(null=="true"){
  		if (true) {
  			console.log('gtm_session_expired');
  			dataLayer.push({
  				'event':'trackEvent',
  				'vpv': 'vpv_session_expired_timer_popup',
  				'eventDetails.category':'error_popups',
  				'eventDetails.action':'inactive',
  				'eventDetails.label':'session_expired'
  			});
  		}
		$('#alertTimeOut').modal('show');
	}
    
  	if(null){
  		$(document).trigger('modal.trigger.guest.tab');
	}
    
  	$('.js-show-guest-order').on('click', function(e){
  	    e.preventDefault();
  	    $(document).trigger('modal.trigger.guest.tab');
  	});
  	
});
/*]]>*/
</script>
		</div>
	</div>




	<script type="text/javascript">
/*<![CDATA[*/ 
jQuery(function($) {

	$("#form_review_order_remarks").focusout(function(){
		var orderRemarks = $('#form_review_order_remarks').val();
		if (orderRemarks) {
			$.ajax('/kr/ajax/orderRemarks.json', {
	            data: {
	            	orderRemarks: encodeURIComponent(orderRemarks)
	            },
	            dataType: "json",
	            method:"POST",
	            success: function(response, status, xhr) {
	            }
	        });
		}
	});
	$('.action-delete').on('click', function(event) {
		event.preventDefault();
		var link = $(this);
		//var order = link.parents('.order-item');
		 $(document).trigger('loading.show');
		var url = link.attr('href');
		$.ajax(url, {
			type: 'GET'
		}).done(function(response, status, xhr) {
			location.href='/kr/menu.html';
		});
	});
	
	$('#enter-promocode').on('click', 'button[type="submit"]', function(event) {

		return !!$('#enter-promocode .form-control').val().length;

	});

	$('#enter-discountcoupon').on('click', 'button[type="submit"]', function(event) {

		return !!$('#enter-discountcoupon .form-control').val().length;

	})
	
	$('.toggle-payment-type').on('ifChanged', function(event) {
		var selectedType = $(event.target);
		var targetedFormId = selectedType.data('target');
		
		var paymentForms = $('.payment-types .form-section');
		var targetedForm = paymentForms.hide().filter(targetedFormId).show();
	}).filter(':first').iCheck('check');
	
	/* [#page-content] */
	$.validator.addMethod('verifySpecialCharacters', function(value, element) {
		var reg = /^([^~`\\;|$=<>{}@%/^&_\'']*)$/;
		return (this.optional(element) || reg.test(value));
	});

	$('#form_my_order').validate({
		rules: {
			form_review_order_remarks: {
				verifySpecialCharacters: true
			}
		},
		messages: {
			form_review_order_remarks: {
				verifySpecialCharacters: '&quot;&gt;&quot;, &quot;&quot;, &quot;;&quot;\uC640 \uAC19\uC740 \uD2B9\uC815 \uD2B9\uC218\uBB38\uC790\uB294 \uC0AC\uC6A9 \uBD88\uAC00\uD569\uB2C8\uB2E4. \uC218\uC815 \uD6C4 \uB2E4\uC2DC \uC2DC\uB3C4\uD574 \uC8FC\uC138\uC694.'
			}
		}
	});	
	
	/* [/#page-content] */

});

/*]]>*/
</script>



	<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","942592095866536");fbq("track","PageView");</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=942592095866536&amp;ev=PageView&amp;noscript=1">
	</noscript>
	<div style="display: none; visibility: hidden;">
		<script type="text/javascript"
			src="//static.tagmanager.toast.com/tag/view/572"></script>
		<script type="text/javascript">var c=google_tag_manager["GTM-KM4PZ8"].macro(15);window.ne_tgm_q=window.ne_tgm_q||[];window.ne_tgm_q.push({tagType:"visit",device:c,pageEncoding:"utf-8"});</script>
	</div>
	<iframe id="ne_tgmiframe_0" width="0" height="0"
		style="position: absolute; width: 0px; height: 0px; display: none;"
		src="about:blank"></iframe>
	<div class="ui-selectmenu-menu hide-default-error guest-address-picker"
		style="z-index: 1042; top: 0px; left: 0px;">
		<ul
			class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom"
			aria-hidden="true" role="listbox"
			aria-labelledby="form_deliveryoptions_address-button"
			id="form_deliveryoptions_address-menu" aria-disabled="false"
			tabindex="0" aria-activedescendant="ui-selectmenu-item-863"
			style="width: 0px;">
			<li role="presentation"
				class="ui-corner-bottom ui-selectmenu-item-selected ui-selectmenu-item-focus"><a
				href="#nogo" tabindex="-1" role="option" aria-selected="true"
				id="ui-selectmenu-item-863">서울특별시 종로구 돈의동 103-15 4층 it뱅크</a></li>
		</ul>
	</div>


</body>
</html>