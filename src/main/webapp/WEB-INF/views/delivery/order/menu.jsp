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

<script>
	
	$(document).ready(function(){
		$(document).on("click", "input[name=select-choice]", function(){
			var setCheck = $(this).parent().parent().attr("class");
			if($(".menuSelect").html() != null){
				$(".menuSelect").remove();
				addMenu(setCheck);
			}else{
				addMenu(setCheck);
			}
		});

		$(document).on("click", "#cartAddBtn",  function(){
			$("#cartAdd").submit();
		});
		
		$(document).on("click", ".action-increase", function(){
			var qty = $(".form-control").val();
			qty = parseInt(qty);
			qty += 1;
			if(qty > 10){
				alert("최대 수량은 10개입니다");
			}else{
				$(".form-control").val(qty);
				$("input[name=cart_product_quant]").val(qty);

			}
		})
		
		$(document).on("click", ".action-decrease ", function(){
			var qty = $(".form-control").val();
			qty = parseInt(qty);
			qty -= 1;
			if(qty < 1){
				alert("최소 한 개 선택하세요");
			}else{
				$(".form-control").val(qty);
				$("input[name=cart_product_quant]").val(qty);
			}
		})
	
	});	
	
	function addMenu(setCheck){
		console.log(setCheck);
		var html = '<div class="menuSelect"><hr>' 
		var btnHtml  =''
				btnHtml += '<div class="input-group item-quantity item-quantity-picker" align="left">'
				btnHtml += '<span class="input-group-btn"><button type="button" class="btn btn-decrease action-decrease btn-black">-</button></span>'
				btnHtml += '<input type="number" value="1" min="0" max="10" class="form-control" maxlength="1" readonly="true">'
				btnHtml +=	'<span class="input-group-btn"><button type="button" class="btn btn-increase action-increase btn-black">+</button></span></div>'
		if(setCheck == 'Single'){
			$('input[name=comp_type]').val("single");
			$('input[name=cart_product_img_path]').val("${menuDto.img_path}");
			console.log($('input[name=cart_product_img_path]').val())
			setCheck = "단품";
			html = html + '<div class="header-title-column" align="center"><h3 class="item-title">'+ setCheck+ '</h3></div><br>'+btnHtml+'</div>' 
			$("#added-sets").append(html);
			return ;
		}else {
			$('input[name=comp1_name]').val("후렌치 후라이");
			$('input[name=comp2_name]').val("콜라");
			$('input[name=cart_product_img_path]').val("${menuDto.set_img_path}");
			console.log($('input[name=cart_product_img_path]').val())
			if(setCheck == 'Set'){
				$('input[name=comp_type]').val("set");
				setCheck = "세트"
			}else{setCheck="라지세트"
				$('input[name=comp_type]').val("large_set");
			}
				html = html + '<div class="header-title-column" align="center"><h3 class="item-title">'+ setCheck+'</h3></div>'
				html += '<br><div class="item-name item-id-1411" data-display-order="2" align="center" >해쉬브라운'
				html +=' <a href="#" data-toggle="modal" class="action-change">변경</a> </div>' 
				html += '<div class="item-name item-id-1411" data-display-order="2" align="center" >콜라'
				html +=' <a href="#" data-toggle="modal" class="action-change">변경</a> </div>'+btnHtml+'</div>'
				
				$("#added-sets").append(html);
				return;
		}

	}
	
	

