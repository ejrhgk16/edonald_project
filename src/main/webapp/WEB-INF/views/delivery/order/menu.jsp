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
	
		$('.input-group-btn').on('click',function(){
			var temp = $(this).siblings('.form-control');
			var count = parseInt(temp.attr('value'));
			
			var con_btn = $(this).find('button');
			var quantity = parseInt($('.added-quantity').text());
			
			<!-- 갯수 증가와 감소 -->
			if(con_btn.hasClass('btn-decrease')){ // -
				if(count < 1) return;
				temp.attr('value',(count - 1));
				quantity = quantity -1;
				$('.added-quantity').text(quantity);
				addMenu(quantity, $(this));
				
			}else{								  // +
				if(count > 9) return;
				temp.attr('value',(count + 1));
				quantity =quantity +1;
				$('.added-quantity').text(quantity);
				addMenu(quantity, $(this));
				
			}
			<!-- 카트 추가 버튼을 수량이 있으면 활성화-->
			if(quantity > 0){
				$('.action-saveorder').removeClass('disabled');
				$('.action-saveorder').addClass('abled');
				
			}else{
				$('.action-saveorder').removeClass('abled');
				$('.action-saveorder').addClass('disabled');
			}	
		});
		
		var addMenu = function(quentity, target){
			
			var inputThing = $('#added-sets').find('>div');
			
			var aaa;
			
			var item = target.closest('tr').find('.item-title');
			if(item.text() === "라지세트"){
				aaa = document.querySelector("#addedset-template").innerHTML;
				inputThing.append(aaa);
				aaa = document.querySelector("#addedset-choice-template").innerHTML;
				inputThing.append(aaa);
			
			
			}else if(item.text() === "단품"){
				aaa = document.querySelector("#addedset-template").innerHTML;
				inputThing.append(aaa);
				
			}else{
				aaa = document.querySelector("#addedset-template").innerHTML;
				aaa.find('.choices-column.col-xs-6');
 				
				var fff = document.querySelector("#addedset-choice-template").innerHTML;
				kkk.append(fff);
				
				inputThing.append(aaa);
				
			}
			
			
			// 주문이 없을 때 2번째칸에 입력될값 없을 때 삭제
			if(quentity > 0){
				$('.empty-selection').closest('div').remove();
			}else{
				aaa = document.querySelector("#addedsetempty-template").innerHTML;
				inputThing.html(aaa);
			}
				
						
			
		}
		
	
	});
</script>
</head>
<body>

		<!-- [/deliveryhoursavailability.modal] -->
		

		<!-- Begin Configurator -->
		<div id="product-configurator" class="configurator"><div>
	<div class="configurator-header">
		<div class="container">
			<div class="row">
				<div class="quantity"><span class="added-quantity">0</span> <span class="small text-ucase show-on-expand">수량</span></div>
				<div class="picture show-on-expand text-center"><img src="https://www.mcdelivery.co.kr/kr//static/1648609546423/assets/82/products/4941.png" alt=""></div>
				<div class="description">
					<h1 class="item-name">아라비아따 리코타 치킨 버거</h1>
					<div class="clearfix">
						<div class="product-badges show-on-expand">
							
						</div>
						
					</div>
									
				</div>
				<button type="button" class="close action-cancel" aria-hidden="true"><i class="mcd icon mcd-close"></i></button>
			</div>
		</div>
	</div>
	<div class="configurator-body" role="main">
		<div class="configurator-scroller scroller">
			<div class="container">
				<div class="configurator-step step-choose-meals">
					<h3 class="step-title">1단계: 메뉴를 선택하세요</h3>
					<div class="step-content">
						<div id="available-sets"><div>
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
		<tbody><tr class="">
	<td class="controls-column">
		<div class="input-group item-quantity item-quantity-picker">
			<span class="input-group-btn">
				<button type="button" class="btn btn-decrease action-decrease btn-black"><i class="mcd mcd-minus icon"></i></button>
			</span>
			<input type="number" value="0" min="0" max="10" class="form-control" maxlength="1">
			<span class="input-group-btn">
				<button type="button" class="btn btn-increase action-increase btn-black"><i class="mcd mcd-plus icon"></i></button>
			</span>
		</div>
	</td>
	<td class="picture-column">
		<img src="https://www.mcdelivery.co.kr/kr//static/1648609546423/assets/82/products/4942.png" alt="" class="img-block">
	</td>
	<td class="description-column">

		<h4 class="item-title">라지세트</h4>
		<p class="item-description"></p>
	</td>
	
	<td class="cost-column">₩ 9,600</td>
	<td class="calories-column">
	


						
							
