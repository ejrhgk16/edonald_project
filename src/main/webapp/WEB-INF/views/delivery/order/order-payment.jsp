<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="/resources/css/main.css">
<script type="text/javascript" src="/resources/js/menu_sidebar.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script type="text/javascript" src="/resources/js/order.js"></script>
<script>
	$(document).ready(function(){
		var total_price = '${orderListDto.total_price}';
		if(!total_price){total_price = 0}
		total_price ='₩ '+comma(total_price);
		var deliver_cost = '${orderListDto.deliverCost}';
		if(!deliver_cost){deliver_cost = 0}
		deliver_cost = '₩ '+comma(deliver_cost);
		$("#totalCost").text(total_price);
		$("#deliverCost").text(deliver_cost);
		
		$("#confirmBtnCashless").on("click", function(){
			var payment_type = $(".iradio.checked").next().text();
			console.log(payment_type);
			if(payment_type == "신용카드 / 간편결제 / 기타*"){
				$.ajax({
					type : "GET",
					url : "/order/payment/cnum",
					success : function(data){	
						   requestPay(data);
					}
				})
			}
		})
		
		
		$('.iradio').on('click',function(){
			var temp = $(this).find(">input").attr('data-target');
			$(temp).attr('style','display');
			$('.iradio.checked').removeClass('checked');
			$(this).addClass("checked");
			$
		});
				
		$('.icheckbox').on('click',function(){
			if($(this).attr("class") == "icheckbox checked"){
				$(this).removeClass("checked");
				$('#form_order_payment_contactno').attr("disabled",true);
			}else{
				$(this).addClass("checked");
				$('#form_order_payment_contactno').attr("disabled",false);
			}
		});
		
		$('.iradio').focus(function(){
			$(this).addClass("hover");
		});
	});
