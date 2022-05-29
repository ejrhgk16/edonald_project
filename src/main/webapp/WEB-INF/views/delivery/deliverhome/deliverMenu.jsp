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
		$(document).on("click", ".action-edit-address", function(e){
			e.preventDefault();
			alert("주소를 변경하시면 장바구니가 초기화 됩니다");
			location.href = "/ed/deliverHome"
		})
		
		
		
		$(document).on("click", "#order-widget-submit", function(e){
			e.preventDefault();
			var totalPrice = $("#totalC").val();
			if(parseInt(totalPrice) < 5500){
				alert("3천원 이상 주문해야합니다");
				return;
			}else{
				location.replace("/order/orderCheck");
			}
		})
		
		$(document).on("click", ".action-create",  function(e){
			e.preventDefault();
			var seq =  $(this).next().children("input[name=seq]").val();
			var $form = $(this).next();
			$.ajax({
				type : "GET",
				url : "/order/checkSession?seq="+seq, //메뉴 시퀀스
				success : function(){
					$form.submit();	
				}, 
				error : function(res){
					alert(res.responseText);
				}									
			})
			
		})
		
		$(document).on("click", "#delBtn", function(e){
				e.preventDefault();
				var index = $("input[name=cartIndex]").val();
				var url = "/order/cart/del?cartIndex="+index
				console.log(index);
				$.ajax({ 
					type: "GET",
					url: url, 
					dataType: "json", 
					error: function() { alert('통신실패!!'); }, 
					success: function(res) {
						var cart = '';
						$.each(res.cartList, function(index, item){
							 cart += cartView(item, index);
						})
						
						var total_price = res.total_price;
						if(!total_price){total_price = 0}
						total_price ='₩ '+comma(total_price);

						
						var deliver_cost = res.deliverCost;
						if(!deliver_cost){deliver_cost = 0}
						deliver_cost = '₩ '+comma(deliver_cost);
						console.log(deliver_cost)
						
						$(".order-items").html(cart);
						$("#totalCost").text(total_price);
						$("#deliverCost").text(deliver_cost);
						$("#totalC").val(res.total_price);
					} 
		})
		})
		
		function cartView(item, index){
			var cart = '<div class="order-item list-item"><div><div><div class="item-heading clearfix">';
			cart += '<div class="quantity">'+item.cart_product_quant+'</div><div class="picture">'
			cart += '<img alt="" class="img-block" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/'+item.cart_product_img_path+'"></div>'
			cart += '<div class="details"><h5 class="product-name">'+ item.cart_product_name+' '+item.comp_type+'</h5><ul>'
			if(item.comp1_name){cart+='<li>'+item.comp1_name+'</li>'}
			if(item.comp2_name){cart+='<li>'+item.comp2_name+'</li>'}
			if(item.comp3_name){cart+='<li>'+item.comp3_name+'</li>'}
			if(item.comp4_name){cart+='<li>'+item.comp4_name+'</li>'}
			if(item.comp5_name){cart+='<li>'+item.comp5_name+'</li>'}
			if(item.comp6_name){cart+='<li>'+item.comp6_name+'</li>'}
			if(item.comp7_name){cart+='<li>'+item.comp7_name+'</li>'}
			if(item.comp8_name){cart+='<li>'+item.comp8_name+'</li>'}
			cart += '</ul></div></div><div class="item-body clearfix"><div style="padding : 20px 0px 0px 10px">'
			cart += '<button id="delBtn" style="border: 0">삭제</button><input type="hidden" name="cartIndex" value="'+index+'">'
			var calc_price = item.calc_price;
			calc_price = '₩ '+ comma(calc_price)
			cart += '<span class="cost" >'+calc_price+'</span></div></div></div></div></div>'
			return cart;
		}
		
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