<span class="calories-column__allergen-info">

                             <a href="#" class="action-link" data-toggle="html-popover" data-placement="bottom" data-html="true" data-content-selector=".popover-details" data-original-title="" title=""><i class="mcd icon mcd-allergen"></i> </a>
                             <div class="popover-details">
															<div class="popover-wrapper type-sans">
																<h4>아라비아따 리코타 치킨 버거</h4>
                                                                 <p>아라비아따 리코타 치킨 버거 (난류, 우유, 대두, 밀, 돼지고기, 토마토, 닭고기), 후렌치 후라이 (대두), 케첩 (토마토)</p>
															</div>
														</div>

</span>	



&nbsp;

<span class="calories-column__nutrition-info">1024~1230 Kcal</span>
</td>


</tr><tr class="">
	<td class="controls-column">
		<div class="input-group item-quantity item-quantity-picker">
			<span class="input-group-btn">
				<button type="button" class="btn btn-decrease action-decrease btn-black"><i class="mcd mcd-minus icon"></i></button>
			</span>
			<input type="number" value="0" min="0" max="10" class="form-control" maxlength="1">
			<span class="input-group-btn">
				<button type="button" class="btn btn-increase action-increase btn-black"><i class="mcd mcd-plus icon"></i></button>
			</span>
		</div>
	</td>
	<td class="picture-column">
		<img src="https://www.mcdelivery.co.kr/kr//static/1648609546423/assets/82/products/4941.png" alt="" class="img-block">
	</td>
	<td class="description-column">

		<h4 class="item-title">세트</h4>
		<p class="item-description"></p>
	</td>
	
	<td class="cost-column">₩ 9,000</td>
	<td class="calories-column">
	


						
							
<span class="calories-column__allergen-info">

                             <a href="#" class="action-link" data-toggle="html-popover" data-placement="bottom" data-html="true" data-content-selector=".popover-details" data-original-title="" title=""><i class="mcd icon mcd-allergen"></i> </a>
                             <div class="popover-details">
															<div class="popover-wrapper type-sans">
																<h4>아라비아따 리코타 치킨 버거</h4>
                                                                 <p>아라비아따 리코타 치킨 버거 (난류, 우유, 대두, 밀, 돼지고기, 토마토, 닭고기), 후렌치 후라이 (대두), 케첩 (토마토)</p>
															</div>
														</div>

</span>	



&nbsp;

<span class="calories-column__nutrition-info">948~1097 Kcal</span>
</td>


</tr><tr class="">
	<td class="controls-column">
		<div class="input-group item-quantity item-quantity-picker">
			<span class="input-group-btn">
				<button type="button" class="btn btn-decrease action-decrease btn-black"><i class="mcd mcd-minus icon"></i></button>
			</span>
			<input type="number" value="0" min="0" max="10" class="form-control" maxlength="1">
			<span class="input-group-btn">
				<button type="button" class="btn btn-increase action-increase btn-black"><i class="mcd mcd-plus icon"></i></button>
			</span>
		</div>
	</td>
	<td class="picture-column">
		<img src="https://www.mcdelivery.co.kr/kr//static/1648609546423/assets/82/products/4940.png" alt="" class="img-block">
	</td>
	<td class="description-column">

		<h4 class="item-title">단품</h4>
		<p class="item-description"></p>
	</td>
	
	<td class="cost-column">₩ 7,300</td>
	<td class="calories-column">
	


						
							
<span class="calories-column__allergen-info">

                             <a href="#" class="action-link" data-toggle="html-popover" data-placement="bottom" data-html="true" data-content-selector=".popover-details" data-original-title="" title=""><i class="mcd icon mcd-allergen"></i> </a>
                             <div class="popover-details">
															<div class="popover-wrapper type-sans">
																<h4>아라비아따 리코타 치킨 버거</h4>
                                                                 <p>아라비아따 리코타 치킨 버거 (난류, 우유, 대두, 밀, 돼지고기, 토마토, 닭고기)</p>
															</div>
														</div>

</span>	



&nbsp;

<span class="calories-column__nutrition-info">616 Kcal</span>
</td>


</tr></tbody>
	</table>
</div></div>
					</div>
				</div>
				<div class="configurator-step step-customize-meals">
					<h3 class="step-title">2단계: 메뉴 항목을 선택하세요</h3>
					<div class="step-content">
						<div id="added-sets" class="selected-meals"><div><div>
	<div class="empty-selection"><p>아직 아무 메뉴도 선택하지 않으셨습니다.</p></div>