</script>
</head>
<body>
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
								class="menu-item-target dropdown-toggle" href=""
								data-toggle="dropdown"> <i class="fa fa-user icon"></i> 마이
									페이지 <span class="caret"></span>
							</a>
								<ul class="dropdown-menu">
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="#trackOrder"
										data-toggle="modal">주문 조회</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href="/kr/account-order-history.html">주문 내역</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href="/kr/account-favourites.html">즐겨찾기 메뉴</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="/kr/addressBook.html">주소록</a>
									</li>

									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="/kr/editProfile.html">계정
											설정</a></li>

								</ul></li>


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



				<div
					class="alert alert-warning alert-dismissable inline-alert type-flama hidden alert-session-timeout"
					data-dismiss-trigger="session.action.continue">
					<button type="button" class="close" data-hide="inline-alert"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
					<p>
						<i class="fa fa-exclamation text-white icon"></i> 선택하신 제품의 주문 가능
						시간이 <span class="text-primary timer session-timer">13:36</span> 분
						남았습니다. 주문을 완료해 주세요!
					</p>
				</div>



				<!-- [/countdownmenuswitchtimer.modal] -->



			</div>
			<div class="main" role="main">

				<div class="clearfix">
					<div class="page-title pull-left">
						<h1>주문 확인</h1>
					</div>
				</div>
				<div class="page-content">
					<div class="row">
						<form name="form_order_payment" id="form_order_payment"
							method="post" class="type-sans" role="form"
							data-required-symbol="*"
							action="/kr/order-payment-intermediate.html"
							novalidate="novalidate">
							<div class="col-xs-8">

								<div class="panel panel-lg panel-default">
									<div class="panel-heading">
										<h3>지불 유형을 선택하십시오</h3>
									</div>
									<div class="panel-body">
										<div></div>
										<fieldset class="fieldset payment-types">
											<div class="form-group row">

												<div class="col-xs-3 first col-xs-3 first online-pay"
													data-pay-type="  online-payment ">
													<div class="radio">
														<div class="iradio checked" style="position: relative;">
															<input type="radio" class="toggle-payment-type"
																data-target="#payment_mode_creditcard"
																data-thirdparty="false" name="form_order_payment_type"
																value="5" id="form_order_payment_type_creditcard"
																style="position: absolute; opacity: 0;"
																aria-invalid="false">
															<ins class="iCheck-helper"
																style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
														</div>
														<label for="form_order_payment_type_creditcard"
															class="radio-label">신용카드 / 간편결제 / 기타*</label>
													</div>
												</div>

												<div>
													<h5>현장 결제</h5>

													<div class="col-xs-3 first"
														data-pay-type=" normal-payment ">
														<!-- MDSAP-14098: samsinha: Disabled cash for Guest User -->
														<div class="radio">
															<div class="iradio" style="position: relative;">
																<input checked="checked" type="radio"
																	class="toggle-payment-type"
																	data-target="#payment_mode_cash"
																	data-thirdparty="false" name="form_order_payment_type"
																	value="2" id="form_order_payment_type_cash"
																	style="position: absolute; opacity: 0;"
																	aria-invalid="false">
																<ins class="iCheck-helper"
																	style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
															</div>
															<label for="form_order_payment_type_cash"
																class="radio-label">현금</label>
														</div>
													</div>
													
													<div class="col-xs-3" data-pay-type=" normal-payment ">
														<!-- MDSAP-14098: samsinha: Disabled cash for Guest User -->
														<div class="radio">
															<div class="iradio" style="position: relative;">
																<input type="radio" class="toggle-payment-type"
																	data-target="#payment_mode_largecash"
																	data-thirdparty="false" name="form_order_payment_type"
																	value="3" id="form_order_payment_type_largecash"
																	style="position: absolute; opacity: 0;">
																<ins class="iCheck-helper"
																	style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
															</div>
															<label for="form_order_payment_type_largecash"
																class="radio-label">5만원권</label>
														</div>
													</div>
													
													<div class="col-xs-3" data-pay-type=" normal-payment ">
														<div class="radio">
															<div class="iradio" style="position: relative;">
																<input type="radio" class="toggle-payment-type"
																	data-target="#payment_mode_cheque"
																	data-thirdparty="false" name="form_order_payment_type"
																	value="4" id="form_order_payment_type_cheque"
																	style="position: absolute; opacity: 0;">
																<ins class="iCheck-helper"
																	style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
															</div>
															<label for="form_order_payment_type_cheque"
																class="radio-label">수표</label>
														</div>
													</div>
													

													<div class="col-xs-3 last" data-pay-type=" normal-payment ">
														<div class="radio">
															<div class="iradio" style="position: relative;">
																<input type="radio" class="toggle-payment-type"
																	id="form_order_payment_type_credit_card_machine"
																	name="form_order_payment_type" value="7"
																	style="position: absolute; opacity: 0;">
																<ins class="iCheck-helper"
																	style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
															</div>
															<label for="form_order_payment_type_credit_card_machine"
																class="radio-label">카드 (현장에서 카드 단말기로 결제)</label>
														</div>
													</div>

												</div>
											</div>






											<!-- END GIFT CERTIFICATE -->


											<!-- START CONTACT NUMBER -->
											<div>
												<section id="contact_no_form" class="active-section">
													<div class="form-group">
														<div class="checkbox">
															<div class="icheckbox" style="position: relative;">
																<input type="checkbox"
																	name="form_order_payment_giftcert" value="1"
																	id="form_order_payment_giftcert"
																	class="toggle-giftcert"
																	style="position: absolute; opacity: 0;">
																<ins class="iCheck-helper"
																	style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
															</div>
															<label for="form_order_payment_giftcert"
																class="checkbox-label">현금 영수증 요청</label>
														</div>
													</div>
													<div class="form-group">
														<div class="input-group input-group-lg">
															<label class="input-group-addon input-group-addon-text"
																for="form_order_payment_contactno">*핸드폰 번호</label> <span
																class="input-group-addon input-group-addon-text">+82</span>
															<input type="text"
																class="form-control input-group-form-control digit-only"
																maxlength="11" name="form_order_payment_contactno"
																id="form_order_payment_contactno" disabled
																data-rule-verifyphoneno="true" data-rule-number="true"
																data-msg-required="휴대전화 번호를 입력하셔야 합니다."
																data-msg-number="휴대전화 번호 형식이 잘못되었습니다."
																data-msg-verifyphoneno="휴대전화 번호 형식이 잘못되었습니다."
																placeholder="숫자만 입력">
														</div>
													</div>
												</section>
											</div>


											<p class="payment-footnote">*결제를 완료하기 위해 외부 웹 사이트로 안전하게
												이동합니다</p>



										</fieldset>
									</div>
								</div>
							</div>
							<button type="submit" id="submit-order-payment-button"
								hidden="true"></button>

						</form>
						<div class="col-xs-4">

							<div class="panel panel-basic panel-narrow order-summary">
								<div class="panel-heading">
									<h3 class="text-center">주문 요약</h3>
								</div>
								<div class="panel-section-group">
									<section class="panel-section">
										<table class="table-default table-delivery-address">
											<tbody>
												<tr>
													<th scope="row">배달 주소:</th>
													<td><div>${orderListDto.user_address}</div></td>
												</tr>
											</tbody>
										</table>
									</section>

									<section class="panel-section">
										<table class="table-default table-cost">
											<tfoot class="total">
												<tr>
													<th scope="row">총 주문합계:</th>
	
													<td><span id="totalCost"> </span></td>
												</tr>
											</tfoot>
											<tbody>
												<tr>
													<th scope="row">소액 주문비:</th>
													<td><span id="deliverCost"></span></td>
												</tr>
												<!-- MDSAP-11635 -->
												<!-- MDSAP-11635 -->
											</tbody>
										</table>
									</section>



									<section class="panel-section">
										<fieldset class="form-actions text-center">
											<div class="form-group">
												<button type="submit" id="confirmBtn"
													class="btn btn-red btn-block btn-xl"
													onclick="submitPayment()" style="display: none;">결제
													진행하기</button>


												<button type="submit" id="confirmBtnCashless"
													class="btn btn-red btn-block btn-xl"
													style="margin-top: 0px;">
													<span>결제 진행하기</span>
												</button>

											</div>

											<div class="form-group">
												<a href="./order-review-confirmation.html"
													class="action-secondary action-link "><i
													class="fa fa-caret-right"></i> &nbsp; <span>주문 재확인</span></a>
											</div>
										</fieldset>
									</section>
								</div>
							</div>

						</div>
					</div>



					<form name="form_payment_submitted" id="form_payment_submitted"
						role="form">
						<input type="hidden" class="hidden" value="no"
							id="payment_submitted" name="payment_submitted">
					</form>


					<form name="form_cashless_ccUpdate" id="form_cashless_ccUpdate"
						method="post" class="type-sans" role="form"
						data-required-symbol="*" action="/kr/CreditCardUpdate.html">
						<input type="hidden" name="creditCardAction" id="creditCardAction"
							value="creditCardAction"> <input type="hidden"
							name="csrfValue" value="24a249d74efe2989ebd69ce4b41fe5f0">
					</form>



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
							<h3 class="list-group-title">마이 페이지</h3>





							<ul class="list-unstyled">
								<li class="menu-item"><a class="menu-item-target"
									href="#trackOrder" data-toggle="modal">주문 조회</a></li>

								<li class="menu-item"><a class="menu-item-target"
									href="/kr/account-order-history.html">주문 내역</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="/kr/account-favourites.html">즐겨찾기 메뉴</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="/kr/addressBook.html">주소록</a></li>

								<li class="menu-item"><a class="menu-item-target"
									href="/kr/editProfile.html">계정 설정</a></li>

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
</body>

</html>