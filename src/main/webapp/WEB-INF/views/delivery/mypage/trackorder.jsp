<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Track Order</title>
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="/resources/css/local.css">
</head>
<body>
<div class="root">
	<div class="wrap container">
		<div class="global-header">
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
								<img src="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/00/img/icon_profile_blue.png" alt="Profile" width="20" class="profile-avator">
								<b><span class="first-name">양원재</span></b>
							</li>

						<li class="list-item">
								<a class="list-item-target"  href="/kr/signout.html">로그아웃</a>
						</li>

								<li class="list-item"><a class="list-item-target" href="/kr/trackorder.html">주문 조회</a></li>
							
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
							
							<li class="menu-item menu-item-menu"> <a class="menu-item-target" href="/kr/menu.html"> <i class="fa mcd mcd-burger icon"></i> 메뉴
							</a></li>

						<li class="menu-item menu-item-account dropdown selected">
							<a class="menu-item-target dropdown-toggle" href="" data-toggle="dropdown">
								<i class="fa fa-user icon"></i> 
								마이 페이지 
								<span class="caret"></span>
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
									<a class="dropdown-menu-item-target" href="/kr/editProfile.html">계정 설정</a>
								</li>
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target" href="/kr/changeUserPassword.html">비밀번호 변경</a>
								</li>
							</ul>
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
				
					
						<div class="alert alert-warning alert-dismissable inline-alert type-flama hidden alert-session-timeout" data-dismiss-trigger="session.action.continue">
							<button type="button" class="close" data-hide="inline-alert" aria-hidden="true">
								<i class="fa mcd mcd-close"></i>
							</button>
							<p>
								<i class="fa fa-exclamation text-white icon"></i>
								선택하신 제품의 주문 가능 시간이 <span class="text-primary timer session-timer">14:45</span>분 남았습니다. 주문을 완료해 주세요.
							</p>
						</div>
					
					
				
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
										<div class="time timer text-din timer-clock menuswitch-timer">8:10</div>
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
										<div class="time timer text-din timer-clock storeclose-timer">8:10</div>
									</div>
									<div class="col-xs-8 timer-wrapper">
										<div class="alert-content text-left">
											<h1 id="countdowntimer-title">배달 가능 시간</h1>
											<p>해당 지역의 매장은 오후 02:00 AM 까지 배달 가능합니다.</p>
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
			<div class="main" role="main">
				<div class="row row-narrow">
					<div class="page-sidebar">
						<div class="sidebar-menu">
							<h2 class="menu-category">마이 페이지</h2>
							<ul class="menu">
								<li class="menu-item selected"><a class="menu-item-target" href="/kr/trackorder.html">주문 조회</a></li>
								
									<li class="menu-item"><a class="menu-item-target" href="/kr/account-order-history.html">주문 내역</a></li>
									<li class="menu-item"><a class="menu-item-target" href="/kr/account-favourites.html">즐겨찾기 메뉴</a></li>
									<li class="menu-item"><a class="menu-item-target" href="/kr/addressBook.html">주소록</a></li>
									
									<li class="menu-item"><a class="menu-item-target" href="/kr/editProfile.html">계정 설정</a></li>
									<li class="menu-item"><a class="menu-item-target" href="/kr/changeUserPassword.html">비밀번호 변경</a></li>
								
							</ul>
						</div>
					</div>
					
					<div class="col-xs-10 type-flama">
		<div class="page-title">
			<h1>주문 조회</h1>
		</div>
		<div class="page-content">
			<div>
					
						</div><table class="table-default table-panel table-trackorder">
				<tfoot>
					<tr>
						<td colspan="6" class="actions">
														<a data-toggle="modal" class="btn btn-red btn-lg" href="/kr/home.html">새로운 주문하기</a>
														
														
														<p><a href="#trackOrder" data-toggle="modal" class="action-secondary action-link"><i class="fa fa-caret-right"></i> 주문 조회가 안 되시나요?</a></p>
													
						</td>
					</tr>
				</tfoot>
				<tbody>
				
				 <tr class="">
							<td class="order-id"><h4>주문 번호:</h4><p>1140535-25/03/2022-310442</p></td>
							<td class="est-time">
								<h4>예상 배달 시간/날짜</h4>
								
								<p>2022/03/25 14:30</p>
							</td>
							<td class="order-received complete"><h6>주문 접수</h6><div><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/free-icon-document-177256.png"></div></td>
							<td class="in-progress complete"><h6>준비 중</h6><div><i class="mcd icon mcd-in-progress"></i></div></td>
							<td class="in-delivery complete"><h6>배달 중</h6><div><i class="mcd icon mcd-in-deliver"></i></div></td>
							<td class="delivered complete"><h6>배달 완료</h6><div><i class="mcd icon mcd-delivered"></i></div></td>
						</tr>
					
					
			</tbody>
			</table>
			
			
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
									<li class="menu-item"><a class="menu-item-target" href="/kr/menu.html?daypartId=1&amp;catId=10">추천 메뉴</a>  </li>
									<li class="menu-item"><a class="menu-item-target" href="/kr/menu.html?daypartId=1&amp;catId=11">버거 &amp; 세트</a>  </li>
									<li class="menu-item"><a class="menu-item-target" href="/kr/menu.html?daypartId=1&amp;catId=13">스낵 &amp; 사이드</a>  </li>
									<li class="menu-item"><a class="menu-item-target" href="/kr/menu.html?daypartId=1&amp;catId=14">음료</a>  </li>
									<li class="menu-item"><a class="menu-item-target" href="/kr/menu.html?daypartId=1&amp;catId=15">디저트</a>  </li>
									<li class="menu-item"><a class="menu-item-target" href="/kr/menu.html?daypartId=1&amp;catId=16">해피밀®</a>  </li>
									<li><a class="menu-item-target" target="_blank" href="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/82/mcdelivery_menu_82_ko.pdf">메뉴 다운로드</a></li>
								</ul>
							</div>
						
						
							<div class="column">
								<h3 class="list-group-title">마이 페이지</h3>
								
														
						

								
									<ul class="list-unstyled">
										
										<li class="menu-item"><a class="menu-item-target" href="/kr/trackorder.html">주문 조회</a></li>
										<li class="menu-item"><a class="menu-item-target" href="/kr/account-order-history.html">주문 내역</a></li>
										<li class="menu-item"><a class="menu-item-target" href="/kr/account-favourites.html">즐겨찾기 메뉴</a></li>
										<li class="menu-item"><a class="menu-item-target" href="/kr/addressBook.html">주소록</a></li>
										
										<li class="menu-item"><a class="menu-item-target" href="/kr/editProfile.html">계정 설정</a></li>
										<li class="menu-item "><a class="menu-item-target" href="/kr/changeUserPassword.html">비밀번호 변경</a></li>
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
			Store Number:1140535<br>:NpVersion: 6.1<br>Store Status:<br>1
		</div>
	
		</div>
	
