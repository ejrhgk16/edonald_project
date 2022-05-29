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
<script type="text/javascript" src="/resources/js/menu_sidebar.js"></script>

<script>

$(document).ready(function(){

	//메뉴 변경 화면에서 
	$(document).on("click", ".close", function(){
		$(".modals-choices-burger").children().attr("style", "display:none;");
		$(".modals-choices-side").children().attr("style", "display:none;");
		$(".modals-choices-drink").children().attr("style", "display:none;");
	})
	
	$(document).on("click", ".burger-change", function(){
		var compnum = $(this).attr("id");
		$(".modals-choices-burger").attr("id", compnum);
		$(".modals-choices-burger").children().attr("style", "display:block;");
	})
	
	$(document).on("click", ".side-change", function(){
		var compnum = $(this).attr("id");
		$(".modals-choices-side").attr("id", compnum);
		$(".modals-choices-side").children().attr("style", "display:block;");	
	})
	
	$(document).on("click", ".drink-change", function(){
		var compnum = $(this).attr("id");
		$(".modals-choices-drink").attr("id", compnum);
		$(".modals-choices-drink").children().attr("style", "display:block;");	
	})
	
		$(document).on("click", ".source-change", function(){
		var compnum = $(this).attr("id");
		$(".modals-choices-source").attr("id", compnum);
		$(".modals-choices-source").children().attr("style", "display:block;");	
	})
	

		
		$(document).on("click", "#burgerChangeBtn", function(e){
			e.preventDefault();
			var burger  =  $("input[name='select-choice-burger']:checked").val();
			var compnum = "#"+$(".modals-choices-burger").attr("id");
			var forminputId = compnum+"_name";
			$(forminputId).val(burger);
			var html = burger+'<a href="#" data-toggle="modal" class="burger-change" id="'+ $(".modals-choices-burger").attr("id") +'">변경</a> '
			$(compnum+"id").html(html);
			$(".modals-choices-burger").children().attr("style", "display:none;");
		})
		
		$(document).on("click", "#sideChangeBtn", function(e){
			e.preventDefault();
			var side  =  $("input[name='select-choice-side']:checked").val();
			var compnum = "#"+$(".modals-choices-side").attr("id");
			var forminputId = compnum+"_name";
			$(forminputId).val(side);
			var html = side+'<a href="#" data-toggle="modal" class="side-change" id="'+ $(".modals-choices-side").attr("id") +'">변경</a> '
			$(compnum+"id").html(html);
			$(".modals-choices-side").children().attr("style", "display:none;");
		})
		
		$(document).on("click", "#drinkChangeBtn", function(e){
			e.preventDefault();
			var drink  =  $("input[name='select-choice-drink']:checked").val();
			var compnum = "#"+$(".modals-choices-drink").attr("id");
			var forminputId = compnum+"_name";
			$(forminputId).val(drink);
			var html = drink+'<a href="#" data-toggle="modal" class="drink-change" id="'+ $(".modals-choices-drink").attr("id") +'">변경</a> '
			$(compnum+"id").html(html);
			$(".modals-choices-drink").children().attr("style", "display:none;");
		})
		
		$(document).on("click", "#sourceChangeBtn", function(e){
			e.preventDefault();
			var source  =  $("input[name='select-choice-drink']:checked").val();
			var compnum = "#"+$(".modals-choices-source").attr("id");
			var forminputId = compnum+"_name";
			$(forminputId).val(source);
			var html = source+'<a href="#" data-toggle="modal" class="source-change" id="'+ $(".modals-choices-source").attr("id") +'">변경</a> '
			$(compnum+"id").html(html);
			$(".modals-choices-source").children().attr("style", "display:none;");
		})
		

		$(document).on("click","input[name='select-choice-burger']", function(){
			var imgpath = "https://edonaldfile.s3.ap-northeast-2.amazonaws.com/"+$(this).attr("id");
			$(".burger-img").attr("src", imgpath);
		})		
		$(document).on("click","input[name='select-choice-side']", function(){
			var imgpath = "https://edonaldfile.s3.ap-northeast-2.amazonaws.com/"+$(this).attr("id");
			$(".side-img").attr("src", imgpath);
		})	
		$(document).on("click","input[name='select-choice-drink']", function(){
			var imgpath = "https://edonaldfile.s3.ap-northeast-2.amazonaws.com/"+$(this).attr("id");
			$(".drink-img").attr("src", imgpath);
		})
		$(document).on("click","input[name='select-choice-source']", function(){
			var imgpath = "https://edonaldfile.s3.ap-northeast-2.amazonaws.com/"+$(this).attr("id");
			$(".source-img").attr("src", imgpath);
		})
	

		
		
		//처음 화면에서
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

		$('input[name=comp_type]').val("together_pack");
		$('input[name=cart_product_img_path]').val("${menuDto.img_path}");
		$('input[name=comp1_name]').val("빅맥®");
		$('input[name=comp2_name]').val("빅맥®");
		$('input[name=comp3_name]').val("골든 모짜렐라 치즈스틱 2조각");
		$('input[name=comp4_name]').val("이너겟® 4조각");
		$('input[name=comp5_name]').val("이스파이시® 치킨텐더 2조각");
		$('input[name=comp6_name]').val("코카-콜라");
		$('input[name=comp7_name]').val("코카-콜라");
		$('input[name=comp8_name]').val("오렌지 칠리 소스");

		html = html + '<div class="header-title-column" align="center"><h3 class="item-title">'+ "투게더팩"+'</h3></div>'
		html += '<br><div class="item-name item-id-1411" data-display-order="2" align="center"  id="comp1id" >빅맥®'
		html +=' <a href="#" data-toggle="modal" class="burger-change" id="comp1">변경</a> </div>' 
		html += '<div class="item-name item-id-1411" data-display-order="2" align="center" id="comp2id" >빅맥®'
		html +=' <a href="#" data-toggle="modal" class="burger-change" id="comp2">변경</a> </div>' 
		
		html += '<div class="item-name item-id-1411" data-display-order="2" align="center" id="comp3id" >골든 모짜렐라 치즈스틱 2조각'
		html +=' <a href="#" data-toggle="modal" class="side-change" id="comp3">변경</a> </div>' 
		html += '<div class="item-name item-id-1411" data-display-order="2" align="center" id="comp4id" >이너겟® 4조각'
		html +=' <a href="#" data-toggle="modal" class="side-change" id="comp4">변경</a> </div>' 
		html += '<div class="item-name item-id-1411" data-display-order="2" align="center" id="comp5id" >이스파이시® 치킨텐더 2조각'
		html +=' <a href="#" data-toggle="modal" class="side-change" id="comp5">변경</a> </div>' 
			
		html += '<div class="item-name item-id-1411" data-display-order="2" align="center" id="comp6id" >코카-콜라'
		html +=' <a href="#" data-toggle="modal" class="drink-change" id="comp6">변경</a> </div>' 
		html += '<div class="item-name item-id-1411" data-display-order="2" align="center" id="comp7id" >코카-콜라'
		html +=' <a href="#" data-toggle="modal" class="drink-change" id="comp7">변경</a> </div>' 

		html += '<div class="item-name item-id-1411" data-display-order="2" align="center" iid="comp8id" >오렌지 칠리 소스'
		html +=' <a href="#" data-toggle="modal" class="source-change" id="comp8">변경</a> </div>'+btnHtml+'</div>'
			
			$("#added-sets").append(html);
			return;
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
													<td class="controls-column" align="center"><input
														type="radio" name="select-choice" id="choice-1411"
														value="1411" data-cartname="해쉬브라운"
														style="width: 25px; height: 25px;"></td>
													<td class="picture-column"><img
														src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/${menuDto.set_img_path}"
														alt="" class="img-block"></td>
													<td class="description-column">

														<h4 class="item-title">${menuDto.name }</h4>
														<p class="item-description"></p>

													</td>

													<td class="cost-column"></td>
													<td class="calories-column"><span
														class="calories-column__allergen-info"> <a href="#"
															class="action-link" data-toggle="html-popover"
															data-placement="bottom" data-html="true"
															data-content-selector=".popover-details"
															data-original-title="" title="">
														</a>
															<div class="popover-details">
																<div class="popover-wrapper type-sans">
																	<h4>아라비아따 리코타 치킨 버거</h4>
																	<p>아라비아따 리코타 치킨 버거 (난류, 우유, 대두, 밀, 돼지고기, 토마토, 닭고기),
																		후렌치 후라이 (대두), 케첩 (토마토)</p>
																</div>
															</div>

													</span> &nbsp; <span class="calories-column__nutrition-info">1024~1230
															Kcal</span></td>
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
								<div id="added-sets" class="selected-meals"></div>
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
							<a href="/ed/menuPage?backtype=package"
								class="h5 text-default text-ucase btn-back action-cancel">√메뉴로 돌아가기</a>
						</div>
						<div class="media-body">
							<div id="cost-section" class="clearfix"></div>
						</div>
						<div class="media-right text-center">
							<input type="hidden" name="comp1_name" value="123123">
							<form action="/order/cart/add" method="post" id="cartAdd">
								<input type="hidden" name="cart_product_code"value="${menuDto.seq}">
								 <input type="hidden" name="cart_product_name" value="${menuDto.name}"> 
								 <input type="hidden" name="cart_product_price" value="${menuDto.price}">
								<input type="hidden" name="cart_product_quant" value="1"> 
								<input type="hidden" name="cart_product_img_path" value="${menuDto.img_path }">
								<input type="hidden" name="menu_type" value="${menuDto.type}">
								<input type="hidden" name="comp_type" value="">
								 <input type="hidden" name="comp1_name" value="" id="comp1_name">
								<input type="hidden" name="comp2_name" value="" id="comp2_name"> 
								<input type="hidden" name="comp3_name" value="" id="comp3_name"> 
								<input type="hidden" name="comp4_name" value="" id="comp4_name"> 
								<input type="hidden" name="comp5_name" value="" id="comp5_name">
								<input type="hidden" name="comp6_name" value="" id="comp6_name">
								<input type="hidden" name="comp7_name" value="" id="comp7_name">
								<input type="hidden" name="comp8_name" value="" id="comp8_name">
							</form>
							<button id="cartAddBtn"
								class="btn btn-primary btn-red btn-lg btn-block btn-submit btn-saveorder action-saveorder">
							카트에 추가
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
		
<!--  버거모달 -->
		<div class="modals-choices-burger" >
			<div class="modal fade in" aria-hidden="false"
				style="display: none;">
				<div class="modal-backdrop fade in" style="height: 754px;"></div>
				<div class="modal-container">
					<div id="modal-content">
						<div class="modal-available-choices">
							<form action="" accept-charset="utf-8" novalidate="novalidate">
								<div class="modal-dialog columns-1">
									<div class="modal-content">
										<div class="modal-header">
											<h2 class="modal-title text-ucase">항목을 선택하세요</h2>
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">
											
											</button>
										</div>
										<div class="modal-body">
											<div class="media">
												<div class="pull-left">
													<img
														src=""  class="img-block choice-image burger-img">
												</div>
												<div class="media-body">

													<div class="available-choices-list row">

													<c:forEach var="list" items="${burgerlist}" >
														<div class="choices-column col-xs-12 column-0">
															<div>
																<div class=" " data-categoryid="">
																	<div class="">
																		<input type="radio" name="select-choice-burger"
																			id="${list.img_path}" value="${list.name}"
																			style="width: 15px; height: 15px;">
																			${list.showname}
																	</div>
																	
																</div>
															</div>
														</div>
														</c:forEach>
													</div>
												</div>
											</div>
										</div>
										<div class="modal-footer text-center">
											<button type="submit" class="btn btn-red btn-lg btn-submit" id="burgerChangeBtn">확인</button>
										</div>

									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="modals-choices-side">
			<div class="modal fade in" aria-hidden="false"
				style="display: none;">
				<div class="modal-backdrop fade in" style="height: 754px;"></div>
				<div class="modal-container">
					<div id="modal-content">
						<div class="modal-available-choices">
							<form action="" accept-charset="utf-8" novalidate="novalidate">
								<div class="modal-dialog columns-1">
									<div class="modal-content">
										<div class="modal-header">
											<h2 class="modal-title text-ucase">항목을 선택하세요</h2>
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">
												
											</button>
										</div>
										<div class="modal-body">
											<div class="media">
												<div class="pull-left">
													<img
														src=""  class="img-block choice-image side-img">
												</div>
												<div class="media-body">

													<div class="available-choices-list row">

													<c:forEach var="list" items="${sidelist}" >
														<div class="choices-column col-xs-12 column-0">
															<div>
																<div class=" " data-categoryid="">
																	<div class="">
																		<input type="radio" name="select-choice-side"
																			id="${list.img_path}" value="${list.name}"
																			style="width: 15px; height: 15px;">
																			${list.name}
																	</div>
																	
																</div>
															</div>
														</div>
														</c:forEach>
													</div>
												</div>
											</div>
										</div>
										<div class="modal-footer text-center">
											<button type="submit" class="btn btn-red btn-lg btn-submit" id="sideChangeBtn">확인</button>
										</div>

									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<div class="modals-choices-drink">
			<div class="modal fade in" aria-hidden="false"
				style="display: none;">
				<div class="modal-backdrop fade in" style="height: 754px;"></div>
				<div class="modal-container">
					<div id="modal-content">
						<div class="modal-available-choices">
							<form action="" accept-charset="utf-8" novalidate="novalidate">
								<div class="modal-dialog columns-1">
									<div class="modal-content">
										<div class="modal-header">
											<h2 class="modal-title text-ucase">항목을 선택하세요</h2>
											<button type="button" class="close" data-dismiss="modal"
												aria-hidden="true">
											
											</button>
										</div>
										<div class="modal-body">
											<div class="media">
												<div class="pull-left">
													<img
														src=""  class="img-block choice-image drink-img">
												</div>
												<div class="media-body">

													<div class="available-choices-list row">
													
													<c:forEach var="list" items="${drinklist}" >
														<div class="choices-column col-xs-12 column-0">
															<div>
																<div class=" " data-categoryid="">
																	<div class="">
																		<input type="radio" name="select-choice-drink"
																			id="${list.img_path}" value="${list.name}"
																			style="width: 15px; height: 15px;">
																			${list.showname}
																	</div>
																	
																</div>
															</div>
														</div>
														</c:forEach>
													</div>
												</div>
											</div>
										</div>
										<div class="modal-footer text-center">
											<button type="submit" class="btn btn-red btn-lg btn-submit" id="drinkChangeBtn">확인</button>
										</div>

									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="modals-choices-source">
			<div class="modal fade in" aria-hidden="false"
				style="display: none;">
				<div class="modal-backdrop fade in" style="height: 754px;"></div>
				<div class="modal-container">
					<div id="modal-content">
						<div class="modal-available-choices">
							<form action="" accept-charset="utf-8" novalidate="novalidate">
								<div class="modal-dialog columns-1">
									<div class="modal-content">
										<div class="modal-header">
											<h2 class="modal-title text-ucase">항목을 선택하세요</h2>
							
										</div>
										<div class="modal-body">
											<div class="media">
												<div class="pull-left">
													<img
														src=""  class="img-block choice-image source-img">
												</div>
												<div class="media-body">

													<div class="available-choices-list row">
													
													<c:forEach var="list" items="${sourcelist}" >
														<div class="choices-column col-xs-12 column-0">
															<div>
																<div class=" " data-categoryid="">
																	<div class="">
																		<input type="radio" name="select-choice-source"
																			id="${list.img_path}" value="${list.name}"
																			style="width: 15px; height: 15px;">
																			${list.name}
																	</div>
																	
																</div>
															</div>
														</div>
														</c:forEach>
													</div>
												</div>
											</div>
										</div>
										<div class="modal-footer text-center">
											<button type="submit" class="btn btn-red btn-lg btn-submit" id="sourceChangeBtn">확인</button>
										</div>

									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		
</body>
</html>