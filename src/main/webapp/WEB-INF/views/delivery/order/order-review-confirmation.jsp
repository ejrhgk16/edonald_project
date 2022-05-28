<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="/resources/css/main.css">
<script type="text/javascript" src="/resources/js/main.js"></script>
<script type="text/javascript" src="/resources/js/menu_sidebar.js"></script>
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
		
		$("#orderCheckBtn").on("click", function(){
			var order_comment = $("#form_review_order_remarks").val();
			var url = "/order/payment?order_comment="+order_comment;
			location.replace(url);
		})
		
	});
</script>
</head>
<body class="country-82 lang-ko page-menu">


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

			<!--  여기서부터 로딩 -->

			<div class="main" role="main">


				<div class="clearfix">
					<div class="page-title pull-left">
						<h1>
							<span>주문 확인</span>
						</h1>
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
													<c:forEach items="${orderListDto.cartList}" var="cartItem"
														varStatus="status">
														<tr>
															<td class="quantity">${cartItem.cart_product_quant }</td>
															<td class="picture-img"><img
																src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/${cartItem.cart_product_img_path}"
																class="img-block" alt="">
																<div class="controls"></div></td>
															<td class="product-name">
																<div>${cartItem.cart_product_name}
																	${cartItem.comp_type}</div>
																<ul>
																	<c:if test="${!empty cartItem.comp1_name}">
																		<li>${cartItem.comp1_name}</li>
																	</c:if>
																	<c:if test="${!empty cartItem.comp2_name}">
																		<li>${cartItem.comp2_name}</li>
																	</c:if>
																	<c:if test="${!empty cartItem.comp3_name}">
																		<li>${cartItem.comp3_name}</li>
																	</c:if>
																	<c:if test="${!empty cartItem.comp4_name}">
																		<li>${cartItem.comp4_name}</li>
																	</c:if>
																	<c:if test="${!empty cartItem.comp5_name}">
																		<li>${cartItem.comp5_name}</li>
																	</c:if>
																	<c:if test="${!empty cartItem.comp6_name}">
																		<li>${cartItem.comp6_name}</li>
																	</c:if>
																	<c:if test="${!empty cartItem.comp7_name}">
																		<li>${cartItem.comp7_name}</li>
																	</c:if>
																	<c:if test="${!empty cartItem.comp8_name}">
																		<li>${cartItem.comp8_name}</li>
																	</c:if>
																</ul> <script>
															var calc_price = '${cartItem.calc_price}';
															calc_price ='₩ '+ comma(calc_price);
															</script>
															</td>
															<td class="cost">
															<script>document.write(calc_price);</script>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</section>


										<section class="panel-section order-remarks">
											<div class="form-group">
												<label for="form_review_order_remarks" class="field-label"><h3>배달시
														요청 사항:</h3></label> <input type="text" class="form-control input-lg"
													name="form_review_order_remarks"
													id="form_review_order_remarks"
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
													<td><div>${orderListDto.user_address }</div></td>
												</tr>
											</tbody>
										</table>
									</section>

									<section class="panel-section section-promocode">
										<div>
											<span>쿠폰코드 입력</span>
											<div id="enter-promocode" class="collapse in"
												aria-expanded="true" style="">
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
												</form>
											</div>
										</div>
									</section>
									<section class="panel-section section-cost-breakdown">
										<table class="table-default table-cost">
											<tfoot class="total">
												<tr>
													<th scope="row">총 주문합계:</th>
													<td><span id="totalCost"></span></td>
												</tr>
											</tfoot>
											<tbody>
												<tr>
													<th scope="row"><span>소액 주문비:</span></th>
													<td><span  id="deliverCost"></span></td>
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
													id="orderCheckBtn">
													<span>주문 확인</span>
												</button>
											</div>
											<div class="form-group">
												<a class="action-secondary action-link "
													href="/ed/menuPage">
													&nbsp; <span>√ 항목 변경</span></a>
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
	



				

</body>
</html>