</div>
<div id="loading-view" class="loading-view hidden"><div class="loading"><span class="loading-icon"></span></div></div>
<div id="alertAddBookEmpty" data-backdrop="static" data-keyboard="false" class="modal-addressbookempty modal-alert modal fade" role="dialog" aria-labelledby="addressbookempty-title" aria-hidden="true" tabindex="-1">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 id="addressbookempty-title">고객님의  주소가 등록되어 있지 않습니다.</h1>
			</div>
			<div class="modal-body">
				<div class="alert-content">
					<p>배달 받으실 주소를 먼저  추가해 주시고 주문해 주세요.</p>
					<p>
						<a class="btn btn-default btn-red btn-lg text-ucase" href="/kr/address.html">주소 추가하기</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="signin" class="modal-login modal fade signin-modal" role="dialog" aria-labelledby="modal-title" aria-hidden="true" tabindex="-1">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				
					
					
						<img class="logo" src="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/82/img/mcdelivery_logo_ko.jpg" alt="">
					
				
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					<i class="fa mcd mcd-close"></i>
				</button>
			</div>
			<div class="modal-body">
				
					<h2 id="modal-title">주문을 하시려면 로그인하시기 바랍니다.</h2>
					
				
				
				
				<div class="row">
					<div class="col-xs-offset-3 col-xs-6">
						
						
							
								<ul id="signin-nav-tabs-login-fragment" class="nav nav-tabs nav-tabs-login-fragment">
									<li class="active"><a href="#modal-signin-tab-login" data-toggle="tab" onclick="dataLayer.push({               'event': 'trackEvent',               'eventDetails.category': 'sign in modal',               'eventDetails.action': 'click popup modal',               'eventDetails.label': 'sign in'              });">로그인</a>
									</li>
									
									<li class=""><a href="#modal-signin-tab-new" data-toggle="tab" onclick="dataLayer.push({               'event': 'trackEvent',               'eventDetails.category': 'sign in modal',               'eventDetails.action': 'click popup modal',               'eventDetails.label': 'i am new'              });">비회원 주문</a>
									</li>
									
									
								</ul>
								<div class="tab-content clearfix">
									<div class="tab-pane active" id="modal-signin-tab-login">
										<form action="#" method="post" accept-charset="utf-8" role="form" id="form_login_modal" name="form_login_modal" class="form-login-modal form-login" data-required-symbol="false" novalidate="novalidate">
										
											<fieldset class="form-credentials">
												<div class="list-group textfield-list-group">
													<div class="list-group-item textfield-list-group-item">
														<label class="sr-only" for="form_login_modal_username">아이디</label>
														 <input type="text" name="userName" id="form_login_modal_username" class="required email list-group-form-control" placeholder="아이디" value="" aria-required="true">
													</div>
													<div class="list-group-item textfield-list-group-item">
														<label class="sr-only" for="form_login_modal_password">비밀번호</label>
														
														<input type="password" name="password" id="form_login_modal_password" class="required list-group-form-control" placeholder="비밀번호" autocomplete="off" maxlength="20" value="" aria-required="true">
													</div>
												</div>
												<label id="errorTips" style="display: none;"></label>
												<div class="checkbox">
													<div class="icheckbox" style="position: relative;"><input type="checkbox" name="rememberMe" id="modal_login_rememberme" value="true" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div><input type="hidden" name="_rememberMe" value="on">
													<label for="modal_login_rememberme" class="checkbox-label">자동 로그인</label>
												</div>	
											</fieldset>
											<fieldset class="form-actions">
												
													<button type="button" class="isLoginSuccessGtmEnabled btn btn-default btn-red btn-block btn-xl btn-submit">로그인</button>
												
												
												<p class="action-forgot-password">
													<a class="action-link" href="/kr/forgot-password.html">비밀번호 찾기</a>
												</p>

												
											</fieldset>
										</form>
										
											<div class="frament-new-user section-border-top margin-bottom-0 centered-text">
												
													<a class="btn btn-block btn-red btn-xl" onclick="                   dataLayer.push({                    'event':'trackEvent',                    'eventDetails.category':'i am new',                    'eventDetails.action':'click popup modal',                    'eventDetails.label':'register now'                   });                  " href="guest.html">
														<span>회원가입</span>
													</a>
												
												
											</div>
											<a href="#member-benefits" class="h5 text-link" data-toggle="html-popover" data-container="body" data-placement="top" data-html="true" data-content-selector="#member-benefits" data-original-title="" title="">										
												<span class="text-default">회원가입 하시고 다양한 혜택을 누리세요</span>
												<i class="mcd icon mcd-detail"></i> 
											</a>
											<div id="member-benefits" class="popover-wrapper popover-details">
												<div class="popover-wrapper">
													<h5 class="text-default">신규 계정 생성</h5>
													<div class="guest-order-note" style="max-width: 300px !important; width:300px !important;">맥딜리버리 회원에게만 제공되는 할인 및 프로모션 혜택을 누리고, 지난 주문 내역을 검색하거나 즐겨찾기 메뉴를 이용해서 더 빠르고 편리하게 맥딜리버리를 이용하세요.</div>
												</div>
											</div>
										
											
									</div>
									<div class="tab-pane " id="modal-signin-tab-new">
										
										<div class="frament-guest-order">
											<div class="guest-order-header">회원가입하지 않고 주문하기</div>
											<div class="guest-order-note">온라인 결제로 즉시 주문</div>
											<a class="btn btn-block btn-red btn-xl" onclick="dataLayer.push(               {                'event': 'trackEvent',                'eventDetails.category': 'i am new',                'eventDetails.action': 'click popup modal',                'eventDetails.label': 'guest order'               });" href="/kr/guest_address.html">비회원 주문</a>
										</div>
									</div>
									
								</div>
							
							
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="deliveryOptions" data-backdrop="static" class="modal-deliveryoptions modal fade" role="dialog" aria-hidden="true" tabindex="-1">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					<i class="fa mcd mcd-close"></i>
				</button>
			</div>
			<div class="modal-body">
				<form action="/kr/selection/menu.html" method="post" role="form" class="form form_deliveryoptions" id="form_deliveryoptions" data-required-symbol="*">
					<fieldset class="fieldset fieldset-deliveryaddress">
						<div class="fieldset-heading">
							<h2>배달 받으실 주소를 선택해 주세요.</h2>
						</div>
						<div class="form-group">
							<select class="hide-default-error" name="address" id="form_deliveryoptions_address" tabindex="0" aria-disabled="false" style="display: none;">
								<option value="1">서울특별시 강북구 미아동 791-961 4층</option>
							</select><span class="hide-default-error"><a class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown" id="form_deliveryoptions_address-button" role="button" href="#nogo" tabindex="0" aria-haspopup="true" aria-owns="form_deliveryoptions_address-menu" aria-disabled="false" style="width: 0px;"><span class="ui-selectmenu-status">서울특별시 강북구 미아동 791-961 4층</span><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>
							
								
									<a class="action-secondary action-link" href="/kr/address.html"><i class="fa fa-caret-right"></i> 주소 추가하기</a>
								
							
							
						</div>
						

						<!-- Start:: Code added for conflict between Master & SG Batch 2 Branch -->
						<div>
							<p class="note address-status">
								<!-- Your order will arrive in approximately {{duration}} mins upon order confirmation. -->
							</p>
							<div class="thrid-party-delivery-notice"></div>
						</div>
						
						<!-- End:: Code added for conflict between Master & SG Batch 2 Branch -->

					</fieldset>
					<fieldset class="fieldset fieldset-deliverydatetime">
						<div class="fieldset-heading">
							<h2>배달 받으실 시간을 선택해 주세요.</h2>
						</div>
						<div class="form-group">
							<div class="radio">
								<div class="iradio" style="position: relative;"><input type="radio" value="now" name="form_deliveryoptions_datetime" id="form_deliveryoptions_datetime_now" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div> <label class="radio-label" for="form_deliveryoptions_datetime_now">즉시 주문</label>
								<!-- Start:: Code added for conflict between Master & SG Batch 2 Branch -->
								
								<div>
									<div class="address-status-third-party">
										<div class="address-status-extra-text hide">Alternatively, order on  to get your food faster!</div>
									</div>
								</div>
								<!-- END:: Code added for conflict between Master & SG Batch 2 Branch -->
							</div>
							<div class="radio">
								<div class="iradio checked" style="position: relative;"><input type="radio" value="later" name="form_deliveryoptions_datetime" id="form_deliveryoptions_datetime_later" checked="checked" style="position: absolute; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div> <label class="radio-label" for="form_deliveryoptions_datetime_later">예약 주문 (배달 받으실 시간 기준 최소 null시간 전까지 주문 가능합니다.)</label>
							</div>
							<div class="deliverydatetime-group">
							<div class="form-group deliverydatetime">
								<label class="field-label overlay-sub-label">날짜:</label> <select class="hide-default-error" name="date" id="form_deliveryoptions_date" tabindex="0" aria-disabled="false" style="display: none;">
									<option value="2022/04/05">2022/04/05</option>
									<option value="2022/04/06">2022/04/06</option>
									<option value="2022/04/07">2022/04/07</option>
									<option value="2022/04/08">2022/04/08</option>
									<option value="2022/04/09">2022/04/09</option>
									<option value="2022/04/10">2022/04/10</option>
									<option value="2022/04/11">2022/04/11</option>
									<option value="2022/04/12">2022/04/12</option>
								</select><span class="hide-default-error"><a class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown" id="form_deliveryoptions_date-button" role="button" href="#nogo" tabindex="0" aria-haspopup="true" aria-owns="form_deliveryoptions_date-menu" aria-disabled="false" style="width: 0px;"><span class="ui-selectmenu-status">2022/04/05</span><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>

							</div>
							<div class="form-group deliverydatetime">
								<label class="field-label overlay-sub-label">시간:</label> <select class="hide-default-error" name="time" id="form_deliveryoptions_time" tabindex="0" aria-disabled="false" style="display: none;">
									<option value="">배달 받으실 시간을 선택해 주세요</option>
									<option value="13:00:00">13:00:00</option>
									<option value="13:15:00">13:15:00</option>
									<option value="13:30:00">13:30:00</option>
									<option value="13:45:00">13:45:00</option>
									<option value="14:00:00">14:00:00</option>
									<option value="14:15:00">14:15:00</option>
									<option value="14:30:00">14:30:00</option>
									<option value="14:45:00">14:45:00</option>
									<option value="15:00:00">15:00:00</option>
									<option value="15:15:00">15:15:00</option>
									<option value="15:30:00">15:30:00</option>
									<option value="15:45:00">15:45:00</option>
									<option value="16:00:00">16:00:00</option>
									<option value="16:15:00">16:15:00</option>
									<option value="16:30:00">16:30:00</option>
									<option value="16:45:00">16:45:00</option>
									<option value="17:00:00">17:00:00</option>
									<option value="17:15:00">17:15:00</option>
									<option value="17:30:00">17:30:00</option>
									<option value="17:45:00">17:45:00</option>
									<option value="18:00:00">18:00:00</option>
									<option value="18:15:00">18:15:00</option>
									<option value="18:30:00">18:30:00</option>
									<option value="18:45:00">18:45:00</option>
									<option value="19:00:00">19:00:00</option>
									<option value="19:15:00">19:15:00</option>
									<option value="19:30:00">19:30:00</option>
									<option value="19:45:00">19:45:00</option>
									<option value="20:00:00">20:00:00</option>
									<option value="20:15:00">20:15:00</option>
									<option value="20:30:00">20:30:00</option>
									<option value="20:45:00">20:45:00</option>
									<option value="21:00:00">21:00:00</option>
									<option value="21:15:00">21:15:00</option>
									<option value="21:30:00">21:30:00</option>
									<option value="21:45:00">21:45:00</option>
									<option value="22:00:00">22:00:00</option>
									<option value="22:15:00">22:15:00</option>
									<option value="22:30:00">22:30:00</option>
									<option value="22:45:00">22:45:00</option>
									<option value="23:00:00">23:00:00</option>
									<option value="23:15:00">23:15:00</option>
									<option value="23:30:00">23:30:00</option>
									<option value="23:45:00">23:45:00</option>
								</select><span class="hide-default-error"><a class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown" id="form_deliveryoptions_time-button" role="button" href="#nogo" tabindex="0" aria-haspopup="true" aria-owns="form_deliveryoptions_time-menu" aria-disabled="false" style="width: 0px;"><span class="ui-selectmenu-status">배달 받으실 시간을 선택해 주세요</span><span class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>
							</div>
							</div>
							<div class="deliverydatetime deliverydatetime-status"></div>
						</div>
					</fieldset>
					<fieldset class="fieldset form-actions">
						<!-- Start:: Code added for conflict between Master & SG Batch 2 Branch -->
						<div>
							
								<div class="form-group">
									<button type="submit" class="btn btn-red btn-xl btn-submit action-startneworder">계속</button>
								</div>
							
							
						</div>
						
						<!-- END:: Code added for conflict between Master & SG Batch 2 Branch -->
					</fieldset>
					<fieldset class="fieldset footnotes">
						<div class="note">단체 주문 - </div>
						<div class="note">예약 주문 - 주문을 받기 원하시는 일정의 2시간 전부터 7일 전까지 예약 주문이 가능합니다.</div>
						<div class="note">기상 조건 - 배달 소요시간은 해당 지역의 기상 조건에 따라 달라질 수 있습니다.배달 소요시간은 해당 지역의 기상 조건에 따라 달라질 수 있습니다.</div>
						<div class="note">맥딜리버리 서비스 메뉴의 가격은 매장의 가격과 상이합니다.</div>
						<div class="note">Some stores may have limited delivery hours.</div>
						<div class="note">Law and order - In the event of any unforeseen law and order situation, McDonald’s will not be held liable in case of non-delivery of your order.</div>
						<div class="note">Natural disaster - In the event of any unforeseen natural calamity, McDonald’s will not be held liable in case of non- delivery of your order.</div>
					</fieldset>
				<input type="hidden" name="csrfValue" value="c3232badfd75d424709af9ee08d90ea1"></form>
			</div>
		</div>
	</div>
