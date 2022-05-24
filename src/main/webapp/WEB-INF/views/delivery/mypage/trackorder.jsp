<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


								<li class="list-item"><a class="list-item-target" href="/kr/trackorder.html">주문 조회</a></li>
							
						</ul>
					</div>
				</div>
				<div class="global-navbar navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<a class="navbar-brand wos-brand" href="/kr/home.html">  
								<img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/mcdelivery_logo_ko.jpg" alt="McDelivery&amp;trade;">
							
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

								<tbody>
								<c:choose>
								<c:when test="${empty nologinTarckOrder}">
										<c:forEach items="${orderList}" var="orderList" varStatus="status">
										
									<tr class="">
								
										<td class="order-id"><h4>주문 번호:</h4>
											<p><a href="/order/search/orderDetail?merchanuid=${orderList.merchanuid }">${orderList.merchanuid}</a></p></td>
										<td class="est-time">
									<c:choose>
												<c:when test="${orderList.order_status eq '5' }">
													<h4>배달완료시간</h4>
													<p>${orderList.delivery_time}</p>
												</c:when>
												<c:when test="${orderList.order_status >= '2' &&  orderList.order_status  <5}">
													<h4>배달예상시간</h4>
													<p>${orderList.delivery_time}</p>
												</c:when>
												<c:otherwise>
													<h4></h4>
													<p></p>
												</c:otherwise>
											</c:choose>
											</td>
								
											
										<c:choose>
										<c:when test="${orderList.order_status == '1'}">
										<td colspan="4" class="order-received complete"><h6></h6>
										<div>주문이 취소 되었습니다.</div></td>
										</c:when>
										<c:otherwise>	
										<td class="order-received complete"><h6>주문 접수</h6>
											<div>
											<c:choose>
											<c:when test="${orderList.order_status >= '2'}">
												<img style="width:50%;heigth:50%;" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/주문접수 on.png">
											</c:when>
											<c:otherwise>
												<img style="width:50%;heigth:50%;" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/주문접수 off.png">
											</c:otherwise>
											</c:choose>
											</div></td>
										<td class="order-received complete"><h6>준비 중</h6>
											<div>
											<c:choose>
											<c:when test="${orderList.order_status >= '3'}">
												<img  style="width:50%;heigth:50%;" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/준비중 on.png">
											</c:when>
											<c:otherwise>
												<img  style="width:50%;heigth:50%;" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/준비중 off.png">
											</c:otherwise>
											</c:choose>
											</div></td>
										<td class="order-received complete"><h6>배달 중</h6>
											<div>
											<c:choose>
											<c:when test="${orderList.order_status >= '4'}">
												<img  style="width:50%;heigth:50%;" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/배달중 on.png">
											</c:when>
											<c:otherwise>
												<img  style="width:50%;heigth:50%;" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/배달중off.png">
											</c:otherwise>
											</c:choose>
											</div></td>
										<td class="order-received complete"><h6>배달 완료</h6>
											<div>
											<c:choose>
											<c:when test="${orderList.order_status >= '5'}">
												<img  style="width:50%;heigth:50%;" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/배달완료 on.png">
											</c:when>
											<c:otherwise>
												<img  style="width:50%;heigth:50%;" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/배달완료 off.png">
											</c:otherwise>
											</c:choose>
											</div></td>
											</c:otherwise>
											</c:choose>
									</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr class="">
										<td class="order-id"><h4>주문 번호:</h4>
											<p><a href="/order/search/orderDetail?merchanuid=${orderList.merchanuid }">${orderList.merchanuid}</a></p></td>
										<td class="est-time">
										<c:choose>
												<c:when test="${orderList.order_status eq '5' }">
													<h4>배달완료시간</h4>
													<p>${orderList.delivery_time}</p>
												</c:when>
												<c:when test="${orderList.order_status >= '2' &&  orderList.order_status  <5}">
													<h4>배달예상시간</h4>
													<p>${orderList.delivery_time}</p>
												</c:when>
												<c:otherwise>
													<h4></h4>
													<p></p>
												</c:otherwise>
											</c:choose>
											</td>
											
										<c:choose>
										<c:when test="${orderList.order_status == '1'}">
										<td colspan="4" class="order-received complete"><h6></h6>
										<div>주문이 취소 되었습니다.</div></td>
										</c:when>
										<c:otherwise>
										<td class="order-received complete"><h6>주문 접수</h6>
											<div>
											<c:choose>
											<c:when test="${orderList.order_status >= '2'}">
												<img style="width:50%;heigth:50%;" src= "https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/주문접수 on.png">
											</c:when>
											<c:otherwise>
												<img style="width:50%;heigth:50%;" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/주문접수 off.png">
											</c:otherwise>
											</c:choose>
											</div></td>
										<td class="in-progress complete"><h6>준비 중</h6>
											<div>
											<c:choose>
											<c:when test="${orderList.order_status >= '3'}">
												<img style="width:50%;heigth:50%;" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/준비중 on.png">
											</c:when>
											<c:otherwise>
												<img style="width:50%;heigth:50%;" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/준비중 off.png">
											</c:otherwise>
											</c:choose>
											</div></td>
										<td class="in-delivery complete"><h6>배달 중</h6>
											<div>
											<c:choose>
											<c:when test="${orderList.order_status >= '4'}">
												<img style="width:50%;heigth:50%;" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/배달중 on.png">
											</c:when>
											<c:otherwise>
												<img style="width:50%;heigth:50%;"  src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/배달중off.png">
											</c:otherwise>
											</c:choose>
											</div></td>
										<td class="delivered complete"><h6>배달 완료</h6>
											<div>
											<c:choose>
											<c:when test="${orderList.order_status >= '5'}">
												<img style="width:50%;heigth:50%;" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/배달완료 on.png">
											</c:when>
											<c:otherwise>
												<img style="width:50%;heigth:50%;" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/배달완료 off.png">
											</c:otherwise>
											</c:choose>
											</div></td>
											</c:otherwise>
											</c:choose>
									</tr>
								</c:otherwise>
								</c:choose>
									
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


						

						<!-- Start:: Code added for conflict between Master & SG Batch 2 Branch -->
						<div>
							<p class="note address-status">
								<!-- Your order will arrive in approximately {{duration}} mins upon order confirmation. -->
							</p>
							<div class="thrid-party-delivery-notice"></div>
						</div>
						
						<!-- End:: Code added for conflict between Master & SG Batch 2 Branch -->

					

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

</body>
</html>