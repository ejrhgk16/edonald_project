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
		$('.iradio').on('click',function(){
			$('.form-section').attr('style','display:none');
			
			var temp = $(this).find(">input").attr('data-target');
			$(temp).attr('style','display');
			
			
			$('.iradio.checked').removeClass('checked');
			$('.form-section.active-section').removeClass('actvice-section');
			$(this).addClass("checked");
			$
		});
		
		
		$('.icheckbox').on('click',function(){
			if(!$(this).hasClass("checked")){
				$(this).addClass("checked");
				$('#form_order_payment_contactno').removeAttr("disabled");
			}else{
				$(this).removeClass("checked");
				$('#form_order_payment_contactno').attr("disabled","true");
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
							<li class="list-item selected">
								<a class="list-item-target" href="?locale=ko">한국어 <i
									class="fa fa-caret-left icon"></i></a> <!-- -->
							</li>
							<li class="list-item"><a class="list-item-target"
								href="?locale=en">English <i class="fa fa-caret-left icon"></i></a></li>
						</ul>
					</div>
					<div class="my-account-quicklinks">
						<ul class="list-inline list-inline-divide">
							
							
					
					
							
						
						
							<li class="list-item">
								<img
								src="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/00/img/icon_profile_blue.png"
								alt="Profile" width="20" class="profile-avator">
								<b><span class="first-name">임지은</span></b>
							</li>
						
					
									
					
						
							
							
							
						<li class="list-item">
							
								<a class="list-item-target"
								onclick="          dataLayer.push({           'event':'logout'          });         "
								href="/kr/signout.html">로그아웃</a>
							
							
						</li>


							
							
								<li class="list-item"><a class="list-item-target"
								href="/kr/trackorder.html">주문 조회</a></li>
							
						</ul>
					</div>
				</div>
				<div class="global-navbar navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<a class="navbar-brand wos-brand" href="/kr/home.html">  
								<img
							src="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/82/img/mcdelivery_logo_ko.jpg"
							alt="McDelivery&amp;trade;">
							
						</a>
					</div>
					<div class="main-navigation clearfix">
						<ul class="nav navbar-nav">
							
							<li class="menu-item menu-item-menu"> <a
								class="menu-item-target" href="/kr/menu.html"> <i
									class="fa mcd mcd-burger icon"></i> 메뉴
							</a></li>


							



							
							
							
						<li class="menu-item menu-item-account dropdown">
							<a class="menu-item-target dropdown-toggle" href=""
								data-toggle="dropdown">
								<i class="fa fa-user icon"></i> 
								마이 페이지 
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target" href="#trackOrder"
										data-toggle="modal">주문 조회</a>
									
								</li>
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target"
										href="/kr/account-order-history.html">주문 내역</a>
								</li>
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target"
										href="/kr/account-favourites.html">즐겨찾기 메뉴</a>
								</li>
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target"
										href="/kr/addressBook.html">주소록</a>
								</li>
								
								<li class="dropdown-menu-item">
									<a class="dropdown-menu-item-target"
										href="/kr/editProfile.html">계정 설정</a>
								</li>
								
							</ul>
						</li>


							<li class="menu-item menu-item-support dropdown "><a
								class="menu-item-target dropdown-toggle" href=""
								data-toggle="dropdown"> <i class="fa fa-phone icon"></i> 기타정보<span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li class="dropdown-menu-item">
											
											
												<a class="dropdown-menu-item-target"
										href="https://www.mcdelivery.co.kr/kr/support-tnc.html?staticLinkId=7&amp;locale=ko"
										target="_self">이용약관</a>
											
										 </li>
									<li class="dropdown-menu-item">
											
												<a class="dropdown-menu-item-target"
										href="https://www.mcdelivery.co.kr/kr/support-privacy.html?locale=ko"
										target="_self">개인정보 처리방침</a>
											
											
										 </li>
									<li class="dropdown-menu-item">
											
											
												<a class="dropdown-menu-item-target"
										href="https://www.mcdelivery.co.kr/kr/support-faq.html?staticLinkId=10&amp;locale=ko"
										target="_self">자주 묻는 질문</a>
											
										 </li>
									<li class="dropdown-menu-item">
											
												<a class="dropdown-menu-item-target"
										href="http://www.mcdonalds.co.kr/kor/news/detail.do?page=1&amp;seq=517&amp;rnum=1&amp;temp_seq=&amp;searchWord="
										target="_blank">과일 칠러 판매 제외 매장</a>
											
											
										 </li>
									<li class="dropdown-menu-item">
											
											
												<a class="dropdown-menu-item-target"
										href="http://www.mcdonalds.co.kr/uploadFolder/page/p_menu.jsp?staticLinkId=17&amp;locale=ko"
										target="_blank">영양정보/원산지 정보/기타 정보</a>
											
										 </li>
									<li class="dropdown-menu-item">
											
												<a class="dropdown-menu-item-target"
										href="https://www.mcdelivery.co.kr/m/kr/changeSkin.html?skin=mobile"
										target="_self">모바일 웹</a>
											
											
										 </li>


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
								<i class="fa fa-exclamation text-white icon"></i>
								선택하신 제품의 주문 가능 시간이 <span
							class="text-primary timer session-timer">13:36</span> 분 남았습니다. 주문을 완료해 주세요!
							</p>
						</div>
					
				
				<!-- End of Session time out warning -->
				<!-- [countdownmenuswitchtimer.modal] -->
				<div id="countdownmenuswitchtimer" data-alert-type="modal"
					data-backdrop="static" data-keyboard="false"
					class="modal-countdownmenuswitchtimer modal-alert alert-menuswitch-timeout modal-alert modal fade"
					role="dialog" aria-labelledby="countdownmenuswitchtimer-title"
					aria-hidden="true" tabindex="-1">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header"></div>
							<div class="modal-body">
								<div class="row">
									<div class="col-xs-3 timer-wrapper">
										<div class="time-disclaimer">메뉴 변경 시간까지...</div>
										<div class="time timer text-din timer-clock menuswitch-timer">52:05</div>
										<div class="time-disclaimer"></div>
									</div>
									<div class="col-xs-8 timer-wrapper">
										<div class="alert-content text-left">
											<h1 id="countdownmenuswitchtimer-title">곧 메뉴가 변경됩니다!</h1>
											<p>곧 아침 메뉴로 전환됩니다. 제한 시간 내에 주문을 완료해 주세요.</p>
											<p>
												<button type="button"
													data-dismiss-trigger="menuswitch.action.ok"
													aria-hidden="true" class="btn btn-red btn-lg text-ucase">확인</button>
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
				<div data-alert-type="modal" data-backdrop="static"
					data-keyboard="false"
					class="modal-countdownstoreclosetimer modal-countdowntimer modal-alert modal fade"
					role="dialog" aria-labelledby="countdowntimer-title"
					aria-hidden="true" tabindex="-1">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">
									<i class="fa mcd mcd-close"></i>
								</button>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-xs-3 timer-wrapper">
										<div class="time-disclaimer">해당 매장의 영업은 다음 시간 후 종료됩니다:</div>
										<div class="time timer text-din timer-clock storeclose-timer">52:05</div>
									</div>
									<div class="col-xs-8 timer-wrapper">
										<div class="alert-content text-left">
											<h1 id="countdowntimer-title">배달 가능 시간</h1>
											<p>해당 지역의 매장은 오후 10:00 PM 까지 배달 가능합니다.</p>
											<p>지금 주문을 완료해 주십시오.</p>
											<p>
												<button data-dismiss="modal" aria-hidden="true"
													class="btn btn-red btn-lg text-ucase"
													data-dismiss-trigger="storeclose.action.continue">계속</button>
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

				<div class="clearfix">
					<div class="page-title pull-left">
						<h1>주문 확인</h1>
					</div>
					<div class="pull-right">
						<div class="well well-sm ordering-steps clearfix">
							<div class="steps-header">1-2-3단계로 간편하게 주문하기</div>
							<div class="steps">
								<div class="step">
									<span class="step-number text-din">1.</span><span>배달 받을 장소 &amp; 시간</span>
								</div>
								<div class="step">
									<span class="step-number text-din">2.</span><span>주문 선택</span>
								</div>
								<div class="step current">
									<span class="step-number text-din">3.</span><span>결제하기</span>
								</div>
							</div>
						</div>
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
										

										

										<div>
											
										</div>

										
	<fieldset class="fieldset payment-types">
	<div class="form-group row">
	
	<div class="col-xs-3 first col-xs-3 first online-pay" data-pay-type="  online-payment ">
			<div class="radio">
				<div class="iradio checked" style="position: relative;">
					<input type="radio" class="toggle-payment-type" data-target="#payment_mode_creditcard"
							data-thirdparty="false" name="form_order_payment_type" value="5" id="form_order_payment_type_creditcard" style="position: absolute; opacity: 0;" aria-invalid="false">
						<ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
			 	</div> 
			 	<label for="form_order_payment_type_creditcard" class="radio-label">신용카드 / 간편결제 / 기타*</label>
			</div>
	</div>
	
	<div>
	<h5>현장 결제</h5>
	
		<div class="col-xs-3 first" data-pay-type=" normal-payment ">
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
															</div> <label for="form_order_payment_type_cash"
																class="radio-label">현금</label>
			</div>
		</div>
		<section id="payment_mode_cash" class="form-section"
														style="display: none;">
		<!-- <p class="text-gray-light">To proceed with cash payment, please provide a valid Singapore mobile phone number. The system will generate a one-time authorisation PIN and this will be sent to your mobile number within the next 5 minutes.</p> -->
		<div class="form-group">
			<div class="input-group input-group-lg">
				<label class="input-group-addon input-group-addon-text"
																	for="form_order_payment_type_cashdenomination_cash">현금 선택시</label> <select
																	id="form_order_payment_type_cashdenomination_cash"
																	class="select-lg"
																	name="form_order_payment_type_cashdenomination_cash"
																	tabindex="0" aria-disabled="false"
																	style="display: none;">
					<option value="11500">₩11,500</option>
					<option value="20000">₩20,000</option>
				</select><span class="select-lg"><a
																	class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown"
																	id="form_order_payment_type_cashdenomination_cash-button"
																	role="button" href="#nogo" tabindex="0"
																	aria-haspopup="true"
																	aria-owns="form_order_payment_type_cashdenomination_cash-menu"
																	aria-disabled="false" style="width: 0px;"><span
																		class="ui-selectmenu-status">₩11,500</span><span
																		class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>  
			</div>
		</div>
		
	</section>
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
															</div> <label for="form_order_payment_type_largecash"
																class="radio-label">5만원권</label>
			</div>
		</div>
		<section id="payment_mode_largecash" class="form-section"
														style="display: none;">
		<!--<p class="text-gray-light">To proceed with cash payment, please provide a valid Singapore mobile phone number. The system will generate a one-time authorisation PIN and this will be sent to your mobile number within the next 5 minutes.</p>-->
		<div class="form-group">
			<div class="input-group input-group-lg">
				<label class="input-group-addon input-group-addon-text"
																	for="form_order_payment_type_cashdenomination_largecash">현금 선택시</label>  <select
																	name="form_order_payment_type_cashdenomination_largecash"
																	id="form_order_payment_type_cashdenomination_largecash"
																	class="select-lg" tabindex="0" aria-disabled="false"
																	style="display: none;">
					<option value="50000">₩50,000</option>
				</select><span class="select-lg"><a
																	class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown"
																	id="form_order_payment_type_cashdenomination_largecash-button"
																	role="button" href="#nogo" tabindex="0"
																	aria-haspopup="true"
																	aria-owns="form_order_payment_type_cashdenomination_largecash-menu"
																	aria-disabled="false" style="width: 0px;"><span
																		class="ui-selectmenu-status">₩50,000</span><span
																		class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span> 
			</div>
		</div>
		
	</section>
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
															</div> <label for="form_order_payment_type_cheque"
																class="radio-label">수표</label>
			</div>
		</div>
		<section id="payment_mode_cheque" class="form-section"
														style="display: none;">
		<!--<p class="text-gray-light">To proceed with cash payment, please provide a valid Singapore mobile phone number. The system will generate a one-time authorisation PIN and this will be sent to your mobile number within the next 5 minutes.</p>-->
		<div class="form-group">
			<div class="input-group input-group-lg">
				<label class="input-group-addon input-group-addon-text"
																	for="form_order_payment_type_cashdenomination_cheque">현금 선택시</label>   <select
																	name="form_order_payment_type_cashdenomination_cheque"
																	id="form_order_payment_type_cashdenomination_cheque"
																	class="select-lg" tabindex="0" aria-disabled="false"
																	style="display: none;">
					<option value="100000">₩100,000</option>
				</select><span class="select-lg"><a
																	class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown"
																	id="form_order_payment_type_cashdenomination_cheque-button"
																	role="button" href="#nogo" tabindex="0"
																	aria-haspopup="true"
																	aria-owns="form_order_payment_type_cashdenomination_cheque-menu"
																	aria-disabled="false" style="width: 0px;"><span
																		class="ui-selectmenu-status">₩100,000</span><span
																		class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>
			</div>
		</div>
		
	</section>
	
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
					<label for="form_order_payment_giftcert" class="checkbox-label">현금 영수증 요청</label>
				</div>
			</div>
			<div class="form-group">
				<div class="input-group input-group-lg">
					<label class="input-group-addon input-group-addon-text"
																for="form_order_payment_contactno">*핸드폰 번호</label>
					<span class="input-group-addon input-group-addon-text">+82</span>
					<input type="text"
																class="form-control input-group-form-control digit-only"
																maxlength="11" name="form_order_payment_contactno"
																id="form_order_payment_contactno" disabled="true"
																data-rule-verifyphoneno="true" data-rule-number="true"
																data-msg-required="휴대전화 번호를 입력하셔야 합니다."
																data-msg-number="휴대전화 번호 형식이 잘못되었습니다."
																data-msg-verifyphoneno="휴대전화 번호 형식이 잘못되었습니다."
																placeholder="숫자만 입력">
				</div>
			</div>
		</section>
	</div>
		<!-- END CONTACT NUMBER -->
		
	<!-- START AGREEMENT -->
	<section id="agree_tnc" class="active-section">
		<div class="checkbox-list checkbox-indent checkbox-list-reviewconsent">
			
			
			
			
		</div>
	</section>
	<!-- END AGREEMENT -->	

	<!-- </section> -->
	
	<p class="payment-footnote">*결제를 완료하기 위해 외부 웹 사이트로 안전하게 이동합니다</p>	

	<div>
		
		<script type="text/javascript">
		
		/*<![CDATA[*/
			jQuery(function($) {
				/* [#page-content] */
				$('.toggle-payment-type').first().iCheck('check');
				$('.toggle-payment-type').on('ifChanged', function(event) {
					var selectedType = $(event.target);
					var targetedFormId = selectedType.data('target');
					
					var paymentForms = $('.payment-types .form-section');
					var targetedForm = paymentForms.hide().removeClass('active-section').filter(targetedFormId).show().addClass('active-section');
					resetForm();
					//$('#form_order_payment .icheckbox input[type="checkbox"]').iCheck('uncheck');
					//$('#form_order_payment input[type="text"]').val('');
			
					if($("#form_order_payment_type_creditcard:checked").length > 0){
						//$('#contact_no_form').hide().removeClass('active-section')
						$('#contact_no_form').show().addClass('active-section');
						//$('#form_order_payment_agreetnc').checked();
						$('#agree_tnc').show().addClass('active-section');
						$("#payment_mode_multicashless").show();
						$("#form_order_payment_multicashless_option1").prop( "checked", true );
						$("#payment_mode_multicashless .iradio").addClass("checked");
						showCashlessButton();
						$('.toggle-giftcert').first().iCheck('uncheck');				
					}else{
						$('#contact_no_form').show().addClass('active-section');
						$("#form_order_payment_multicashless_option1").prop( "checked", false );
						$("#payment_mode_multicashless .iradio").removeClass("checked");
						showCashButton();
					}

				}).filter(':checked').trigger('ifChanged');
				
				
				$('.toggle-receipt').on('ifChecked', function(event){
					$('input[name=form_order_payment_attention]').prop('disabled', false);
				  
				}).on('ifUnchecked', function(event){
					$('input[name=form_order_payment_attention]').prop('disabled', true).val('');

				});
				
				$('.toggle-giftcert').on('ifChecked', function(event){
					$('input[name=form_order_payment_giftamount]').prop('disabled', false);
					$('input[name=form_order_payment_contactno]').prop('disabled', false);
				  
				}).on('ifUnchecked', function(event){
					$('input[name=form_order_payment_giftamount]').prop('disabled', true).val('');
					$('#form_order_payment_giftamount-error').parent().removeClass('form-group-error');
					$('#form_order_payment_giftamount-error').hide();
					
					$('input[name=form_order_payment_contactno]').prop('disabled', true).val('');
					$('#form_order_payment_contactno-error').parent().removeClass('form-group-error');
					$('#form_order_payment_contactno-error').hide();
					
				});
				
				
				
				function resetForm () {
					var parentForm = $('#form_order_payment');
					var ccCheckedRadio = parentForm.find( "[name=form_order_payment_card]:checked" );
					var ccRadio = parentForm.find("[name=form_order_payment_card]");

					// ccRadio.parents('tr').find('.mycards-cvn input').prop('disabled','disabled');

					// if($('#form_order_payment_type_creditcard').prop('checked')) {
					// 	ccRadio.filter(':first').iCheck('check');
					// 	ccRadio.filter(':first').parents('tr').find('.mycards-cvn input[type=text]').prop('disabled','');
					// } else {
					// 	ccCheckedRadio.iCheck('uncheck');
					// }

					$('select').trigger('select:refresh');
				}
				/* [/#page-content] */
				
				
				/* jQuery(".payment-types .col-xs-3 input").on('change', function(){
					
				}) */

				
			});
		
		
		/*]]>*/
		</script>
	</div>
	
	
</fieldset>
									</div>
								</div>

								

								
								
							</div>
							<button type="submit" id="submit-order-payment-button"
								hidden="true"></button>
						<input type="hidden" name="csrfValue"
								value="24a249d74efe2989ebd69ce4b41fe5f0">
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
													<td><div>서울특별시 종로구 낙원동 146-0 계성빌딩 멀티하우스 404호</div></td>
												</tr>
											</tbody>
										</table>
									</section>
									
									<section class="panel-section">
										<table class="table-default table-delivery-datetime">
											<tbody>
												<tr>
													<th scope="row">예상 배달 시간:</th>
													<td>
														<div class="when-to-deliver"></div>
														<div class="how-long-to-deliver">
															
																<span>2022/04/05 13:00</span>
															
															
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</section>
									

									<section class="panel-section">
										<table class="table-default table-cost">
											<tfoot class="total">
												<tr>
													<th scope="row">총 주문합계:</th>
													<td><span>₩ 11,500</span>

														
														</td>
												</tr>
											</tfoot>
											<tbody>
												
												
												
												<tr>
													<th scope="row">소액 주문비:</th>
													<td><span>₩ 2,500</span></td>
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
													onclick="submitPayment()" style="display: none;">결제 진행하기</button>
												
												
													<button type="submit" id="confirmBtnCashless"
													onclick="submitCashless();"
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
							value="creditCardAction">
					<input type="hidden" name="csrfValue"
							value="24a249d74efe2989ebd69ce4b41fe5f0">
					</form>
					
					
						<div style="display: none">
							<form name="payForm" id="payForm" method="post"
							action="handlePaymentAuthentication.html">
								<div class="payfin_area">
									<div class="top">NICEPAY API Pay Request PC(EUC-KR)</div>
									<div class="conwrap">
										<div class="con">
											<div class="tabletypea">
												 -- &gt;
													<table>
													<colgroup>
														<col width="30%">
														<col width="*">
													</colgroup>
													<!--  <tr>
		                <th><span>PayMethod</span></th>
		                <td>
		                  <select name="PayMethod">
		                    <option value="CARD">CARD</option>
		                    <option value="BANK">BANK TRANSFER</option>
							<option value="VBANK">VIRTUAL-BANK TRANSFER</option>
							<option value="CELLPHONE">CELLPHONE</option>                    
		                  </select>
		                </td>
		              </tr> -->						
													<tbody>
													<tr>
														<th><span>token</span></th>
														<td><input type="text" name="token" id="token"
															value=""></td>
													</tr>
													<tr>
														<th><span>NpLang</span></th>
														<td><input type="text" name="NpLang" id="NpLang"
															value=""></td>
													</tr>
													<tr>
														<th><span>SkinType</span></th>
														<td><input type="text" name="SkinType" id="SkinType"
															value=""></td>
													</tr>
													<tr>
														<th><span>LogoImage</span></th>
														<td><input type="text" name="LogoImage"
															id="LogoImage" value=""></td>
													</tr>
													<tr>
														<th><span>DeployedDate</span></th>
														<td><input type="text" name="DeployedDate"
															id="DeployedDate" value=""></td>
													</tr>
													<tr>
														<th><span>ConnType</span></th>
														<td><input type="text" name="ConnType" id="ConnType"
															value=""></td>
													</tr>
													<tr>
														<th><span>PayMethod</span></th>
														<td><input type="text" name="PayMethod"
															id="PayMethod" value=""></td>
													</tr>
													<tr>
														<th><span>NpDirectLayer</span></th>
														<td><input type="text" name="NpDirecLayer"
															id="NpDirectLayer" value=""></td>
													</tr>
													<tr>
														<th><span>AuthSignData</span></th>
														<td><input type="text" name="AuthSignData"
															id="AuthSignData" value=""></td>
													</tr>
													<tr>
														<th><span>BillAuthType</span></th>
														<td><input type="text" name="BillAuthType"
															id="BillAuthType" value=""></td>
													</tr>
													<!-- 
					  <tr>
		                <th><span>EncMode</span></th>
		                <td><input type="text" name="EncMode" id="EncMode" value="" /></td>
		              </tr>
		              -->

													<!-- <input type="hidden" name="UserIP" id="UserIP" value=""/>
		              <input type="hidden" name="MallIP" id="MallIP" value=""/>
		              <input type="hidden" name="BuyerEmail" id="BuyerEmail" value=""/>		  
		              <input type="hidden" name="GoodsCl" id="GoodsCl" value=""/>
		              <input type="hidden" name="TransType" id="TransType" value=""/> normal(0)/escrow(1) 
		              <input type="hidden" name="EncodeParameters" id="EncodeParameters" value=""/>  -->

													<input type="hidden" name="EdiDate" id="EdiDate" value="">
													<input type="hidden" name="EncryptData" id="EncryptData"
														value="">
													<input type="hidden" name="HashFlg" id="HashFlg" value="">
													<!-- hash option, 2:HMAC SHA2 -->
													<input type="hidden" name="TrKey" id="TrKey" value="">
												</tbody>
											</table>
											</div>
										</div>
										<div class="btngroup">
											<a href="#" class="btn_blue" onclick="nicepayStart();">P
												A Y</a>
										</div>
									</div>
								</div>
							</form>
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
									<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=10">추천 메뉴</a>  </li>
									<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=11">버거 &amp; 세트</a>  </li>
									<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=13">스낵 &amp; 사이드</a>  </li>
									<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=14">음료</a>  </li>
									<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=15">디저트</a>  </li>
									<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=16">해피밀®</a>  </li>
									<li><a class="menu-item-target" target="_blank"
									href="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/82/mcdelivery_menu_82_ko.pdf">메뉴 다운로드</a></li>
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
								<li class="menu-item">
									
										
										
											
												
												<a class="menu-item-target"
									href="https://www.mcdelivery.co.kr/kr/support-tnc.html?staticLinkId=7&amp;locale=ko"
									target="_self">이용약관</a>
											
											
										
									 
								</li>
								<li class="menu-item">
									
										
											<a class="menu-item-target"
									href="https://www.mcdelivery.co.kr/kr/support-privacy.html?locale=ko&amp;locale=ko"
									target="_self">개인정보 처리방침</a>
										
										
									 
								</li>
								<li class="menu-item">
									
										
										
											
												
												<a class="menu-item-target"
									href="https://www.mcdelivery.co.kr/kr/support-faq.html?staticLinkId=10&amp;locale=ko"
									target="_self">자주 묻는 질문</a>
											
											
										
									 
								</li>
								<li class="menu-item">
									
										
											<a class="menu-item-target"
									href="http://www.mcdonalds.co.kr/kor/news/detail.do?page=1&amp;seq=517&amp;rnum=1&amp;temp_seq=&amp;searchWord=&amp;locale=ko"
									target="_blank">과일 칠러 판매 제외 매장</a>
										
										
									 
								</li>
								<li class="menu-item">
									
										
										
											
												
												<a class="menu-item-target"
									href="http://www.mcdonalds.co.kr/uploadFolder/page/p_menu.jsp?staticLinkId=17&amp;locale=ko"
									target="_blank">영양정보/원산지 정보/기타 정보</a>
											
											
										
									 
								</li>
								<li class="menu-item">
									
										
											<a class="menu-item-target"
									href="https://www.mcdelivery.co.kr/m/kr/changeSkin.html?skin=mobile&amp;locale=ko"
									target="_self">모바일 웹</a>
										
										
									 
								</li>
							</ul>
						</div>
						
							<div class="column">
								<h3 class="list-group-title">팔로우</h3>
								<ul class="list-unstyled">

									<li class="menu-item">
										<a class="menu-item-target footer-icon fb"
									href="https://www.facebook.com/McDonaldsKorea" target="_blank">페이스북</a>      
									</li>

									<li class="menu-item">
										      <a class="menu-item-target footer-icon in"
									href="https://instagram.com/McDonalds_kr" target="_blank">인스타그램</a>
									</li>

									<li class="menu-item">
										  <a class="menu-item-target footer-icon yt"
									href="https://www.youtube.com/user/McDonaldsKor"
									target="_blank">유튜브</a>    
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
					<div class="text-center">한국맥도날드(유) | 대표자: 앤토니 마티네즈 | 서울특별시 종로구 종로 51 종로타워 14층 | 전화번호: 1600-5252 | 사업자등록번호: 101-81-26409 | 호스팅서비스 제공자: 아마존 웹 서비스	<br><br>공정위 사업자 링크 정보: <a
							href="https://www.ftc.go.kr/bizCommPop.do?wrkr_no=1018126409"
							target="_blank">한국맥도날드(유)</a>
					</div>
					<div class="text-center text-ucase">Copyright © 2014 All Rights Reserved By McDonald's™</div>
					<div class="text-center text-ucase">골든 아치 로고와 "i'm lovin' it"은 맥도날드 고유의 상표입니다.</div>

					
				</div>
			</div>
			
	
		



</body>

</html>