</div>

<div id="trackOrder" class="modal-trackorder modal fade" data-backdrop="static" role="dialog" aria-labelledby="trackorder-title" aria-hidden="true" tabindex="-1">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h1 id="trackorder-title">주문 조회</h1>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					<i class="fa mcd mcd-close"></i>
				</button>
			</div>
			<div class="modal-body">
				<p>주문 번호를 입력하시면 고객님의 주문의 진행상황을 확인하실 수 있습니다.</p>
				<form action="/kr/searchOrder.html" method="post" role="form" id="form_trackOrder" name="form_trackOrder" class="form form-track-order" novalidate="novalidate">

					<div class="form-group">
						<label class="field-label" for="form_trackOrder_orderNum">주문 번호:</label> <input type="text" class="form-control input-lg required" id="form_trackOrder_orderNum" name="orderNum" aria-required="true">
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-default btn-red btn-lg text-ucase">확인</button>
					</div>
				<input type="hidden" name="csrfValue" value="c3232badfd75d424709af9ee08d90ea1"></form>
				<p class="note">주문 관련 문의사항은 맥딜리버리 콜센터로연락하시기 바랍니다1600-5252.</p>
			</div>
		</div>
	</div>
</div>

<div id="countdowntimer" data-alert-type="modal" data-backdrop="static" data-keyboard="false" class="modal-countdowntimer modal-alert alert-session-timeout modal-alert modal fade" role="dialog" aria-labelledby="countdowntimer-title" aria-hidden="true" tabindex="-1">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header"></div>
			<div class="modal-body">
				<div class="row">
					<div class="col-xs-3 timer-wrapper">
						<div class="time-disclaimer">세션 만료까지 </div>
						

						<div class="time timer text-din timer-clock session-timer">13:07</div>
						

						<div class="time-disclaimer">세션 만료까지 _분 남았습니다</div>
						
					</div>
					<div class="col-xs-8 timer-wrapper">
						<div class="alert-content text-left">
							<h1 id="countdowntimer-title">아직도 주문 중이신가요?</h1>
							

							<p>일시적으로 중단되었습니다. 주문을 계속하시려면 계속 버튼을 눌러주세요.</p>
							
							<p>
								<button type="button" data-dismiss-trigger="session.action.continue" aria-hidden="true" class="btn btn-red btn-lg text-ucase">
									계속
								</button>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="ui-selectmenu-menu hide-default-error" style="z-index: 1042; top: 0px; left: 0px;">
	<ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_deliveryoptions_address-button" id="form_deliveryoptions_address-menu" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-484" style="width: 0px; height: 283.333px;">
		<li role="presentation" class="ui-corner-bottom ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="#nogo" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-484">서울특별시 강북구 미아동 791-961 4층</a></li>
	</ul>