<link rel="stylesheet" href="/resources/css/local.css">

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

							<li class="menu-item menu-item-menu selected"><a
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
			<div class="main">
				<div class="row row-narrow">
					<div class="page-sidebar">
						<div class="sidebar-menu" data-sticky="true">
							<div class="food-menu">
								<ul class="primary-menu">

									<li class="primary-menu-item selected"><a
										class="primary-menu-item-target" href="?daypartId=1"><span>일반
												메뉴</span></a>
										<ul class="secondary-menu">
											<li class="secondary-menu-item "><a
												class="secondary-menu-item-target" href="#"
												data-value="package"><span>패키지
														메뉴</span></a></li>
											<li class="secondary-menu-item selected"><a
												class="secondary-menu-item-target" href="#"
												data-value="burger"><span>버거
														&amp; 세트</span></a></li>
											<li class="secondary-menu-item "><a
												class="secondary-menu-item-target"
												href="?daypartId=1&amp;catId=13" data-value="side"> <span>스낵 &amp; 사이드</span></a></li>
											<li class="secondary-menu-item "><a
												class="secondary-menu-item-target"
												href="?daypartId=1&amp;catId=14" data-value="drink"> <span>음료</span></a></li>
											<li class="secondary-menu-item "><a
												class="secondary-menu-item-target"
												href="?daypartId=1&amp;catId=15" data-value="dessert"> <span>디저트</span></a></li>
											<li class="secondary-menu-item "><a
												class="secondary-menu-item-target"
												href="?daypartId=1&amp;catId=16" data-value="happymeal"><span>해피밀®</span></a></li>

										</ul></li>

									<li class="primary-menu-item"><a
										class="primary-menu-item-target" href="?daypartId=2"><span>아침
												메뉴</span></a></li>

								</ul>
							</div>
							<a href="#menu-availability" class="h5 text-link"
								data-toggle="html-popover" data-container="body"
								data-html="true" data-content-selector="#menu-availability"
								data-placement="right" data-original-title="" title="">√ <span >메뉴
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

								</ol>
							</div>

						</div>
						<div class="page-content">
							<div class="row row-narrow">
								<div class="col-xs-8">
									<div id="product-cards" class="product-cards"
										data-equal-height=".product-card--standard .product-title, .product-card--standard .product-info">
										<div class="row row-narrow changebox">
											<script>
											<c:forEach items="${list}" var="list" varStatus="status">
											var price = ${list.price};
											price = comma(price);
											</script>
											<div class="product-card product-card--standard">
												<div class="panel panel-default panel-product">
													<div class="panel-body">
														<img
															src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/${list.img_path}"
															class="img-block">
														<h5 class="product-title" style="height: 30.8px;">${list.name} ${list.block_status}</h5>
														<div class="product-badges"></div>
													</div>
													<div class="panel-footer">
														<div class="row row-narrow">
															<div class="product-info" style="height: 78.3px;">
																<div class="product-details">
																	<div class="product-cost">
																		가격 ₩ <span class="starting-price"><script
																				type="text/javascript">document.write(price);</script></span>
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
																				data-original-title="" title=""> <i
																				class="mcd icon mcd-allergen"></i> <span
																				class="text-default">알레르기 정보</span>
																			</a>

																			<div class="popover-details">
																				<div class="popover-wrapper type-sans">
																					<h4>${list.name }</h4>
																					<div>${list.name }(${list.allergy})</div>
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
																<c:if test="${list.block_status == 0}">
																<a data-productid="789"
																	class="btn btn-block action-create btn-yellow" href="">
																	Order </a>
																</c:if>
																<c:if test="${list.block_status == 0}">
																<a data-productid="789"
																	class="btn btn-block btn-gray" href="">
																	준비중 </a>
																</c:if>
																<form action="/order/orderMenu" method="post"
																	class="menuInfo">
																	<input type="hidden" name="name" value="${list.name}">
																	<input type="hidden" name="kcal" value="${list.kcal}">
																	<input type="hidden" name="img_path"
																		value="${list.img_path}"> <input type="hidden"
																		name="status" value="${list.status}"> <input
																		type="hidden" name="type" value="${list.type}">
																	<input type="hidden" name="price" value="${list.price}">
																	<input type="hidden" name="allergy"
																		value="${list.allergy}"> <input type="hidden"
																		name="seq" value="${list.seq}">

																		

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
									<c:choose>
										<c:when test="${empty orderListDto }">
											<div class="panel panel-basic panel-narrow">
												<div class="panel-section-group">
													<section class="panel-section how-it-works">
														<a href="/ed/deliverHome" data-toggle="modal"
															data-target="#signin"><img
															src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/how_mcdelivery_works_portrait_ko.png"></a>
													</section>
												</div>
											</div>
										</c:when>

										<c:otherwise>
											<div id="order-widget"
												class="panel panel-basic panel-narrow order-summary">
												<div class="panel-heading">
													<h3 class="text-center">내 주문 정보</h3>
												</div>
												<div class="panel-section-group">
													<section class="panel-section section-delivery-address">
														<table class="table-default table-delivery-address">
															<tbody>
																<tr>
																	<th scope="row">배달 주소:
																		<div>
																			<a href="#" data-target="#deliveryOptions"
																				data-toggle="modal"
																				class="action-link action-edit action-edit-address">변경</a>
																		</div>
																	</th>
																	<td>
																		<div>${orderListDto.user_address}</div>
																	</td>
																</tr>
															</tbody>
														</table>
													</section>
													<section class="panel-section section-cost-breakdown">
																<script>
																		var total_price = '${orderListDto.total_price}';
																		total_price ='₩ '+comma(total_price);
																	
																		var deliver_cost = '${orderListDto.deliverCost}';
																		deliver_cost = '₩ '+comma(deliver_cost);
															</script>
														<table class="table-default table-cost">
															<tfoot class="total">
																<tr>
																	<th scope="row">총 주문합계:</th>
																	<td><span id="totalCost"><script>document.write(total_price);</script></span></td>
																</tr>
															</tfoot>
															<tbody>
																<tr>
																	<th scope="row">소액 주문비:</th>
																	<td><span id="deliverCost"><script>document.write(deliver_cost)</script></span></td>
																</tr>
															</tbody>
														</table>
														<p class="notes">최소 주문 금액 : ₩ 3,000</p>
														<fieldset class="form-actions text-center">
															<div class="form-group">
																<a href="#" id="order-widget-submit"
																	class="btn btn-red btn-block btn-xl">결제</a>
															</div>
															<input type="hidden" id="totalC" value="${orderListDto.total_price}">
														</fieldset>
													</section>
													
													<section class="panel-section section-order-items">
														<h3>주문 세부사항</h3>
														<form class="order-items item-list" action="" method="DELETE">
															<c:forEach items="${orderListDto.cartList}" var="cartItem" varStatus="status">
															<div class="order-item list-item ${status.index}">
																<div>
																	<div>
																		<div class="item-heading clearfix">
																		<div class="quantity">${cartItem.cart_product_quant}</div>
																			<div class="picture">
																				<img alt="" class="img-block" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/${cartItem.cart_product_img_path}">
																			</div>
																			<div class="details">
																				<h5 class="product-name">${cartItem.cart_product_name} ${cartItem.comp_type}</h5>
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
																					</ul>
																			</div>
																		</div>
																		<div class="item-body clearfix">
																			<div style="padding : 20px 0px 0px 10px">
																				<button id="delBtn" style="border: 0">삭제</button>
																				<input type="hidden" name="cartIndex" value="${status.index}">
																				<script>
																					var calc_price = ${cartItem.calc_price};
																					console.log(calc_price);
																					calc_price ='₩ '+ comma(calc_price);
																				</script>
																				<span class="cost" ><script>document.write(calc_price);</script> </span>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															</c:forEach>
														</form>
													</section>
												</div>
											</div>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</div>

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
	<div id="daypartId" hidden>1</div>
	<div id="backtype" hidden>${requestScope.backtype }</div>
</body>
</html>