</div></div></div>
					</div>
				</div>
				
				<div class="configurator-step step-upsell-items" id="upsell-section"></div>
				
			</div>
			
		</div>
	</div>
	<div class="configurator-footer">
			<div class="container">
				<div class="media">
					<div class="media-left">
						<a href="#" class="h5 text-default text-ucase btn-back action-cancel"><i class="fa fa-caret-left text-primary"></i>  메뉴로 돌아가기</a>
				</div>
				<div class="media-body">
					<div id="cost-section" class="clearfix">
					</div>
				</div>
				<div class="media-right text-center">
					<button class="btn btn-primary btn-red btn-lg btn-block btn-submit btn-saveorder action-saveorder disabled"><i class="mcd icon mcd-bag"></i>
						
							카트에 추가					
					</button>
				</div>
			</div>
		</div>
	</div>
</div></div>
		<div id="modals-choices"></div>
		<!-- div id="loading-view" class="loading-view hidden"><div class="loading"><span class="loading-icon"></span></div></div-->
		
	<script type="text/template" id="suggestion-configurator-template">	
		<div class="suggestive-sell-container"> 
			<div id="suggestion-modal-content" class="modal-dialog">		
				<div class="modal-content">
					<div class="modal-header">

					</div>
					<div class="modal-body">
					  <div class="suggestion-body" role="main">
						<div class="">
						  <div class="container">                    
							<div class="configurator-step step-upsell-items" id="suggestion-upsell-section"></div>                    
						  </div>
						  <div class="container"></div>
						</div>
					  </div>
					  <div class="suggestion-footer">
						<div class="container">
						  <div class="media">
							<div class="media-left">
							  
								<a href="#" style="font-size: 16px;" class="h5 text-default text-ucase btn-back action-cancel"><i class="fa fa-caret-left text-primary"></i> 
								선택안함
								</a>
							</div>
							<div class="media-body">
							  <div id="suggestion-cost-section" class="clearfix"></div>
							</div>
							<div class="media-right text-center">
							  <button class="btn btn-primary btn-red btn-lg btn-block btn-submit btn-saveorder action-saveorder disabled"><i class="mcd icon mcd-bag"></i>
								{{#if isNewOrder}}
									카트에 추가					{{else}}
									저장						{{/if}}
							  </button>
							</div>
						  </div>
						</div>
					  </div>
					</div>
				</div>
			</div>
		</div>
    </script>
    <script type="text/template" id="suggestion-upsellsection-template">
      <h3 class="suggestion-title">다양한 사이드 메뉴를 추가해 보세요.</h3>
      <h4 class="suggestion-subtitle"></h4>
      <div class="step-content">
        <div id="suggestion-upsell-items">
          <div class="colsize-5-row"></div>
        </div>
      </div>
    </script>

    <script type="text/template" id="suggestion-upsellitem-template">
		<div class="panel panel-default panel-product">
			<div class="panel-body">
				<img src="{{images.0.imageUrl}}" class="img-block" alt="" />
				<h5 class="product-title">{{{variationName}}}</h5>
			</div>
			<div class="panel-footer">
				<div class="input-group item-quantity item-quantity-picker">
					<span class="input-group-btn">
						<button type="button" class="btn btn-decrease action-decrease btn-primary btn-black"><i class="mcd mcd-minus icon"></i></button>
					</span>
					<input type="number" value="0" min="0" max="{{maxQuantity}}" class="form-control" maxlength="{{maxLength}}" />
					<span class="input-group-btn">
						<button type="button" class="btn btn-increase action-increase btn-primary btn-black"><i class="mcd mcd-plus icon"></i></button>
					</span>
				</div>
				<div class="product-cost">
					{{{displayPrice}}}
				</div>
			</div>
		</div>
	</script>
	<script type="text/template" id="suggestion-cost-template">
		{{#if tax}}
			<div class="tax pull-right">
				부가세 <span class="value">{{tax}}</span>
			</div>
		{{/if}}
		  
		{{#if subtotal}}
			<div class="subtotal pull-right">
				주문 금액:  <span class="value">{{subtotal}}</span>
			</div>
		{{/if}}
	</script>
	<script type="text/template" id="suggestion-cost-loading-template">
		<div class="loading">
			<span class="loading-icon"></span>
		</div>
	</script>
		
	<script type="text/template" id="configurator-template">
	<div class="configurator-header">
		<div class="container">
			<div class="row">
				<div class="quantity"><span class="added-quantity">0</span> <span class="small text-ucase show-on-expand">수량</span></div>
				<div class="picture show-on-expand text-center"><img src="{{images.0.imageUrl}}" alt="" /></div>
				<div class="description">
					<h1 class="item-name">{{{menuName}}}</h1>
					<div class="clearfix">
						<div class="product-badges show-on-expand">
							{{#each badges}}
								<span class="food-icons-sprite ir food-icons-{{this}}"></span>
							{{/each}}
						</div>
						
					</div>
				</div>
				<button type="button" class="close action-cancel" aria-hidden="true"><i class="mcd icon mcd-close"></i></button>
			</div>
		</div>
	</div>
	<div class="configurator-body" role="main">
		<div class="configurator-scroller scroller">
			<div class="container">
				<div class="configurator-step step-choose-meals">
					<h3 class="step-title">1단계: 메뉴를 선택하세요</h3>
					<div class="step-content">
						<div id="available-sets"></div>
					</div>
				</div>
				<div class="configurator-step step-customize-meals">
					<h3 class="step-title">2단계: 메뉴 항목을 선택하세요</h3>
					<div class="step-content">
						<div id="added-sets" class="selected-meals"></div>
					</div>
				</div>
				
				<div class="configurator-step step-upsell-items" id="upsell-section"></div>
				
			</div>
			
		</div>
	</div>
	<div class="configurator-footer">
			<div class="container">
				<div class="media">
					<div class="media-left">
						<a href="#" class="h5 text-default text-ucase btn-back action-cancel"><i class="fa fa-caret-left text-primary"></i>  메뉴로 돌아가기</a>
				</div>
				<div class="media-body">
					<div id="cost-section" class="clearfix">
					</div>
				</div>
				<div class="media-right text-center">
					<button class="btn btn-primary btn-red btn-lg btn-block btn-submit btn-saveorder action-saveorder"><i class="mcd icon mcd-bag"></i>
						{{#if isNewOrder}}
							카트에 추가					{{else}}
							저장						{{/if}}
					</button>
				</div>
			</div>
		</div>
	</div>
</script>
		<script type="text/template" id="upsellsection-template">
    <h3 class="step-title">3단계: 추천메뉴</h3>
    <div class="step-content">
        <div id="upsell-items">
            <div class="colsize-5-row"></div>
        </div>
    </div>
</script>
		<script type="text/template" id="condiments-configurator-template">
	<div class="configurator-header">
		<div class="container">
			<div class="row">
				<div class="quantity"><span class="added-quantity value">0</span> <span class="small text-ucase show-on-expand">수량</span></div>
				<div class="picture show-on-expand text-center"><img alt="" src="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/00/img/wos_condiment.jpg" /></div>
				<div class="description">
					<h1 class="item-name">Condiments</h1>
				</div>
				<button type="button" class="close action-cancel" aria-hidden="true"><i class="mcd icon mcd-close"></i></button>
			</div>
		</div>
	</div>
	<div class="configurator-body" role="main">
		<div class="configurator-scroller scroller">
			<div class="container">
				<div class="configurator-step step-choose-meals">
					<h3 class="step-title">기타 를 선택해 주세요.</h3>
					<p>추가 가격은 선택하신 사항에 따라  달라질 수 있습니다</p>
					<div class="step-content">
						<div id="available-sets"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="configurator-footer">
		<div class="container">
			<div class="row">
				<div class="col-xs-4 pull-left">
					<a href="#" class="h5 text-default text-ucase btn-back action-cancel"><i class="fa fa-caret-left text-primary"></i> 메뉴로 돌아가기</a>
				</div>
				<div class="col-xs-4 pull-right text-center">
					<button class="btn btn-primary btn-red btn-lg btn-block btn-submit btn-saveorder action-saveorder"><i class="mcd icon mcd-bag"></i> 
						{{#if isNewOrder}}
							카트에 추가					{{else}}
							저장						{{/if}}
					</button>
				</div>
				<!-- <div class="col-xs-4">
					<div class="subtotal">
						Sub Total: <span class="value">market.currency.unit8,888.88</span>
					</div>
					<div class="tax">
						GST: <span class="value">market.currency.unit88.88</span>
					</div>
				</div> -->
			</div>
		</div>
	</div>
</script>

		<script type="text/template" id="upsellitem-template">
	<div class="panel panel-default panel-product">
		<div class="panel-body">
			<img src="{{images.0.imageUrl}}" class="img-block" alt="" />
			<h5 class="product-title">{{{variationName}}}</h5>
			
		</div>
		<div class="panel-footer">
			<div class="input-group item-quantity item-quantity-picker">
				<span class="input-group-btn">
					<button type="button" class="btn btn-decrease action-decrease btn-primary btn-black"><i class="mcd mcd-minus icon"></i></button>
				</span>
				<input type="number" value="0" min="0" max="{{maxQuantity}}" class="form-control" maxlength="2" />
				<span class="input-group-btn">
					<button type="button" class="btn btn-increase action-increase btn-primary btn-black"><i class="mcd mcd-plus icon"></i></button>
				</span>
			</div>
			<div class="product-cost">
				{{{displayPrice}}}
			</div>
		</div>
	</div>
</script>
		<script type="text/template" id="productsets-template">
	<table id="table-select-meal" class="table table-select-meal">
		<thead>
			<tr>
				<th class="controls-column">&nbsp;</th>
				<th class="picture-column">&nbsp;</th>
				<th class="description-column">&nbsp;</th>
				{{#if tax}}
				<th class="tax-column">GST</th>
				{{/if}}
				<th class="cost-column">가격</th>
				<th class="calories-column">kcal</th>
			</tr>
		</thead>
		<tbody></tbody>
	</table>
</script>


		<script type="text/template" id="productset-template">
	<td class="controls-column">
		<div class="input-group item-quantity item-quantity-picker">
			<span class="input-group-btn">
				<button type="button" class="btn btn-decrease action-decrease btn-black"><i class="mcd mcd-minus icon"></i></button>
			</span>
			<input type="number" value="0" min="0" max="{{maxQuantity}}" class="form-control" maxlength="1" />
			<span class="input-group-btn">
				<button type="button" class="btn btn-increase action-increase btn-black"><i class="mcd mcd-plus icon"></i></button>
			</span>
		</div>
	</td>
	<td class="picture-column">
		<img src="{{images.0.imageUrl}}" alt="" class="img-block" />
	</td>
	<td class="description-column">

		<h4 class="item-title">{{{variationName}}}</h4>
		<p class="item-description">{{additionInfo.description}}</p>
	</td>
	{{#if tax}}
	<td class="tax-column">{{tax}}</td>
	{{/if}}
	<td class="cost-column">{{{displayPrice}}}</td>
	<td class="calories-column">
	

{{#if additionInfo.allergen}}
						
							
<span class="calories-column__allergen-info">

                             <a href="#" class="action-link" data-toggle="html-popover" data-placement="bottom" data-html="true" data-content-selector=".popover-details"><i class="mcd icon mcd-allergen"></i> </a>
                             <div class="popover-details">
															<div class="popover-wrapper type-sans">
																<h4>{{{menuName}}}</h4>
                                                                 <p>{{additionInfo.allergen}}</p>
															</div>
														</div>

</span>	
{{/if}}

{{#if additionInfo.nutrition}}
<span class="calories-column__nutrition-info">
	<a href="#" class="action-link" data-toggle="html-popover" data-placement="bottom" data-html="true" data-content-selector=".popover-details"><i class="mcd icon mcd-detail"></i></a>

	<div class="popover-details">
		<div class="popover-wrapper type-sans">
			<h4>{{menuName}}</h4>
			<p>
			{{#each additionInfo.nutrition}}
			{{#if this.name}}{{this.name}}{{/if}} {{#if this.value}}{{this.value}}{{/if}} {{#if this.unit}}{{this.unit}}{{/if}} {{#if this.percent}}({{this.percent}}%){{/if}} 
			{{/each}}
			</p>
		</div>
	</div>
</span>
{{/if}}
&nbsp;

<span class="calories-column__nutrition-info">{{additionInfo.inLineInfo}}</span>
</td>


</script>

<script type="text/template" id="addedsetempty-template">
	<div class="empty-selection"><p>아직 아무 메뉴도 선택하지 않으셨습니다.</p></div>
</script>

<script type="text/template" id="addedset-template">

	<div class="meal-details row row-padded meal-id-{{productCode}}" data-meal-id="{{productCode}}">
		<div class="header-column">
			<div class="row row-narrow">
				<div class="header-delete-column">
					<a href="#" class="action-delete"><i class="mcd icon mcd-close"></i></a>
				</div>
				<div class="header-title-column">
					<h3 class="item-title">{{{variationName}}}</h3>
				</div>
				
			</div>
		</div>
		<div class="description-column">
			<div class="row row-narrow">
				<div class="primary-column components-column col-xs-6"></div>
				<div class="secondary-column choices-column col-xs-6"></div>
			</div>
		</div>
		<div class="controls-column">
			
		</div>
	</div>
		
	<div class="meal-customization">
		
	</div>
</script>

		<script type="text/template" id="addedset-component-template">
	<div class="row row-padded">
		<div class="col-xs-12">
			<div class="item-name item-id-{{productCode}}" data-item-id="{{productCode}}">{{{cartName}}}</div>
		</div>
	</div>
</script>

		<script type="text/template" id="addedset-choice-template">
	<div class="row row-padded">
		<div class="col-xs-8">
			<div class="item-name item-id-{{selectedSolutionCode}}" data-display-order="{{displayOrder}}" data-primarykey="{{___id}}" data-item-id="{{selectedSolutionCode}}" data-list-id="{{productCode}}" data-solution-path="{{selectedSolutionPath}}">{{{selectedSolutionCartName}}} {{#if additionInfo.inLineInfo}}<span class="choice-addition-info">{{{additionInfo.inLineInfo}}}</span>{{/if}}</div>
		</div>
		<div class="col-xs-4">
			<a href="#" data-toggle="modal" class="action-change" data-item-id="{{selectedSolutionCode}}" data-list-id="{{productCode}}">변경</a>
		</div>
	</div>
	
	<div class="modal-available-choices"></div>
</script>

<script id="available-choices-template" type="text/template">
	<form action="" accept-charset="utf-8">
		<div class="modal-dialog columns-{{columnsToDisplay}}">
			<div class="modal-content">
				<div class="modal-header">
					<h2 class="modal-title text-ucase">항목을 선택하세요</h2>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						<i class="mcd icon mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<div class="media">
						<div class="pull-left">
							<img src="http://placehold.it/120x90/" alt="" class="img-block choice-image" />
						</div>
						<div class="media-body">
							{{#if categories.length}}
							<ul class="category-tabs">
								<li><a data-categoryID="all" href="javascript:void(0);">All</a></li>	
								{{#each categories}}
								<li><a data-categoryID="{{ this.categoryID }}" href="javascript:void(0);">{{ this.categoryName }}</a></li>
								{{/each}}								
							</ul>
							{{/if}}
							<div class="available-choices-list row">

							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer text-center">
					<button type="submit" class="btn btn-red btn-lg btn-submit">확인</button>
				</div>
				
			</div>
		</div>
	</form>
</script>

<script type="text/template" id="available-choice-template">
	<div class="radio {{#if isHidden}}hidden{{/if}}" data-categoryId="{{choiceCategoriesID}}">
		<input type="radio" name="select-choice" id="choice-{{productCode}}" value="{{productCode}}" data-cartname="{{{cartName}}}" />
		<label for="choice-{{productCode}}" class="radio-label">{{{cartName}}}{{#if additionInfo.inLineInfo}}<br /><span class="choice-addition-info">{{{additionInfo.inLineInfo}}}</span>
		{{/if}}
		</label>
	</div>
</script>

<script type="text/template" id="modal-container-template">
	<div class="modal-container">
		<div id="modal-content"></div>
	</div>
</script>


<script type="text/template" id="customize-item-option-template">
	<div class="form-group">
		<label class="col-xs-6 control-label">{{label}}</label>
		<div class="col-xs-6 control-field">
			<select class="selectpicker" data-size="10" data-width="100%" name="{{name}}">
				{{#each options}}
					<option value="{{this.value}}"><div class="media-body">{{this.label}}</div> </option>
				{{/each}}
			</select>
		</div>
	</div>
</script>

		<script type="text/template" id="customize-item-details-template">
		<h4>{{{cartName}}}</h4>
		<div class="options-included"></div>
		<div class="options-addons"></div>
</script>

<script type="text/template" id="customize-item-details-option-table-template">
	<table class="table table-condensed table-customization-details customization-note"><tbody></tbody></table>
</script>


		<script type="text/template" id="customize-item-details-option-template">
	<!--<span>{{selectedLabel}} {{label}}. </span>-->
		<td class="customization-option__name">{{label}}</td>
		<td class="customization-option__value">{{selectedLabel}}</td>
		<!-- Show the following if markets ENABLE grilling prices -->
		
</script>


<script type="text/template" id="customize-item-details-empty-template">
	
</script>

		<script type="text/template" id="customize-items-template">
	<h3>항목을 선택하세요</h3>
	<div class="customize-items"></div>
</script>

		<script type="text/template" id="customize-items-empty-template">
	<p>No items to customize</p>
</script>

<script type="text/template" id="customize-item-template">
	<div class="customize-item-header clearfix">
		<h4 class="item-title">{{{cartName}}}</h4>
		<button class="btn btn-white item-toggle {{#if expanded}} {{else}} collapsed {{/if}}" data-toggle="collapse" data-target="#customize-item-{{itemid}}"><i class="mcd icon"></i></button>
	</div>
	<div id="customize-item-{{itemid}}" class="customize-item-body collapse {{#if expanded}} in {{/if}}">
		<form name="customizable-options" class="customizable-options form-horizontal" role="form">
			<div class="row">
				<!-- Included -->
				{{#if included.length}}
				<div class="customization-group customization-group-included">
					<div class="col-xs-4">
						<h5 class="group-title">Included</h5>
						<div class="customization-options-included"></div>
					</div>
				</div>
				{{/if}}
				{{#if addons.length}}
				<div class="customization-group customization-group-addons">
					<div class="col-xs-4">
						<h5 class="group-title">Add Ons</h5>
						{{#if maxAddOn}}
						<p class="text-center">You can add up to a maximum of {{{maxAddOn}}} add-ons.</p>
						{{/if}}
						<div class="customization-options-addons"></div>
					</div>
				</div>
				{{/if}}
			</div>
		</form>
	</div>
	<div class="message-container hidden" data-maxaddon-err1="You have selected more than allowed maximum add-ons for this sandwich. Please change the quantity."></div>
</script>


		<script type="text/template" id="promotion-configurator-template">
	<div class="configurator-header">
		<div class="container">
			<div class="row">
				<div class="quantity"><span class="added-quantity">0</span> <span class="small text-ucase show-on-expand">수량</span></div>				
				<div class="description">
					<h1 class="item-title">선택하기</h1>
					<p class="instruction"></p>
					<p class="instruction-error-container">이벤트 제품의 주문 최대 수량을 초과하였습니다.</p>
				</div>
				<button type="button" class="close action-cancel" aria-hidden="true"><i class="mcd icon mcd-close"></i></button>
			</div>
		</div>
	</div>
	<div class="configurator-body" role="main">
		<div class="configurator-scroller scroller">
			<div class="container">
				<div class="configurator-step step-choose-meals">
					<h3 class="step-title"><b>1단계:</b> 제품을 선택하세요</h3>
					<div class="step-content">
						<div id="available-sets"></div>
					</div>
				</div>
				
				<div class="configurator-step step-customize-meals">
					<h3 class="step-title"><b>2단계:</b> 저장 버튼을 누르세요</h3>
					<div class="step-content">
						<div id="added-sets" class="selected-meals"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="configurator-footer">
		<div class="container">
			<div class="row">
				<div class="col-xs-4 pull-left">
					<a href="#" class="h5 text-default text-ucase btn-back action-cancel"><i class="fa fa-caret-left text-primary"></i> 메뉴로 돌아가기</a>
				</div>
				<div class="col-xs-4 pull-right text-center">
					<button class="btn btn-primary btn-red btn-lg btn-block btn-submit btn-saveorder action-saveorder"><i class="mcd icon mcd-bag"></i> 
						{{#if isNewOrder}}
							확인						{{else}}
							저장						{{/if}}
					</button>
				</div>
				<!-- <div class="col-xs-4">
					<div class="subtotal">
						Sub Total: <span class="value">market.currency.unit8,888.88</span>
					</div>
					<div class="tax">
						GST: <span class="value">market.currency.unit88.88</span>
					</div>
				</div> -->
			</div>
		</div>
	</div>
</script>

		<script type="text/template" id="addedpromotionalset-template">
	<div class="meal-details row row-padded meal-id-{{productCode}}" data-meal-id="{{productCode}}">
		<div class="header-column">
			<div class="row row-narrow">
				<div class="header-delete-column">
					<a href="#" class="action-delete"><i class="mcd icon mcd-close"></i></a>
				</div>
				<div class="header-title-column">
					<h3 class="item-title">{{{variationName}}}</h3>
				</div>

				
			</div>
		</div>
		<div class="description-column">
			<div class="row row-narrow">
				<div class="primary-column components-column col-xs-6"></div>
				<div class="secondary-column choices-column col-xs-6"></div>
			</div>
		</div>
		<div class="controls-column">
			
		</div>
	</div>
		
	<div class="meal-customization">
		
	</div>
</script>

		<script type="text/template" id="addedpromotionalsetempty-template">
	<div class="empty-selection"><p>아직 아무 제품도 선택하지 않으셨습니다.</p></div>
</script>
		<script type="text/template" id="cost-template">
	{{#if tax}}
	<div class="tax pull-right">
		부가세<span class="value">{{tax}}</span>
	</div>
	{{/if}}
	{{#if subtotal}}
	<div class="subtotal pull-right">
		주문 금액: <span class="value">{{subtotal}}</span>
	</div>
	{{/if}}
</script>

		<script type="text/template" id="cost-loading-template">
	<div class="loading">
		<span class="loading-icon"></span>
	</div>
</script>

		<!-- End Configurator -->

		<!-- [#deliveryOptions.modal] -->
		
		<!-- [/#deliveryOptions.modal] -->

		<div>
		<div id="contactNumberModal" data-backdrop="static" class="modal-contactnumber modal fade" role="dialog" aria-hidden="true" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true"> <!--onclick="closeContactNumberPopUp()"-->
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
								<label class="error" style="display: none;"></label>
								<input type="text" class="form-control input-lg required number digit-only" name="contact_number" id="contact_number" data-rule-verifyphoneno="true" data-rule-number="true" placeholder="숫자만 입력" value="">

							</div>
							<div class="form-group">
								<button id="form_contact_number-confirmBtn" type="submit" class="btn btn-default btn-red btn-lg text-ucase">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.js"></script>
		<script type="text/javascript">
		/*<![CDATA[*/
			function openContactNumberPopUp() {
				if(true) {
						dataLayer.push({
							'event': 'trackVPV',
							'vpv': 'vpv_provide_contact_number_popup'
						});
				}
				$('#contactNumberModal').modal('show');
				$('#contactNumberModal').show();
			}

			function closeContactNumberPopUp() {
				$("#contactNumberModal").hide();
			}

			//closeContactNumberPopUp();

			$('#form_contactnumber').validate({
				rules: {
					contact_number: {
							number: true,
							verifyPhoneNo:true,
							required: true
					}
				},
				messages: {
					contact_number: {
							number: '\uD734\uB300\uC804\uD654 \uBC88\uD638 \uD615\uC2DD\uC774 \uC798\uBABB\uB418\uC5C8\uC2B5\uB2C8\uB2E4.',
							verifyPhoneNo:'\uD734\uB300\uC804\uD654 \uBC88\uD638 \uD615\uC2DD\uC774 \uC798\uBABB\uB418\uC5C8\uC2B5\uB2C8\uB2E4.',
							required: '\uC798\uBABB\uB41C \uD734\uB300\uC804\uD654 \uBC88\uD638\uC785\uB2C8\uB2E4.'
					}
				}
			});

			$("#form_contact_number-confirmBtn").click(function(event){
				event.preventDefault();
				if($("#form_contactnumber").valid()) {
					var contactNumberElement = $('#contact_number');
					var contactNumberVal = contactNumberElement.val();

					$("#errorTips").text("");
					$("#errorTips").removeClass("error");
					$("#errorTips").css({"display":"none"});
					$.ajaxPrefilter(function(options, originalOptions, jqXHR) {
						jqXHR.setRequestHeader("csrfValue", 'adbabdbe39b6584f2496831725874eb3');
					});

					$.ajax('/kr/ajax/addContactNumber.json', {
						data: {
							contactNumber : contactNumberVal
						},
						method:"POST",
						success: function(response, status, xhr) {
							if(response.success == true){
								if(true) {
									dataLayer.push({
										'event': 'trackEvent',
										'vpv': 'vpv_provide_contact_number_popup',
										'eventDetails.category': 'single sign on',
										'eventDetails.action': 'delivery details complete',
										'eventDetails.label': 'successful'
									});
								}
								location.reload();
							}else{
								if(true) {
									dataLayer.push({
										'event': 'trackEvent',
										'vpv': 'vpv_provide_contact_number_popup',
										'eventDetails.category': 'single sign on',
										'eventDetails.action': 'delivery details complete',
										'eventDetails.label': 'unsuccessful ' + response.errorCode
									});
								}
								$("#errorTips").addClass("error");
								$("#errorTips").text(response.errorCode);
								$("#errorTips").css({"display":"block"});
							}
						}
					});
				} else {
					if(true) {
						var formValidator = $('#form_contactnumber').validate();
						var errorMessage =formValidator.errorList.length > 0 ? formValidator.errorList[0].message : "";
						dataLayer.push({
							'event': 'trackEvent',
							'vpv': 'vpv_provide_contact_number_popup',
							'eventDetails.category': 'single sign on',
							'eventDetails.action': 'delivery details complete',
							'eventDetails.label': 'unsuccessful ' + errorMessage
						});
					}
				}
			});
	

	
</body>
</html>