</div>

<div class="ui-selectmenu-menu hide-default-error" style="z-index: 1042; top: 0px; left: 0px;">
	<ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_deliveryoptions_date-button" id="form_deliveryoptions_date-menu" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-159" style="width: 0px; height: 283.333px;">
		<li role="presentation" class="ui-selectmenu-item-selected ui-selectmenu-item-focus"><a href="#nogo" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-159">2022/04/05</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">2022/04/06</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">2022/04/07</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">2022/04/08</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">2022/04/09</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">2022/04/10</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">2022/04/11</a></li>
		<li role="presentation" class="ui-corner-bottom"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">2022/04/12</a></li>
	</ul>
</div>

<div class="ui-selectmenu-menu hide-default-error" style="z-index: 1042; top: 0px; left: 0px;">
	<ul class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom" aria-hidden="true" role="listbox" aria-labelledby="form_deliveryoptions_time-button" id="form_deliveryoptions_time-menu" aria-disabled="false" tabindex="0" aria-activedescendant="ui-selectmenu-item-455" style="width: 0px; height: 283.333px;">
		<li role="presentation" class="ui-selectmenu-item-selected ui-selectmenu-item-focus">
			<a href="#nogo" tabindex="-1" role="option" aria-selected="true" id="ui-selectmenu-item-455">배달 받으실 시간을 선택해 주세요</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">13:00:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">13:15:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">13:30:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">13:45:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">14:00:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">14:15:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">14:30:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">14:45:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">15:00:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">15:15:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">15:30:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">15:45:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">16:00:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">16:15:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">16:30:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">16:45:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">17:00:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">17:15:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">17:30:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">17:45:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">18:00:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">18:15:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">18:30:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">18:45:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">19:00:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">19:15:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">19:30:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">19:45:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">20:00:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">20:15:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">20:30:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">20:45:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">21:00:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">21:15:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">21:30:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">21:45:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">22:00:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">22:15:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">22:30:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">22:45:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">23:00:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">23:15:00</a></li>
		<li role="presentation"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">23:30:00</a></li>
		<li role="presentation" class="ui-corner-bottom"><a href="#nogo" tabindex="-1" role="option" aria-selected="false">23:45:00</a></li>
	</ul>
</div>
</body>
</html>