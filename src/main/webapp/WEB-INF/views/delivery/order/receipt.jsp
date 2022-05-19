<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="/resources/css/main.css">
<script type="text/javascript" src="/resources/js/main.js"></script>
<script type="text/javascript" src="/resources/js/menu_sidebar.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var total_price = '${orderListDto.total_price}';
	if(!total_price){total_price = 0}
	total_price ='₩ '+comma(total_price);

	var deliver_cost = '${orderListDto.deliverCost}';
	if(!deliver_cost){deliver_cost = 0}
	deliver_cost = '₩ '+comma(deliver_cost);

	$("#totalCost").text(total_price);
	$("#deliverCost").text(deliver_cost);
	
	$("#confirmBtn").on("click", function(e){
		e.preventDefault();
		var findCheck = '${memberOrderFind}';
		var url = ""
		if(findCheck){
			url="/member/mypage/trackOrder";
		}else{
			url="/ed/deliverHome";
		}
		window.location.href= url;
	})
});
	
</script>

</head>
<body>
	<div class="root">


		<div class="receipt">
			<div class="receipt-body">
				<h2>주문 내역</h2>
				<div class="row">
					<div class="col-xs-7">
						<table class="table-receipt-order-detail">
							<tbody>
								<tr>
									<th>주문 번호:</th>
								</tr>
								<tr>
									<td>${orderListDto.merchanuid}</td>
								</tr>
								<tr>
									<th>주문 일자/시간:</th>
								</tr>
								<tr>
									<td>${orderListDto.order_date}</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="col-xs-5">
						<div class="contact-detail">
							<table class="table-contact-detail">

								<tbody>
									<tr>
										<th>배달 주소:</th>
									</tr>
									<tr>
										<td>
											<div>${orderListDto.user_address}</div>
										</td>
									</tr>
									<tr>
										<th>연락처:</th>
									</tr>
									<tr>
										<td>${orderListDto.user_phone}</td>
									</tr>
									<tr>
										<th>결제방식:</th>
									</tr>
									<tr>
										<td>${orderListDto.payment_type}</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<div>
							<strong>주문 세부사항</strong>
						</div>
						<span> </span>
						<table class="table-product-detail">
							<tbody>
								<tr class="" align="center">

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
													calc_price = '₩'
															+ comma(calc_price);
												</script>
											</td>
											<td class="cost"><script>
												document.write(calc_price);
											</script></td>
										</tr>
									</c:forEach>
							</tbody>
						</table>
						<div class="price-charge">
							<table class="table-price-charge">
								<tbody>

									<tr>
										<th scope="row"><span>소액 주문비:</span></th>
										<td><span id="deliverCost"></span></td>
									</tr>
									<tr>
									<th scope="row">총 주문합계:</th>
									<td><span id="totalCost"></span></td>
								</tr>
								</tbody>

							</table>
						</div>

						<br>

						<div class="special-instructions">
							<div class="title">요청 사항:</div>
							<p class="copy">${orderListDto.order_comment }</p>
						</div>
						<div class="product-controls">
							<a
								class="btn btn-block action-create btn-yellow action-startneworder"
								href="#add/5287" id="confirmBtn">확인</a>
						</div>
						<p class="disclaimer"></p>
					</div>

				</div>

			</div>

		</div>
		<div class="copyright text-ucase">Copyright © 2014 All Rights
			Reserved By McDonald's™</div>
		<p class="copyright text-ucase">골든 아치 로고와 "i'm lovin' it"은 맥도날드
			고유의 상표입니다.</p>

	</div>
</body>
</html>