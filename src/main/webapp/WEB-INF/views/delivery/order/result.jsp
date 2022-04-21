<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
 <link rel="stylesheet" href="/resources/css/main.css">
 <script type="text/javascript" src="/resources/js/main.js"></script>
</head>
<body>
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
							<li class="list-item selected">
								<a class="list-item-target" href="?locale=ko">한국어 <i class="fa fa-caret-left icon"></i></a> <!-- -->
							</li>
							<li class="list-item"><a class="list-item-target" href="?locale=en">English <i class="fa fa-caret-left icon"></i></a></li>
						</ul>
					</div>
					<div class="my-account-quicklinks">
						<ul class="list-inline list-inline-divide">
							
							
					
					
					
						<li class="list-item">
							<img src="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/00/img/icon_profile_gray.png" alt="Profile" width="20" class="profile-grey-avator">					
						</li>
						
									
					
						
							
								<li class="list-item" onclick="console.log('signin_topright'); dataLayer.push({          'event': 'trackEvent',          'vpv': 'vpv_signin_topright',          'eventDetails.category': 'signin',          'eventDetails.action': 'click',          'eventDetails.label': 'signin_topright'         });">
									 <a class="list-item-target" href="#alertCartCleared-signin" data-toggle="modal" data-target="#alertCartCleared-signin">로그인</a>
								</li>
							
							
							
						


							
								<li class="list-item"><a class="list-item-target track-order-flag" href="#signin" data-toggle="modal" data-target="#signin">주문 조회</a></li>
							
							
						</ul>
					</div>
				</div>
				<div class="global-navbar navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<a class="navbar-brand wos-brand" href="/kr/home.html">  
								<img src="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/82/img/mcdelivery_logo_ko.jpg" alt="McDelivery&amp;trade;">
							
						</a>
					</div>
					<div class="main-navigation clearfix">
						<ul class="nav navbar-nav">
							
							<li class="menu-item menu-item-menu selected"><a class="menu-item-target" href="/kr/menu.html"> <i class="fa mcd mcd-burger icon"></i> 메뉴
							</a> </li>


							



							<li class="menu-item menu-item-account dropdown">
								 <a class="menu-item-target dropdown-toggle" href="#alertCartCleared" data-toggle="modal" data-target="#alertCartCleared"> <i class="fa fa-user icon"></i>
									마이 페이지
							</a>
							</li>
							
							
						


							<li class="menu-item menu-item-support dropdown "><a class="menu-item-target dropdown-toggle" href="" data-toggle="dropdown"> <i class="fa fa-phone icon"></i> 기타정보<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li class="dropdown-menu-item">
											
											
												<a class="dropdown-menu-item-target" href="https://www.mcdelivery.co.kr/kr/support-tnc.html?staticLinkId=7&amp;locale=ko" target="_self">이용약관</a>
											
										 </li>
									<li class="dropdown-menu-item">
											
												<a class="dropdown-menu-item-target" href="https://www.mcdelivery.co.kr/kr/support-privacy.html?locale=ko" target="_self">개인정보 처리방침</a>
											
											
										 </li>
									<li class="dropdown-menu-item">
											
											
												<a class="dropdown-menu-item-target" href="https://www.mcdelivery.co.kr/kr/support-faq.html?staticLinkId=10&amp;locale=ko" target="_self">자주 묻는 질문</a>
											
										 </li>
									<li class="dropdown-menu-item">
											
												<a class="dropdown-menu-item-target" href="http://www.mcdonalds.co.kr/kor/news/detail.do?page=1&amp;seq=517&amp;rnum=1&amp;temp_seq=&amp;searchWord=" target="_blank">과일 칠러 판매 제외 매장</a>
											
											
										 </li>
									<li class="dropdown-menu-item">
											
											
												<a class="dropdown-menu-item-target" href="http://www.mcdonalds.co.kr/uploadFolder/page/p_menu.jsp?staticLinkId=17&amp;locale=ko" target="_blank">영양정보/원산지 정보/기타 정보</a>
											
										 </li>
									<li class="dropdown-menu-item">
											
												<a class="dropdown-menu-item-target" href="https://www.mcdelivery.co.kr/m/kr/changeSkin.html?skin=mobile" target="_self">모바일 웹</a>
											
											
										 </li>


								</ul></li>

						</ul>
					</div>
				</div>
				
				
				<!-- Start of Session time out warning -->
				
				<!-- End of Session time out warning -->
				<!-- [countdownmenuswitchtimer.modal] -->
				<div id="countdownmenuswitchtimer" data-alert-type="modal" data-backdrop="static" data-keyboard="false" class="modal-countdownmenuswitchtimer modal-alert alert-menuswitch-timeout modal-alert modal fade" role="dialog" aria-labelledby="countdownmenuswitchtimer-title" aria-hidden="true" tabindex="-1">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header"></div>
							<div class="modal-body">
								<div class="row">
									<div class="col-xs-3 timer-wrapper">
										<div class="time-disclaimer">메뉴 변경 시간까지...</div>
										<div class="time timer text-din timer-clock menuswitch-timer">52:36</div>
										<div class="time-disclaimer"></div>
									</div>
									<div class="col-xs-8 timer-wrapper">
										<div class="alert-content text-left">
											<h1 id="countdownmenuswitchtimer-title">곧 메뉴가 변경됩니다!</h1>
											<p>곧 아침 메뉴로 전환됩니다. 제한 시간 내에 주문을 완료해 주세요.</p>
											<p>
												<button type="button" data-dismiss-trigger="menuswitch.action.ok" aria-hidden="true" class="btn btn-red btn-lg text-ucase">확인</button>
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
				<div data-alert-type="modal" data-backdrop="static" data-keyboard="false" class="modal-countdownstoreclosetimer modal-countdowntimer modal-alert modal fade" role="dialog" aria-labelledby="countdowntimer-title" aria-hidden="true" tabindex="-1">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
									<i class="fa mcd mcd-close"></i>
								</button>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-xs-3 timer-wrapper">
										<div class="time-disclaimer">해당 매장의 영업은 다음 시간 후 종료됩니다:</div>
										<div class="time timer text-din timer-clock storeclose-timer">52:36</div>
									</div>
									<div class="col-xs-8 timer-wrapper">
										<div class="alert-content text-left">
											<h1 id="countdowntimer-title">배달 가능 시간</h1>
											<p>해당 지역의 매장은 오후 10:00 PM 까지 배달 가능합니다.</p>
											<p>지금 주문을 완료해 주십시오.</p>
											<p>
												<button data-dismiss="modal" aria-hidden="true" class="btn btn-red btn-lg text-ucase" data-dismiss-trigger="storeclose.action.continue">계속</button>
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
		<div class="page-title">			
			<div>
				<h1>맥딜리버리를 이용해 주셔서 감사합니다</h1>
			</div>
			
		</div>
	<div class="page-content type-sans">
		
	

	<div class="panel panel-lg panel-default order-verification">
			<div class="panel-body">
				<div class="guest-order-registration-promote">
					<div class="gorp-column guest-order-registration-book">
						<img src="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/00/img/guest_order_book.png">
					</div>
					<div class="gorp-column guest-order-registration-wait">
						<span>주문을 기다리는 동안</span>
					</div>
					<div class="gorp-column guest-order-registration-pen">
						<img src="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/00/img/guest_order_pen.png">
					</div>
				</div>
			<div class="guest-order-confirmation" data-equal-height=".guest-order-confirmation-column">
				<div class="guest-order-confirmation-column order-confirmation-details" style="height: 413.65px;">
					<div class="h3">
						
						
								
							
							
							
							
							
							
							
							
						
					</div>
					
						

					<p>
						주문 번호:
						<br>
						<span class="order-verification-detail color-mcd-blue">1140396-04/04/2022-95534</span>
						
					</p>
					<p>
						예상 도착 시간:
						<br>
						
							<span class="order-verification-detail">2022/04/04 12:05</span>
						
						
					</p>					
		            	
					
					
					
					

					
						
					
					<p>주문 확인 메일이 전송되었습니다.</p>
					<p><br>주문 관련 문의사항은 맥딜리버리 콜센터로 연락하시기 바랍니다.1600-5252</p>
					
					<p>
						<a id="trackOrderGuestFalse" class="btn btn-red btn-lg track-order-disabled" disabled="disabled" href="/kr/trackorder.html">
							주문 조회
						</a>
						
												
						<a class="btn btn-red btn-lg" href="/kr/home.html">새로 주문하기</a>
						<a class="btn btn-red btn-lg" target="_blank" href="/kr/print-receipt.html">주문 정보 인쇄</a>						
					</p>
				</div>
				<div class="guest-order-confirmation-column order-confirmation-guest-register" style="height: 413.65px;">
					<div class="h3">회원가입하기.</div>
					<p>맥딜리버리 앱에 가입하시면 회원에게만 제공되는 혜택과 할인행사를 경험할 수 있습니다. 저장된 주문 내역과 선호메뉴 기능을 이용할 수 있고 더 빨리 주문을 완료할 수 있습니다.</p>
					<div class="form">
						<form method="post" accept-charset="utf-8" role="form" id="form_orderverification_register" name="form_orderverification_register" data-required-symbol="*" novalidate="novalidate" action="/kr/guestRegisterNormalAccount.html">
							<div class="form-group">
								<label class="field-label" for="form_orderverification_register_email"><span class="required-symbol">*</span>
									<span class="required-symbol">*</span>
									<span>이메일</span></label>
								<input type="email" class="form-control input-lg" id="form_orderverification_register_email" name="email" placeholder="name@mail.com" data-rule-required="true" data-rule-email="true" data-msg-required="" data-msg-email="Your email is not in the correct format." value="ipk1286@naver.com" aria-required="true">
							</div>
							<div class="form-group">
								<label class="field-label" for="form_orderverification_register_mobile"><span class="required-symbol">*</span>
									<span class="required-symbol">*</span>
									<span>휴대폰 번호</span>
								</label>
								<input type="text" class="form-control input-lg number digit-only" id="form_orderverification_register_mobile" name="contactNo" minlength="1" maxlength="8" placeholder="Digits only" data-rule-required="true" data-rule-verifymobileno="true" data-rule-number="true" data-msg-minlength="Your mobile number is not in the correct format." data-msg-required="Please enter your mobile number." data-msg-verifymobileno="Your mobile number is not in the correct format." data-msg-number="Your mobile number is not in the correct format." aria-required="true" value="01097720297">
							</div>
							
							<div class="form-group">
								<button type="submit" class="btn btn-red btn-lg btn-submit" onclick="dataLayer.push({          'event' : 'trackEvent',                         'eventDetails.category': 'registration now',                         'eventDetails.action': 'click',                         'eventDetails.label': 'post order',                         'signupStage': 'post order'         });">회원가입</button>
							</div>
						<input type="hidden" name="csrfValue" value="d62d2a1aade539de0971bc092415e8dd"></form>
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
									<li class="menu-item"><a class="menu-item-target" href="/kr/menu.html?daypartId=2&amp;catId=10">추천 메뉴</a>   </li>
									<li class="menu-item"><a class="menu-item-target" href="/kr/menu.html?daypartId=2&amp;catId=11">맥모닝 &amp; 세트</a>   </li>
									<li class="menu-item"><a class="menu-item-target" href="/kr/menu.html?daypartId=2&amp;catId=13">스낵 &amp; 사이드</a>   </li>
									<li class="menu-item"><a class="menu-item-target" href="/kr/menu.html?daypartId=2&amp;catId=14">음료</a>   </li>
									<li class="menu-item"><a class="menu-item-target" href="/kr/menu.html?daypartId=2&amp;catId=15">디저트</a>   </li>
									<li class="menu-item"><a class="menu-item-target" href="/kr/menu.html?daypartId=2&amp;catId=16">해피밀®</a>   </li>
									<li><a class="menu-item-target" target="_blank" href="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/82/mcdelivery_menu_82_ko.pdf">메뉴 다운로드</a></li>
								</ul>
							</div>
						

						
						
						<div class="column">
							<h3 class="list-group-title">기타정보</h3>
							<ul class="list-unstyled">
								<li class="menu-item">
									
										
										
											
												
												<a class="menu-item-target" href="https://www.mcdelivery.co.kr/kr/support-tnc.html?staticLinkId=7&amp;locale=ko" target="_self">이용약관</a>
											
											
										
									 
								</li>
								<li class="menu-item">
									
										
											<a class="menu-item-target" href="https://www.mcdelivery.co.kr/kr/support-privacy.html?locale=ko&amp;locale=ko" target="_self">개인정보 처리방침</a>
										
										
									 
								</li>
								<li class="menu-item">
									
										
										
											
												
												<a class="menu-item-target" href="https://www.mcdelivery.co.kr/kr/support-faq.html?staticLinkId=10&amp;locale=ko" target="_self">자주 묻는 질문</a>
											
											
										
									 
								</li>
								<li class="menu-item">
									
										
											<a class="menu-item-target" href="http://www.mcdonalds.co.kr/kor/news/detail.do?page=1&amp;seq=517&amp;rnum=1&amp;temp_seq=&amp;searchWord=&amp;locale=ko" target="_blank">과일 칠러 판매 제외 매장</a>
										
										
									 
								</li>
								<li class="menu-item">
									
										
										
											
												
												<a class="menu-item-target" href="http://www.mcdonalds.co.kr/uploadFolder/page/p_menu.jsp?staticLinkId=17&amp;locale=ko" target="_blank">영양정보/원산지 정보/기타 정보</a>
											
											
										
									 
								</li>
								<li class="menu-item">
									
										
											<a class="menu-item-target" href="https://www.mcdelivery.co.kr/m/kr/changeSkin.html?skin=mobile&amp;locale=ko" target="_self">모바일 웹</a>
										
										
									 
								</li>
							</ul>
						</div>
						
							<div class="column">
								<h3 class="list-group-title">팔로우</h3>
								<ul class="list-unstyled">

									<li class="menu-item">
										<a class="menu-item-target footer-icon fb" href="https://www.facebook.com/McDonaldsKorea" target="_blank">페이스북</a>      
									</li>

									<li class="menu-item">
										      <a class="menu-item-target footer-icon in" href="https://instagram.com/McDonalds_kr" target="_blank">인스타그램</a>
									</li>

									<li class="menu-item">
										  <a class="menu-item-target footer-icon yt" href="https://www.youtube.com/user/McDonaldsKor" target="_blank">유튜브</a>    
									</li>

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
					<div class="text-center">한국맥도날드(유) | 대표자: 앤토니 마티네즈 | 서울특별시 종로구 종로 51 종로타워 14층 | 전화번호: 1600-5252 | 사업자등록번호: 101-81-26409 | 호스팅서비스 제공자: 아마존 웹 서비스	<br><br>공정위 사업자 링크 정보: <a href="https://www.ftc.go.kr/bizCommPop.do?wrkr_no=1018126409" target="_blank">한국맥도날드(유)</a></div>
					<div class="text-center text-ucase">Copyright © 2014 All Rights Reserved By McDonald's™</div>
					<div class="text-center text-ucase">골든 아치 로고와 "i'm lovin' it"은 맥도날드 고유의 상표입니다.</div>

					
				</div>
			</div>
			
		<div style="display:none">
			Store Number:1140396<br>:NpVersion: 6.1<br>Store Status:<br>1
		</div>
	
		</div>
						
		</div>
</body>
</html>