</script>
</head>
<body>

	<!-- [/deliveryhoursavailability.modal] -->


	<!-- Begin Configurator -->
	<div id="product-configurator" class="configurator">
		<div>
			<div class="configurator-header">
				<div class="container">
					<div class="row">
						<div class="picture show-on-expand text-center">
							<img
								src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/${menuDto.img_path}"
								alt="">
						</div>
						<div class="description">
							<h1 class="item-name">${menuDto.name}</h1>
							<div class="clearfix">
								<div class="product-badges show-on-expand"></div>

							</div>

						</div>
						<button type="button" class="close action-cancel"
							aria-hidden="true">
							<i class="mcd icon mcd-close"></i>
						</button>
					</div>
				</div>
			</div>
			<div class="configurator-body" role="main">
				<div class="configurator-scroller scroller">
					<div class="container">
						<div class="configurator-step step-choose-meals">
							<h3 class="step-title">1단계: 메뉴를 선택하세요</h3>
							<div class="step-content">
								<div id="available-sets">
									<div>
										<table id="table-select-meal" class="table table-select-meal">
											<thead>
												<tr>
													<th class="controls-column">&nbsp;</th>
													<th class="picture-column">&nbsp;</th>
													<th class="description-column">&nbsp;</th>

													<th class="cost-column">가격</th>
													<th class="calories-column">kcal</th>
												</tr>
											</thead>
											<tbody>
													<tr class="LargeSet">
														<td class="controls-column" align="center">
															<input type="radio" name="select-choice" id="choice-1411" value="1411" data-cartname="해쉬브라운" style="width:25px;height:25px;">
														</td>
														<td class="picture-column">
															
														<img
															src="https://www.mcdelivery.co.kr/kr//static/1648609546423/assets/82/products/4942.png"
															alt="" class="img-block">
															
															</td>
														<td class="description-column">

															<h4 class="item-title">라지세트</h4>
															<p class="item-description"></p>
													
														</td>

														<td class="cost-column"></td>
														<td class="calories-column"><span
															class="calories-column__allergen-info"> <a
																href="#" class="action-link" data-toggle="html-popover"
																data-placement="bottom" data-html="true"
																data-content-selector=".popover-details"
																data-original-title="" title=""> <i
																	class="mcd icon mcd-allergen"></i>
															</a>
																<div class="popover-details">
																	<div class="popover-wrapper type-sans">
																		<h4>아라비아따 리코타 치킨 버거</h4>
																		<p>아라비아따 리코타 치킨 버거 (난류, 우유, 대두, 밀, 돼지고기, 토마토,
																			닭고기), 후렌치 후라이 (대두), 케첩 (토마토)</p>
																	</div>
																</div>

														</span> &nbsp; <span class="calories-column__nutrition-info">1024~1230
																Kcal</span></td>
													</tr>
											
												
												<tr class="Set">
													<td class="controls-column"  align="center">
															<input type="radio" name="select-choice" id="choice-1411" value="1411" data-cartname="해쉬브라운" style="width:25px;height:25px;">
													</td>
													<td class="picture-column"><img
														src="https://www.mcdelivery.co.kr/kr//static/1648609546423/assets/82/products/4941.png"
														alt="" class="img-block"></td>
													<td class="description-column">

														<h4 class="item-title">세트</h4>
														<p class="item-description"></p>
													</td>

													<td class="cost-column">₩ 9,000</td>
													<td class="calories-column"><span
														class="calories-column__allergen-info"> <a href="#"
															class="action-link" data-toggle="html-popover"
															data-placement="bottom" data-html="true"
															data-content-selector=".popover-details"
															data-original-title="" title=""><i
																class="mcd icon mcd-allergen"></i> </a>
															<div class="popover-details">
																<div class="popover-wrapper type-sans">
																	<h4>아라비아따 리코타 치킨 버거</h4>
																	<p>아라비아따 리코타 치킨 버거 (난류, 우유, 대두, 밀, 돼지고기, 토마토, 닭고기),
																		후렌치 후라이 (대두), 케첩 (토마토)</p>
																</div>
															</div>

													</span> &nbsp; <span class="calories-column__nutrition-info">948~1097
															Kcal</span></td>


												</tr>
												<tr class="Single">
													<td class="controls-column" align="center">
																<input type="radio" name="select-choice" id="choice-1411" value="1411" data-cartname="해쉬브라운" style="width:25px;height:25px;">
	
													</td>
													<td class="picture-column"><img
														src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/${menuDto.img_path}"
														alt="" class="img-block"></td>
													<td class="description-column">
														<h4 class="item-title">단품</h4>
														<p class="item-description"></p>
													</td>

													<td class="cost-column">₩ 7,300</td>
													<td class="calories-column"><span
														class="calories-column__allergen-info"> <a href="#"
															class="action-link" data-toggle="html-popover"
															data-placement="bottom" data-html="true"
															data-content-selector=".popover-details"
															data-original-title="" title=""><i
																class="mcd icon mcd-allergen"></i> </a>
															<div class="popover-details">
																<div class="popover-wrapper type-sans">
																	<h4>아라비아따 리코타 치킨 버거</h4>
																	<p>아라비아따 리코타 치킨 버거 (난류, 우유, 대두, 밀, 돼지고기, 토마토, 닭고기)</p>
																</div>
															</div>

													</span> &nbsp; <span class="calories-column__nutrition-info">
													${menuDto.kcal}
													</span></td>


												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="configurator-step step-customize-meals">
							<h3 class="step-title">2단계: 사이드를 선택하세요</h3>
							<div class="step-content">
								<div id="added-sets" class="selected-meals">
								
								</div>
							</div>
						</div>

						<div class="configurator-step step-upsell-items"
							id="upsell-section"></div>

					</div>

				</div>
			</div>
			<div class="configurator-footer">
				<div class="container">
					<div class="media">
						<div class="media-left">
							<a href="#"
								class="h5 text-default text-ucase btn-back action-cancel"><i
								class="fa fa-caret-left text-primary"></i> 메뉴로 돌아가기</a>
						</div>
						<div class="media-body">
							<div id="cost-section" class="clearfix"></div>
						</div>
						<div class="media-right text-center">
						<input type="hidden" name="comp1_name" value="123123">
						<form action="/order/cart/add" method="post" id="cartAdd">
							<input type="hidden" name="cart_product_code" value="${menuDto.seq}">
							<input type="hidden" name="cart_product_name"  value="${menuDto.name}">
							<input type="hidden" name="cart_product_price"  value="${menuDto.price}">
							<input type="hidden"  name="cart_product_quant" value="1">
							<input type="hidden"  name="cart_product_img_path" value="">
							
							<input type="hidden" name="menu_type"  value="${menuDto.type}">
							<input type="hidden"  name="comp_type" value="">
							<input type="hidden" name="comp1_name" value="">
							<input type="hidden" name="comp2_name" value="">
							<input type="hidden" name="comp3_name" value="">
							<input type="hidden" name="comp4_name" value="">
							<input type="hidden" name="comp5_name" value="">
						</form>
							<button id="cartAddBtn"
								class="btn btn-primary btn-red btn-lg btn-block btn-submit btn-saveorder action-saveorder">
								<i class="mcd icon mcd-bag"></i> 카트에 추가
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="modals-choices"></div>
	<!-- div id="loading-view" class="loading-view hidden"><div class="loading"><span class="loading-icon"></span></div></div-->



	
	<!-- End Configurator -->

	<!-- [#deliveryOptions.modal] -->

	<!-- [/#deliveryOptions.modal] -->

	<div>
		<div id="contactNumberModal" data-backdrop="static"
			class="modal-contactnumber modal fade" role="dialog"
			aria-hidden="true" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">
							<!--onclick="closeContactNumberPopUp()"-->
							<i class="fa mcd mcd-close"></i>
						</button>
					</div>
					<div class="modal-body">
						<div class="fieldset-heading">
							<h2>??contact.address.title_ko_KR??</h2>
						</div>
						<p>??contact.address.desc_ko_KR??</p>
						<form method="post" class="form" role="form" id="form_contactnumber" novalidate="novalidate">

							<div class="form-group">
								<button id="form_contact_number-confirmBtn" type="submit"
									class="btn btn-default btn-red btn-lg text-ucase">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	

	
</body>
</html>