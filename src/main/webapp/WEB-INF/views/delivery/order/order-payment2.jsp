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
<script>
	$(document).ready(function(){
	
		$('.icheckbox').on('click',function(){
			var temp = $(this).find('input');
			
			if(!$(this).hasClass("checked")){
				$(this).addClass("checked");
				
				
				$(this).closest('.form-group').removeClass('form-group-error');
				temp.closest('.form-group').find('.error').text("")
			}else{
				$(this).removeClass("checked");
			
				$(this).closest('.form-group').addClass('form-group-error');
				$(this).closest('.form-group').find('.error').text(temp.attr('data-msg-required'));
				
			}
		});
		
		$('#form_order_payment_guest_mobileno').keyup(function(){
			if($(this).closest('.form-group ').hasClass('form-group-error')){ 
				var text = document.getElementById('form_order_payment_guest_mobileno').value;
			      var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
			      
			      if(text === ""){
			      	  
			      	  var ddd = $('#form_order_payment_guest_mobileno-error').closest('div');
			      	  ddd.addClass('form-group-error');
			      	  $("#form_order_payment_guest_mobileno-error").text($('#form_order_payment_guest_mobileno').attr('data-msg-required'));
			      	  allclear = false;
			      }else if (regPhone.test(text) === true) {
			      
			          var ddd = $('#form_order_payment_guest_mobileno-error').closest('div');
			      	  ddd.removeClass('form-group-error');
			      	  $("#form_order_payment_guest_mobileno-error").text("");
			      }else{
			    	
			    	  var ddd = $('#form_order_payment_guest_mobileno-error').closest('div');
			      	  ddd.addClass('form-group-error');
			      	  $("#form_order_payment_guest_mobileno-error").text($('#form_order_payment_guest_mobileno').attr('data-msg-verifyphoneno'));
			      	allclear = false;
			      }
			}
		});
	});
</script>
<script>
	var submitCashless = function(){
		 var allclear = true;
		
		  var text = document.getElementById('form_order_payment_guest_mobileno').value;
	      var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	      
	      if(!$('#form_order_payment_agreetnc').closest('div').hasClass('checked')){
	    	 
	    	  $('#form_order_payment_agreetnc').closest('.form-group').addClass('form-group-error');
	    	  $('#form_order_payment_agreetnc').closest('.form-group').find('.error').text($('#form_order_payment_agreetnc').attr('data-msg-required'));
	    	  var allclear = false;
	      }
	      if(!$('#form_register_reviewconsent_personaldata_one').closest('div').hasClass('checked')){
	    
	    	  $(this).closest('.form-group').addClass('form-group-error');
				
			  $('#form_register_reviewconsent_personaldata_one').closest('.form-group').addClass('form-group-error');
	    	  $('#form_register_reviewconsent_personaldata_one').closest('.form-group').find('.error').text($('#form_register_reviewconsent_personaldata_one').attr('data-msg-required'));
	    	  var allclear = false;
	      }
	      if(!$('#form_register_reviewconsent_tranferpersonaldata_one').closest('div').hasClass('checked')){
	  
	    	  $('#form_register_reviewconsent_tranferpersonaldata_one').closest('.form-group').addClass('form-group-error');
	    	  $('#form_register_reviewconsent_tranferpersonaldata_one').closest('.form-group').find('.error').text($('#form_register_reviewconsent_tranferpersonaldata_one').attr('data-msg-required'));
	    	  var allclear = false;
	      }
	      if(!$('#form_register_agreeage').closest('div').hasClass('checked')){
	    	 
	    	  $('#form_register_agreeage').closest('.form-group').addClass('form-group-error');
	    	  $('#form_register_agreeage').closest('.form-group').find('.error').text($('#form_register_agreeage').attr('data-msg-required'));
	    	  var allclear = false;
	      }
	      
	      
	      if(text === ""){
	      	
	      	  var ddd = $('#form_order_payment_guest_mobileno-error').closest('div');
	      	  ddd.addClass('form-group-error');
	      	  $("#form_order_payment_guest_mobileno-error").text($('#form_order_payment_guest_mobileno').attr('data-msg-required'));
	      	  allclear = false;
	      }else if (regPhone.test(text) === true) {
	         
	      }else{
	    	 
	    	  var ddd = $('#form_order_payment_guest_mobileno-error').closest('div');
	      	  ddd.addClass('form-group-error');
	      	  $("#form_order_payment_guest_mobileno-error").text($('#form_order_payment_guest_mobileno').attr('data-msg-verifyphoneno'));
	      	allclear = false;
	      }
	      
	      if(allclear = false){
	    	  return;
	      }
	}
</script>
</head>
<body class="country-82 lang-ko page-menu">


	<div class="root">
		<div class="wrap container">
			<div class="global-header">
				<!-- Begin Cookies Wrap -->

				<!-- End Cookies Wrap -->
				<div class="header-actions row">
					<div class="language-selector">
						<ul class="list-inline list-inline-divide">
							<li class="list-item selected"><a class="list-item-target"
								href="?locale=ko">한국어 <i class="fa fa-caret-left icon"></i></a>
								<!-- --></li>
							<li class="list-item"><a class="list-item-target"
								href="?locale=en">English <i class="fa fa-caret-left icon"></i></a></li>
						</ul>
					</div>
					<div class="my-account-quicklinks">
						<ul class="list-inline list-inline-divide">





							<li class="list-item"><img
								src="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/00/img/icon_profile_gray.png"
								alt="Profile" width="20" class="profile-grey-avator"></li>





							<li class="list-item"
								onclick="console.log('signin_topright'); dataLayer.push({          'event': 'trackEvent',          'vpv': 'vpv_signin_topright',          'eventDetails.category': 'signin',          'eventDetails.action': 'click',          'eventDetails.label': 'signin_topright'         });">
								<a class="list-item-target" href="#alertCartCleared-signin"
								data-toggle="modal" data-target="#alertCartCleared-signin">로그인</a>
							</li>







							<li class="list-item"><a
								class="list-item-target track-order-flag" href="#signin"
								data-toggle="modal" data-target="#signin">주문 조회</a></li>


						</ul>
					</div>
				</div>
				<div class="global-navbar navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<a class="navbar-brand wos-brand" href="/kr/home.html"> <img
							src="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/82/img/mcdelivery_logo_ko.jpg"
							alt="McDelivery&amp;trade;">

						</a>
					</div>
					<div class="main-navigation clearfix">
						<ul class="nav navbar-nav">

							<li class="menu-item menu-item-menu"><a
								class="menu-item-target" href="/kr/menu.html"> <i
									class="fa mcd mcd-burger icon"></i> 메뉴
							</a></li>
							<li class="menu-item menu-item-account dropdown"><a
								class="menu-item-target dropdown-toggle"
								href="#alertCartCleared" data-toggle="modal"
								data-target="#alertCartCleared"> <i class="fa fa-user icon"></i>
									마이 페이지
							</a></li>
						<li class="menu-item menu-item-support dropdown "><a
								class="menu-item-target dropdown-toggle" href=""
								data-toggle="dropdown"> <i class="fa fa-phone icon"></i>
									기타정보<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href="https://www.mcdelivery.co.kr/kr/support-tnc.html?staticLinkId=7&amp;locale=ko"
										target="_self">이용약관</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href="https://www.mcdelivery.co.kr/kr/support-privacy.html?locale=ko"
										target="_self">개인정보 처리방침</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href="https://www.mcdelivery.co.kr/kr/support-faq.html?staticLinkId=10&amp;locale=ko"
										target="_self">자주 묻는 질문</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href="http://www.mcdonalds.co.kr/kor/news/detail.do?page=1&amp;seq=517&amp;rnum=1&amp;temp_seq=&amp;searchWord="
										target="_blank">과일 칠러 판매 제외 매장</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href="http://www.mcdonalds.co.kr/uploadFolder/page/p_menu.jsp?staticLinkId=17&amp;locale=ko"
										target="_blank">영양정보/원산지 정보/기타 정보</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href="https://www.mcdelivery.co.kr/m/kr/changeSkin.html?skin=mobile"
										target="_self">모바일 웹</a></li>


								</ul></li>

						</ul>
					</div>
				</div>


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
									<span class="step-number text-din">1.</span><span>배달 받을
										장소 &amp; 시간</span>
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
										<div></div>
										<fieldset class="fieldset payment-types">
											<div class="form-group row">
												<div class="col-xs-3 first col-xs-3 first online-pay"
													data-pay-type="  online-payment ">
													<div class="radio">
														<div class="iradio checked" style="position: relative;">
															<input type="radio" class="toggle-payment-type"
																data-target="#payment_mode_creditcard"
																data-thirdparty="false" name="form_order_payment_type"
																value="5" id="form_order_payment_type_creditcard"
																style="position: absolute; opacity: 0;">
															<ins class="iCheck-helper"
																style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
														</div>
														<label for="form_order_payment_type_creditcard"
															class="radio-label">신용카드 / 간편결제 / 기타*</label>
													</div>
												</div>


											</div>






											<!-- END RECEIPT -->
											<!-- START GIFT CERTIFICATE -->

											<!-- END GIFT CERTIFICATE -->


											<!-- START CONTACT NUMBER -->

											<!-- END CONTACT NUMBER -->

											<!-- START AGREEMENT -->
											<section id="agree_tnc" class="active-section">
												<div
													class="checkbox-list checkbox-indent checkbox-list-reviewconsent">
													<div class="form-group">
														<div class="checkbox">
															<div class="icheckbox" style="position: relative;">
																<input type="checkbox"
																	name="form_order_payment_agreetnc" value="1"
																	id="form_order_payment_agreetnc"
																	data-rule-required="true"
																	data-msg-required="이용약관에 동의 하셔야 합니다."
																	aria-required="true"
																	style="position: absolute; opacity: 0;">
																<ins class="iCheck-helper"
																	style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
															</div>
															<label for="form_order_payment_agreetnc"
																class="checkbox-label">예, 이용약관을 확인했으며, 이에 동의합니다.
																<label id="form_order_payment_agreetnc-error" class="error" for="form_order_payment_agreetnc"></label>
																</label>
														</div>
													</div>
													
													<div class="form-group">
														<div class="checkbox">
															<div class="icheckbox" style="position: relative;">
																<input type="checkbox"
																	name="form_register_reviewconsent_personaldata_one"
																	value="1"
																	id="form_register_reviewconsent_personaldata_one"
																	data-rule-required="true" data-msg-required="*필수항목입니다."
																	aria-required="true"
																	style="position: absolute; opacity: 0;">
																<ins class="iCheck-helper"
																	style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
															</div>
															<label class="checkbox-label type-sans"
																for="form_register_reviewconsent_personaldata_one">
																<span><a href="support-privacy.html#policy_02"
																	target="_blank">개인정보 수집 및 이용</a></span> <span
																class="instructions">(필수)</span>
																<label id="form_register_reviewconsent_personaldata_one-error" class="error" for="form_register_reviewconsent_personaldata_one"></label>
															</label>
														</div>
													</div>
													<div class="form-group">
														<div class="checkbox">
															<div class="icheckbox" style="position: relative;">
																<input type="checkbox"
																	name="form_register_reviewconsent_tranferpersonaldata_one"
																	value="1"
																	id="form_register_reviewconsent_tranferpersonaldata_one"
																	data-rule-required="true" data-msg-required="*필수항목입니다."
																	aria-required="true"
																	style="position: absolute; opacity: 0;">
																<ins class="iCheck-helper"
																	style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
															</div>
															<label class="checkbox-label type-sans"
																for="form_register_reviewconsent_tranferpersonaldata_one">
																<span><a href="support-privacy.html#policy_05"
																	target="_blank">개인정보 제3자 제공</a></span> <span
																class="instructions">(필수)</span>
																<label id="form_register_reviewconsent_tranferpersonaldata_one-error" class="error" for="form_register_reviewconsent_tranferpersonaldata_one"></label>
															</label>
														</div>
													</div>
													<div class="form-group">
														<div class="checkbox">
															<div class="icheckbox" style="position: relative;">
																<input type="checkbox" name="form_register_agreeage"
																	value="1" id="form_register_agreeage"
																	data-rule-required="true" data-msg-required="*필수항목입니다."
																	aria-required="true"
																	style="position: absolute; opacity: 0;">
																<ins class="iCheck-helper"
																	style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
															</div>
															<label class="checkbox-label type-sans"
																for="form_register_agreeage"><span><span
																	class="text-gray-dark">만 14세 이상입니다.</span></span> <span
																class="instructions">(필수)</span> 
																<label id="form_register_agreeage-error" class="error" for="form_register_agreeage"></label></label>
														</div>
													</div>
												</div>
											</section>
											<!-- END AGREEMENT -->

											<!-- </section> -->

											<p class="payment-footnote">*결제를 완료하기 위해 외부 웹 사이트로 안전하게
												이동합니다</p>

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
				
			
					if($("#form_order_payment_type_creditcard:checked").length > 0){
						
						$('#contact_no_form').show().addClass('active-section');
						
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

					

					$('select').trigger('select:refresh');
				}
			

				
			});
		
		
		/*]]>*/
		</script>
											</div>


										</fieldset>
									</div>
								</div>

								<div class="panel panel-lg panel-default">
									<div class="panel-heading">
										<h3>주문 확인</h3>
									</div>
									<div class="panel-body">
										<section class="panel-section panel-qualify-promotion">
											<p class="text-gray-light">맥도날드 배달원에게 연락받으실 수 있는 전화번호를
												입력해 주세요</p>
											<div class="form-group">
												<label id="form_order_payment_guest_mobileno-error" class="error" for="form_order_payment_guest_mobileno"></label>
												<div class="input-group input-group-lg">
													<label
														class="input-group-addon input-group-addon-text field-label "
														for="form_order_verification_mobileno"><span
														class="required-symbol">*</span> <span
														class="required-symbol">*</span> <span>휴대폰 번호</span></label>

													<div>
														<input type="text"
															class="form-control input-group-form-control digit-only"
															name="form_order_verification_mobileno"
															id="form_order_payment_guest_mobileno"
															data-rule-required="true" data-rule-verifyphoneno="true"
															aria-required="true" aria-invalid="true"
															data-msg-required="휴대폰 번호를 입력해 주세요."
															data-msg-verifyphoneno="잘못된 형식의 휴대폰 번호입니다."
															placeholder="숫자만 입력" value="">
													</div>
												</div>
											</div>
											<p class="text-gray-light">주문결과를 전달받을 이메일 주소를 입력해 주세요.
												(선택)</p>
											<div class="form-group">
												<div class="input-group input-group-lg">
													<label
														class="input-group-addon input-group-addon-text field-label "
														for="form_order_verification_email"> <span>이메일</span></label>
													<input type="email"
														class="form-control input-group-form-control"
														id="form_order_verification_email"
														name="form_order_verification_email"
														data-rule-email="true" aria-required="true"
														data-msg-email="이메일 형식이 잘못되었습니다."
														placeholder="name@mail.com" value="">
												</div>
											</div>
											<!-- Guet terms and condition checkbox for Vietnam START -->

											<!-- Guest terms and condition checkbox for Vietnam END -->
										</section>
									</div>
								</div>



							</div>
							<button type="submit" id="submit-order-payment-button"
								hidden="true"></button>
							<input type="hidden" name="csrfValue"
								value="e08262bd8c4caa15ff7ad361654a9df3">
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
													<td><div>서울특별시 종로구 낙원동 146-0 계성빌딩 404호</div></td>
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

															<span>2022/04/03 20:00</span>


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
													<td><span>₩ 9,800</span></td>
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
													onclick="submitPayment()" style="display: none;">결제
													진행하기</button>


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
							value="creditCardAction"> <input type="hidden"
							name="csrfValue" value="e08262bd8c4caa15ff7ad361654a9df3">
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
										<a href="#" class="btn_blue" onclick="nicepayStart();">P A
											Y</a>
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
									href="/kr/menu.html?daypartId=1&amp;catId=10">추천 메뉴</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=11">버거 &amp; 세트</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=13">스낵 &amp; 사이드</a>
								</li>
								<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=14">음료</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=15">디저트</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="/kr/menu.html?daypartId=1&amp;catId=16">해피밀®</a></li>
								<li><a class="menu-item-target" target="_blank"
									href="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/82/mcdelivery_menu_82_ko.pdf">메뉴
										다운로드</a></li>
							</ul>
						</div>




						<div class="column">
							<h3 class="list-group-title">기타정보</h3>
							<ul class="list-unstyled">
								<li class="menu-item"><a class="menu-item-target"
									href="https://www.mcdelivery.co.kr/kr/support-tnc.html?staticLinkId=7&amp;locale=ko"
									target="_self">이용약관</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="https://www.mcdelivery.co.kr/kr/support-privacy.html?locale=ko&amp;locale=ko"
									target="_self">개인정보 처리방침</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="https://www.mcdelivery.co.kr/kr/support-faq.html?staticLinkId=10&amp;locale=ko"
									target="_self">자주 묻는 질문</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="http://www.mcdonalds.co.kr/kor/news/detail.do?page=1&amp;seq=517&amp;rnum=1&amp;temp_seq=&amp;searchWord=&amp;locale=ko"
									target="_blank">과일 칠러 판매 제외 매장</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="http://www.mcdonalds.co.kr/uploadFolder/page/p_menu.jsp?staticLinkId=17&amp;locale=ko"
									target="_blank">영양정보/원산지 정보/기타 정보</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="https://www.mcdelivery.co.kr/m/kr/changeSkin.html?skin=mobile&amp;locale=ko"
									target="_self">모바일 웹</a></li>
							</ul>
						</div>

						<div class="column">
							<h3 class="list-group-title">팔로우</h3>
							<ul class="list-unstyled">

								<li class="menu-item"><a
									class="menu-item-target footer-icon fb"
									href="https://www.facebook.com/McDonaldsKorea" target="_blank">페이스북</a>
								</li>

								<li class="menu-item"><a
									class="menu-item-target footer-icon in"
									href="https://instagram.com/McDonalds_kr" target="_blank">인스타그램</a>
								</li>

								<li class="menu-item"><a
									class="menu-item-target footer-icon yt"
									href="https://www.youtube.com/user/McDonaldsKor"
									target="_blank">유튜브</a></li>

							</ul>
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

			<div style="display: none">
				Store Number:1140396<br>:NpVersion: 6.1<br>Store Status:<br>1
			</div>

		</div>

	</div>
	<div id="loading-view" class="loading-view hidden">
		<div class="loading">
			<span class="loading-icon"></span>
		</div>
	</div>



	<div id="signin" class="modal-login modal fade signin-modal"
		role="dialog" aria-labelledby="modal-title" aria-hidden="true"
		tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">



					<img class="logo"
						src="https://www.mcdelivery.co.kr/kr//static/1646703884037/assets/82/img/mcdelivery_logo_ko.jpg"
						alt="">


					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">

					<h2 id="modal-title">주문을 하시려면 로그인하시기 바랍니다.</h2>




					<div class="row">
						<div class="col-xs-offset-3 col-xs-6">



							<ul id="signin-nav-tabs-login-fragment"
								class="nav nav-tabs nav-tabs-login-fragment">
								<li class="active"><a href="#modal-signin-tab-login"
									data-toggle="tab"
									onclick="dataLayer.push({               'event': 'trackEvent',               'eventDetails.category': 'sign in modal',               'eventDetails.action': 'click popup modal',               'eventDetails.label': 'sign in'              });">로그인</a>
								</li>

								<li class=""><a href="#modal-signin-tab-new"
									data-toggle="tab"
									onclick="dataLayer.push({               'event': 'trackEvent',               'eventDetails.category': 'sign in modal',               'eventDetails.action': 'click popup modal',               'eventDetails.label': 'i am new'              });">비회원
										주문</a></li>


							</ul>
							<div class="tab-content clearfix">
								<div class="tab-pane active" id="modal-signin-tab-login">
									<form action="#" method="post" accept-charset="utf-8"
										role="form" id="form_login_modal" name="form_login_modal"
										class="form-login-modal form-login"
										data-required-symbol="false" novalidate="novalidate">

										<fieldset class="form-credentials">
											<div class="list-group textfield-list-group">
												<div class="list-group-item textfield-list-group-item">
													<label class="sr-only" for="form_login_modal_username">아이디</label>
													<input type="text" name="userName"
														id="form_login_modal_username"
														class="required email list-group-form-control"
														placeholder="아이디" value="" aria-required="true">
												</div>
												<div class="list-group-item textfield-list-group-item">
													<label class="sr-only" for="form_login_modal_password">비밀번호</label>

													<input type="password" name="password"
														id="form_login_modal_password"
														class="required list-group-form-control"
														placeholder="비밀번호" autocomplete="off" maxlength="20"
														value="" aria-required="true">
												</div>
											</div>
											<label id="errorTips" style="display: none;"></label>
											<div class="checkbox">
												<div class="icheckbox" style="position: relative;">
													<input type="checkbox" name="rememberMe"
														id="modal_login_rememberme" value="true"
														style="position: absolute; opacity: 0;">
													<ins class="iCheck-helper"
														style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
												</div>
												<input type="hidden" name="_rememberMe" value="on">
												<label for="modal_login_rememberme" class="checkbox-label">자동
													로그인</label>
											</div>
										</fieldset>
										<fieldset class="form-actions">

											<button type="button"
												class="isLoginSuccessGtmEnabled btn btn-default btn-red btn-block btn-xl btn-submit">로그인</button>


											<p class="action-forgot-password">
												<a class="action-link" href="/kr/forgot-password.html">비밀번호
													찾기</a>
											</p>


										</fieldset>
									</form>

									<div
										class="frament-new-user section-border-top margin-bottom-0 centered-text">

										<a class="btn btn-block btn-red btn-xl"
											onclick="                   dataLayer.push({                    'event':'trackEvent',                    'eventDetails.category':'i am new',                    'eventDetails.action':'click popup modal',                    'eventDetails.label':'register now'                   });                  "
											href="guest.html"> <span>회원가입</span>
										</a>


									</div>
									<a href="#member-benefits" class="h5 text-link"
										data-toggle="html-popover" data-container="body"
										data-placement="top" data-html="true"
										data-content-selector="#member-benefits"
										data-original-title="" title=""> <span
										class="text-default">회원가입 하시고 다양한 혜택을 누리세요</span> <i
										class="mcd icon mcd-detail"></i>
									</a>
									<div id="member-benefits"
										class="popover-wrapper popover-details">
										<div class="popover-wrapper">
											<h5 class="text-default">신규 계정 생성</h5>
											<div class="guest-order-note"
												style="max-width: 300px !important; width: 300px !important;">맥딜리버리
												회원에게만 제공되는 할인 및 프로모션 혜택을 누리고, 지난 주문 내역을 검색하거나 즐겨찾기 메뉴를 이용해서
												더 빠르고 편리하게 맥딜리버리를 이용하세요.</div>
										</div>
									</div>


								</div>
								<div class="tab-pane " id="modal-signin-tab-new">

									<div class="frament-guest-order">
										<div class="guest-order-header">회원가입하지 않고 주문하기</div>
										<div class="guest-order-note">온라인 결제로 즉시 주문</div>
										<a class="btn btn-block btn-red btn-xl"
											onclick="dataLayer.push(               {                'event': 'trackEvent',                'eventDetails.category': 'i am new',                'eventDetails.action': 'click popup modal',                'eventDetails.label': 'guest order'               });"
											href="/kr/guest_address.html">비회원 주문</a>
									</div>
								</div>

							</div>



						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="deliveryOptions" data-backdrop="static"
		class="modal-deliveryoptions modal fade" role="dialog"
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
					<form action="/kr/selection/menu.html" method="post" role="form"
						class="form form_deliveryoptions" id="form_deliveryoptions"
						data-required-symbol="*" novalidate="novalidate">
						<fieldset class="fieldset fieldset-deliveryaddress">
							<div class="fieldset-heading">
								<h2>배달 받으실 주소를 선택해 주세요.</h2>
							</div>

							<div class="form-group">
								<select name="address" id="form_deliveryoptions_address"
									class="hide-default-error guest-address-picker"
									aria-disabled="false" tabindex="0" style="display: none;">
									<option value="1">서울특별시 종로구 낙원동 146-0 계성빌딩 404호</option>
								</select><span class="hide-default-error guest-address-picker"><a
									class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown"
									id="form_deliveryoptions_address-button" role="button"
									href="#nogo" tabindex="0" aria-haspopup="true"
									aria-owns="form_deliveryoptions_address-menu"
									aria-disabled="false" style="width: 0px;"><span
										class="ui-selectmenu-status">서울특별시 종로구 낙원동 146-0 계성빌딩
											404호</span><span
										class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>
								<a class="action-secondary action-link"
									href="/kr/guest_address.html"> <i class="fa fa-caret-right"></i>
									<span>주소록 수정</span>
								</a>
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
									<div class="iradio" style="position: relative;">
										<input type="radio" value="now"
											name="form_deliveryoptions_datetime"
											id="form_deliveryoptions_datetime_now"
											style="position: absolute; opacity: 0;">
										<ins class="iCheck-helper"
											style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
									</div>
									<label class="radio-label"
										for="form_deliveryoptions_datetime_now">즉시 주문</label>
									<!-- Start:: Code added for conflict between Master & SG Batch 2 Branch -->

									<div>
										<div class="address-status-third-party">
											<div class="address-status-extra-text hide">Alternatively,
												order on to get your food faster!</div>
										</div>
									</div>
									<!-- END:: Code added for conflict between Master & SG Batch 2 Branch -->
								</div>
								<div class="radio">
									<div class="iradio checked" style="position: relative;">
										<input type="radio" value="later"
											name="form_deliveryoptions_datetime"
											id="form_deliveryoptions_datetime_later" checked="checked"
											style="position: absolute; opacity: 0;">
										<ins class="iCheck-helper"
											style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
									</div>
									<label class="radio-label"
										for="form_deliveryoptions_datetime_later">예약 주문 (배달
										받으실 시간 기준 최소 null시간 전까지 주문 가능합니다.)</label>
								</div>
								<div class="deliverydatetime-group">
									<div class="form-group deliverydatetime">
										<label class="field-label overlay-sub-label">날짜:</label> <select
											class="hide-default-error" name="date"
											id="form_deliveryoptions_date" aria-disabled="false"
											tabindex="0" style="display: none;">
											<option value="2022/04/03">2022/04/03</option>
											<option value="2022/04/04">2022/04/04</option>
											<option value="2022/04/05">2022/04/05</option>
											<option value="2022/04/06">2022/04/06</option>
											<option value="2022/04/07">2022/04/07</option>
											<option value="2022/04/08">2022/04/08</option>
											<option value="2022/04/09">2022/04/09</option>
											<option value="2022/04/10">2022/04/10</option>
										</select><span class="hide-default-error"><a
											class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown"
											id="form_deliveryoptions_date-button" role="button"
											href="#nogo" tabindex="0" aria-haspopup="true"
											aria-owns="form_deliveryoptions_date-menu"
											aria-disabled="false" style="width: 0px;"><span
												class="ui-selectmenu-status">2022/04/03</span><span
												class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>

									</div>
									<div class="form-group deliverydatetime">
										<label class="field-label overlay-sub-label">시간:</label> <select
											class="hide-default-error" name="time"
											id="form_deliveryoptions_time" aria-disabled="false"
											tabindex="0" style="display: none;">
											<option value="">배달 받으실 시간을 선택해 주세요</option>
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
										</select><span class="hide-default-error"><a
											class="ui-selectmenu ui-widget ui-state-default ui-corner-all ui-selectmenu-dropdown"
											id="form_deliveryoptions_time-button" role="button"
											href="#nogo" tabindex="0" aria-haspopup="true"
											aria-owns="form_deliveryoptions_time-menu"
											aria-disabled="false" style="width: 0px;"><span
												class="ui-selectmenu-status">배달 받으실 시간을 선택해 주세요</span><span
												class="ui-selectmenu-icon ui-icon ui-icon-triangle-1-s"></span></a></span>
									</div>
								</div>
								<div class="deliverydatetime deliverydatetime-status"></div>
							</div>
						</fieldset>
						<fieldset class="fieldset form-actions">
							<!-- Start:: Code added for conflict between Master & SG Batch 2 Branch -->
							<div>

								<div class="form-group">
									<button type="submit"
										class="btn btn-red btn-xl btn-submit action-startneworder">계속</button>
								</div>


							</div>

							<!-- END:: Code added for conflict between Master & SG Batch 2 Branch -->
						</fieldset>
						<fieldset class="fieldset footnotes">
							<div class="note">단체 주문 -</div>
							<div class="note">예약 주문 - 주문을 받기 원하시는 일정의 2시간 전부터 7일 전까지 예약
								주문이 가능합니다.</div>
							<div class="note">기상 조건 - 배달 소요시간은 해당 지역의 기상 조건에 따라 달라질 수
								있습니다.배달 소요시간은 해당 지역의 기상 조건에 따라 달라질 수 있습니다.</div>
							<div class="note">맥딜리버리 서비스 메뉴의 가격은 매장의 가격과 상이합니다.</div>
							<div class="note">Some stores may have limited delivery
								hours.</div>
							<div class="note">Law and order - In the event of any
								unforeseen law and order situation, McDonald’s will not be held
								liable in case of non-delivery of your order.</div>
							<div class="note">Natural disaster - In the event of any
								unforeseen natural calamity, McDonald’s will not be held liable
								in case of non- delivery of your order.</div>
						</fieldset>
						<input type="hidden" name="csrfValue"
							value="e08262bd8c4caa15ff7ad361654a9df3">
					</form>
				</div>
			</div>
		</div>
	</div>
	<div id="trackOrder" class="modal-trackorder modal fade"
		data-backdrop="static" role="dialog"
		aria-labelledby="trackorder-title" aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="trackorder-title">주문 조회</h1>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<p>주문 번호를 입력하시면 고객님의 주문의 진행상황을 확인하실 수 있습니다.</p>
					<form action="/kr/searchOrder.html" method="post" role="form"
						id="form_trackOrder" name="form_trackOrder"
						class="form form-track-order" novalidate="novalidate">

						<div class="form-group">
							<label class="field-label" for="form_trackOrder_orderNum">주문
								번호:</label> <input type="text" class="form-control input-lg required"
								id="form_trackOrder_orderNum" name="orderNum"
								aria-required="true">
						</div>
						<div class="form-group">
							<button type="submit"
								class="btn btn-default btn-red btn-lg text-ucase">확인</button>
						</div>
						<input type="hidden" name="csrfValue"
							value="e08262bd8c4caa15ff7ad361654a9df3">
					</form>
					<p class="note">주문 관련 문의사항은 맥딜리버리 콜센터로연락하시기 바랍니다1600-5252.</p>
				</div>
			</div>
		</div>
	</div>
	<div id="alertCartCleared-signin" data-backdrop="static"
		class="modal-cartcleared modal-alert modal fade" role="dialog"
		aria-labelledby="cartcleared-title" aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="cartcleared-title">이전 선택한 메뉴는 취소됩니다.</h1>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<div class="alert-content">
						<p>진행하시겠습니까?</p>
						<p>
							<button data-dismiss="modal" aria-hidden="true"
								class="btn btn-default btn-black btn-lg text-ucase">
								아니오</button>
							<button data-switch-modal="#signin" data-toggle="modal"
								aria-hidden="true"
								class="btn btn-default btn-red btn-lg text-ucase"
								onclick="dataLayer.push({                          'event' : 'trackEvent',                          'eventDetails.category': 'cart clearance',                          'eventDetails.action': 'cart is cleared',                          'eventDetails.label': 'guest signin'                         });">
								예</button>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="alertCartCleared-changeaddress" data-backdrop="static"
		class="modal-cartcleared modal-alert modal fade" role="dialog"
		aria-labelledby="cartcleared-title" aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="cartcleared-title">이전 선택한 메뉴는 취소됩니다.</h1>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<div class="alert-content">
						<p>진행하시겠습니까?</p>
						<p>
							<button data-dismiss="modal" aria-hidden="true"
								class="btn btn-default btn-black btn-lg text-ucase">
								아니오</button>
							<button
								data-dismiss-trigger="changeaddress.cartcleared.action.yes"
								aria-hidden="true"
								class="btn btn-default btn-red btn-lg text-ucase"
								onclick="dataLayer.push({                           'event' : 'trackEvent',                           'eventDetails.category': 'cart clearance',                           'eventDetails.action': 'cart is cleared',                           'eventDetails.label': 'change delivery address'                          });">
								예</button>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>





	<div id="promo-removed-alert-modal" data-backdrop="static"
		class="modal-alert modal fade" role="dialog"
		aria-labelledby="promo-removed-alert-title" aria-hidden="true"
		tabindex="-1>">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="promo-removed-alert-title">사용 가능한 프로모션이 없습니다</h1>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<div class="alert-content promo-removed-alert-desc">
						<p>맥딜리버리를 이용해 주셔서 감사합니다. 해당 프로모션은 사용 가능한 횟수가 모두 사용되어 현재 사용
							가능하지 않습니다.:</p>
						<ul class="promo-removed-alert-promo-list">

						</ul>
						<button data-dismiss="modal" aria-hidden="true"
							class="btn btn-default btn-red btn-lg text-ucase">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="orderSubmittedPaymentGateway" data-backdrop="static"
		class="modal-ordersubmittedpaymentgateway modal-alert modal fade"
		role="dialog" aria-labelledby="ordersubmittedpaymentgateway-title"
		aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="ordersubmittedpaymentgateway-title">주문 확인</h1>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<div class="alert-content">
						<p>주문이 접수되었습니다.</p>
						<p>
							<a data-dismiss="modal" aria-hidden="true"
								class="btn btn-default btn-red btn-lg text-ucase btn-proceed">확인</a>
							<a aria-hidden="true"
								class="btn btn-default btn-red btn-lg text-ucase"
								href="/kr/trackorder.html">주문 조회</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- [#trackOrder.modal] -->

	<!-- [/#trackOrder.modal] -->


	<!-- [countdowntimer.modal] -->
	<div id="countdowntimer" data-alert-type="modal" data-backdrop="static"
		data-keyboard="false"
		class="modal-countdowntimer modal-alert alert-session-timeout modal-alert modal fade"
		role="dialog" aria-labelledby="countdowntimer-title"
		aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header"></div>
				<div class="modal-body">
					<div class="row">
						<div class="col-xs-3 timer-wrapper">

							<div class="time-disclaimer">세션 만료까지</div>


							<div class="time timer text-din timer-clock session-timer">14:55</div>


							<div class="time-disclaimer">분 남았습니다</div>
						</div>
						<div class="col-xs-8 timer-wrapper">
							<div class="alert-content text-left">

								<h1 id="countdowntimer-title">아직도 주문 중이신가요?</h1>


								<p>일시적으로 중단되었습니다. 주문을 계속하시겠습니까?</p>
								<p>
									<button type="button"
										data-dismiss-trigger="session.action.continue"
										aria-hidden="true" class="btn btn-red btn-lg text-ucase">
										계속</button>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [/countdowntimer.modal] -->

	<!-- [#paymentInProgress.modal] -->
	<div id="paymentInProgress" data-backdrop="static"
		class="modal-paymentinprogress modal-alert modal fade" role="dialog"
		aria-labelledby="paymentinprogress-title" aria-hidden="true"
		tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="paymentinprogress-title">Payment in Progress</h1>
					<!-- <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa mcd mcd-close"></i></button> -->
				</div>
				<div class="modal-body">
					<div class="alert-content">
						<p>
							We are redirecting you to our payment platform to complete your
							order.<br>Please wait.
						</p>
						<!-- MDSAP-9781: Removed cancel button from all market: vikrnaya-->

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- [/#paymentInProgress.modal] -->
	<!--  [#cashPaymentConfirmation.modal] -->

	<!--  [#cashPaymentConfirmation.modal] -->

	<!--  [#orderVerificationOTP.modal] -->
	<div id="orderVerificationOTP" data-backdrop="static"
		class="orderverificationotp modal-alert modal fade" role="dialog"
		data-show="true" aria-labelledby="orderverificationotp-title"
		aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="orderverificationotp-title">주문 확인</h1>
				</div>
				<div class="modal-body">
					<div class="alert-content">
						<p>
							감사합니다. <strong>1분</strong> 이내로 인증 번호가 고객님의 번호 <strong></strong>
							번으로 전송될 예정입니다.
						</p>
						<p>
							1분 내에 인증 번호를 받지 못하였거나 문제가 발생했다면, <a href="#" data-dismiss="modal"
								aria-label="Close">여기</a>를 클릭하여 주십시오.
						</p>

						<p>주문을 수정하려면, 취소 버튼을 클릭해 주세요.</p>
					</div>
					<div class="row">
						<div class="payment-process" style="display: none;">
							<p>
								<strong>주문이 처리 중이오니 기다려 주십시오.<br> 브라우저를 닫거나 새로고침,
									혹은 뒤로가기 버튼을 누르지 마십시오.
								</strong>
							</p>
							<div class="loading">
								<span class="loading-icon"></span>
							</div>
						</div>
						<div class="col-xs-offset-3 col-xs-6">
							<form class="form form-horizontal" role="form"
								id="form_orderverification_otp" method="post"
								action="/kr/ajax/otpAuthorization.json">
								<div class="form-group">
									<label class="error" for="form_orderverification_pin"
										style="display: none;"></label> <input type="text"
										class="form-control input-lg required"
										name="form_orderverification_pin"
										id="form_orderverification_pin" placeholder="인증 번호">
								</div>
								<div class="form-group">
									<button data-dismiss="modal" aria-hidden="true"
										class="btn btn-default btn-black btn-lg text-ucase">취소</button>
									<button type="submit" id="otpSubmit"
										class="btn btn-default btn-red btn-lg text-ucase">완료</button>
								</div>
								<input type="hidden" name="csrfValue"
									value="e08262bd8c4caa15ff7ad361654a9df3">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  [#orderVerificationOTP.modal] -->


	<!-- [#authorizationPinError.modal] -->
	<div id="authorizationPinError" data-backdrop="static"
		class="modal-authorizationpinerror modal-alert modal fade modal-hastimer"
		role="dialog" aria-labelledby="authorizationpinerror-title"
		aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="authorizationpinerror-title">One-time Authorization
						PIN Error</h1>
					<!-- <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa mcd mcd-close"></i></button> -->
				</div>
				<div class="modal-body">
					<div class="alert-content">
						<p>
							We're sorry, your session has ended.<br>
							<br>We were unable to save your order as you have exceeded
							the number of one-time authorization PIN attempts. Please log in
							to make your selection again.
						</p>
						<span style="display: none" class="timer" data-countdown-time="10"
							data-countdown-layout="{sn}"
							data-countdown-redirect-url="/kr/signout.html"></span>
						<p>
							<a href="signout.html"><button
									class="btn btn-default btn-red btn-lg text-ucase"
									onclick="dataLayer.push({                          'event' : 'trackEvent',                          'vpv': 'vpv_order_verification/unable_to_save_order_otp_session_ended',                          'eventDetails.category': 'cart clearance',                          'eventDetails.action': 'cart is cleared',                          'eventDetails.label': 'unable to save order as verification code timeout'                         });">확인</button></a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [/#authorizationPinError.modal] -->
	<!-- [#alertLargeOrderCashThreshold.modal] -->
	<div id="alertLargeOrderCashThreshold" data-backdrop="static"
		class="modal-alertlargeordercashthreshold modal-alert modal fade"
		role="dialog" aria-labelledby="alertlargeordercashthreshold-title"
		aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="alertlargeordercashthreshold-title">대량 주문 확인</h1>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
				</div>
				<div class="modal-body">
					<div class="alert-content">
						<p>주문금액이 현금 결제의 최대한도액을 초과합니다. 신용카드 결제를 선택하시거나 1600 5252로
							문의하세요.</p>
						<p>
							<button data-dismiss="modal" aria-hidden="true"
								class="btn btn-default btn-red btn-lg text-ucase">확인</button>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [/#alertLargeOrderCashThreshold.modal] -->
	<!-- [#alertOrderSubmitted.modal] -->
	<div id="alertOrderSubmitted" data-backdrop="static"
		data-keyboard="false"
		class="modal-ordersubmitted modal-alert modal fade" role="dialog"
		aria-labelledby="ordersubmitted-title" aria-hidden="true"
		tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="ordersubmitted-title">주문 확인</h1>
				</div>
				<div class="modal-body">
					<div class="alert-content">
						<p>
							Y주문이 정상적으로 접수되었습니다.<br>
							<br>이전에 오류 메시지를 보셨다면, 일시적인 장애가 원인일 수 있습니다. 이용에 불편을 드려 죄송합니다.
						</p>
						<p>
							<a class="btn btn-default btn-red btn-lg text-ucase"
								href="account-order-history.html">확인</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [/#alertOrderSubmitted.modal] -->

	<!-- [#alertProductsTemporarilyUnavailable.modal] -->

	<!-- [/#alertProductsTemporarilyUnavailable.modal] -->












	<script>
			/*<![CDATA[*/
			$(document).on('ready', function() {
				var isPlexureAuthEnabled = false;
				if(isPlexureAuthEnabled){
					$.ajaxPrefilter(function(options, originalOptions, jqXHR) {
						jqXHR.setRequestHeader("csrfValue", 'e08262bd8c4caa15ff7ad361654a9df3');
					});

					var sendingOtp = false;
					$("#resend-otp-link").on('click', function () {
						var mfaToken = $('#form_accountverification_mfa').val();
						if(!sendingOtp){
							console.log("Handling click on resend otp.");
							sendingOtp = true;
							$('html').addClass("wait");
							$.ajax( {
								type: 'POST',
								url: '/kr/ajax/resendOtp.json',
								complete: function () {
									$('html').removeClass("wait");
									sendingOtp = false;
								},
								data: JSON.stringify({ mfaToken: mfaToken }),
								contentType: "application/json; charset=utf-8",
								dataType: "json",
								success: function(data) {
									if(data.code === 1){
										console.log("Otp sent successfully.");
									} else {
										console.error("Error trying to send otp. [errCode=" + data.code + "]");
										$('#accountVerificationOTP').modal('hide');
										//User is locked
										if (data.code === -1049) {
											console.error("Showing account locked modal.");
											$('#authorizationPinError-accountVerification').modal('show');
										} else {
											console.error("Redirecting to home.html");
										}
									}
								}
							});
						}
					});
				}
			});
			/*]]>*/
		</script>

	<script>
			/*<![CDATA[*/
			$(function(){
				var removedPromotions = [] || [];

				var statusRemoved = 'removed';
				removedPromotions = removedPromotions.filter(lp => lp.status === statusRemoved);

				console.log("removedPromotions: ");
				console.log(removedPromotions);
				if(removedPromotions.length > 0){
					console.log("Before removedPromotions popup...")
					$("#promo-removed-alert-modal").modal('show');
				};
			});
			/*]]>*/
		</script>
	<script>
			/*<![CDATA[*/
				$(function() {
					var autoCheckEnabled = true;	
					var remCheckInitialised = false;
	
					$("#modal_login_rememberme").on("ifChecked", function(event){
						if(remCheckInitialised) {
							$("#rememberMe").modal("show"); 
						} 			
					});
					
					$(".signin-modal").on("show.bs.modal", function(event){ 
						remCheckInitialised = false;
						
						console.log("signind-modal show event...")
						console.log("auto check enabled: " + autoCheckEnabled);
						
						if(autoCheckEnabled){
							$("#modal_login_rememberme").iCheck("check");		
						}
						remCheckInitialised = true;
					});
					
				});
			/*]]>*/
		</script>

	<script>
			/*<![CDATA[*/
				$(function() {
					$('.global-privacy-notice').removeClass('show');
				});
			/*]]>*/
		</script>


	<script>
			$(document).ready(function() {
				console.log("doc ready");
                $(":input[name= 'form_deliveryoptions_datetime']").on('change', function() {
					console.log("Delivery option date-time changed")
                    var value = $('input[name=form_deliveryoptions_datetime]:checked').attr("value");
                    if (value == "later") {
                        $('#form_deliveryoptions_time').selectmenu('enable');
                        $('#form_deliveryoptions_date').selectmenu('enable');
						$('.deliverydatetime-group').show();
                    } else {
                        $('#form_deliveryoptions_time').selectmenu('disable');
                        $('#form_deliveryoptions_date').selectmenu('disable');
						$('.deliverydatetime-group').hide();
                    }

                });
                $(":input[name= 'form_deliveryoptions_datetime']").trigger("change");
				console.log("onChange set");
    });
			</script>

	<script>
			$(document).ready(function() {
				console.log("doc ready2");
                $("#form_deliveryoptions_datetime_later").on('change', function() {
					console.log("form_deliveryoptions_datetime_later changed")
					$('.deliverydatetime-group').show();   
                });
				
				$("#form_deliveryoptions_datetime_now").on('change', function() {
					console.log("form_deliveryoptions_datetime_now changed")
					$('.deliverydatetime-group').hide();   
                });
				
				$("#form_deliveryoptions_datetime_later").on('ifChecked', function() {
					console.log("form_deliveryoptions_datetime_later ifChecked")
					$('.deliverydatetime-group').show();   
                });
				
				$("#form_deliveryoptions_datetime_now").on('ifChecked', function() {
					console.log("form_deliveryoptions_datetime_now ifChecked")
					$('.deliverydatetime-group').hide();   
                });
				
				console.log("onChange set2");
    });
		</script>

	<script>
/*<![CDATA[*/
	$(function() {
		
		if(false){
			$('body').on('click', '.menu-item-menu .menu-item-target, .action-ordernow, a[href*="account-order-history"] , a[href*="account-favourites"]', function(event) {
					event.preventDefault();
					$('#deliveryOptions').one('show.bs.modal', function() {
							$('#form_deliveryoptions_datetime_later').iCheck('check');
					}).modal('show');
			});
		  }
		/* [#deliveryOptions.modal] */
    	$('#form_deliveryoptions').deliveryOptions({
    		// copy
    		timeInputHint: '\uBC30\uB2EC \uBC1B\uC73C\uC2E4 \uC2DC\uAC04\uC744 \uC120\uD0DD\uD574 \uC8FC\uC138\uC694',
    			
    		// api endpoints
    		getTimeSlotsUrl: '/kr/ajax/getTimeSlots.json',
    		validateUrl: '/kr/validate/validateStoreStatus.json',
			
			// status codes
			STATUS_CODE_ADDRESS_OOB:  416,
			STATUS_CODE_STORE_CLOSED: 503,
			STATUS_CODE_ADDRESS_OK:	  200
    	});
		/* [/#deliveryOptions.modal] */
		$.ajaxPrefilter(function(options, originalOptions, jqXHR) {
			jqXHR.setRequestHeader("csrfValue", 'e08262bd8c4caa15ff7ad361654a9df3');
		});
		var signin = null;
		if(signin != null){
			$("#signin").modal();
			var loginErrMsg = $("form[action*=login] #errorId");
			if($(loginErrMsg)[0]){
				$(loginErrMsg).clone().appendTo($("#signin fieldset:first"));
			}
		}
	});	
	
	
	$(".isLoginSuccessGtmUnenabled").click(function(event){
		event.preventDefault();
		if ($("#form_login_modal").valid()) {
			// Check that field is not empty
		    var username = $('#form_login_modal_username'); 
		    var password = $('#form_login_modal_password');
		    var usernameVal = username.val(); 
			var passwordVal = password.val();
			
			$("#errorTips").text("");
			$("#errorTips").removeClass("error");
			$("#errorTips").css({"display":"none"});

			// If field is not empty, ajax validation
	        // error.hide();
	        $.ajax('/kr/login/authenticate.json', {
	            data: {
	            	Username : usernameVal,
	                Password : passwordVal
	            },
	            method:"POST",
	            success: function(response, status, xhr) {
					if(response.loginRs == "1"){						
						if (window.location.href.indexOf("offer-wallet-unsigned.html") >= 0) {
							var redirectUrl = response.redirectUrl.replace("home.html", "offers.html");							
							response.redirectUrl = redirectUrl;
						}
						if (window.location.href.indexOf("user-deregistration.html") >= 0) {
							location.reload();
						}
						window.location.replace(response.redirectUrl);
					}else{
						$("#errorTips").addClass("error");
						$("#errorTips").text(response.errorCode);
						$("#errorTips").css({"display":"block"});
					}
	            }
	        });
		}
	});
	
	var isTrackOrderLogin = false;
	$(".track-order-flag").click(function(event){
	    isTrackOrderLogin = true;
	});
	
	$(".isLoginSuccessGtmEnabled").click(function(event){
		event.preventDefault();
		if ($("#form_login_modal").valid()) {

			dataLayer.push({
				'event':'trackEvent',
				'vpv':'vpv_signin',
				'eventDetails.category':'signin',
				'eventDetails.action':'click',
				'eventDetails.label':'signin_popup'
			});

			// Check that field is not empty
		    var username = $('#form_login_modal_username'); 
		    var password = $('#form_login_modal_password');
		    var usernameVal = username.val(); 
			var passwordVal = password.val();
			
			$("#errorTips").text("");
			$("#errorTips").removeClass("error");
			$("#errorTips").css({"display":"none"});

			// If field is not empty, ajax validation
	        // error.hide();
	        $.ajax('/kr/login/authenticate.json', {
	            data: {
	            	Username : usernameVal,
	                Password : passwordVal,
	                IsTrackOrderLogin : isTrackOrderLogin
	            },
	            method:"POST",
	            success: function(response, status, xhr) {
					if(response.loginRs == "1"){
						if (window.location.href.indexOf("user-deregistration.html") >= 0) {
							location.reload();
						} else {
							window.location.replace(response.redirectUrl);
						}
					}else{
						$("#errorTips").addClass("error");
						$("#errorTips").text(response.errorCode);
						$("#errorTips").css({"display":"block"});
					}
	            }
	        });
		}
	});

	$(document).on({
		'wos.session.ending.warning1': function() {
			$('.inline-alert.alert-session-timeout').removeClass('hidden');
		},
		'wos.session.ending.warning2': function() {
			if (true) {
				console.log('gtm_final_timer');
				dataLayer.push({
					'event':'trackEvent',
					'vpv': 'vpv_final_timer_popup',
					'eventDetails.category':'error_popups',
					'eventDetails.action':'inactive',
					'eventDetails.label':'final_timer'
				});
			}
			$('.modal-alert.alert-session-timeout').modal('show');
		},
		'session.action.continue': function() {
			$.get('/kr/ajax/ping.json', function(response) {
				if(!response.isExpired){
					$(document).trigger('wos.session.reset');
				}else{
					window.location= '/kr/expireSession.html';
				}
			});
		},
		'wos.session.reset': function() {
			$('.inline-alert.alert-session-timeout').addClass('hidden');
		},
		'wos.session.ended': function() {
			if (true) {
				if(!false){
					dataLayer.push({
						 'event': 'trackEvent',
						 'vpv': 'vpv_order_verification/unable_to_save_order_otp_session_ended',
						 'eventDetails.category': 'cart clearance',
						 'eventDetails.action': 'cart is cleared',
						 'eventDetails.label': 'unable to save order as session timeout'
						});
				}
			window.location= '/kr/sessionEnded.html'; }
		}
	});	
	
	$(document.body).sessiontimer({
		duration: 900000, //  x mins * 60 * 1000
		triggers: [
			{
				when: 0, // x mins * 15 * 60 * 1000
				eventName: 'wos.session.ending.warning1'
			},
			{
				when: 300000, // x mins * 60 * 1000
				eventName: 'wos.session.ending.warning2'
			}
		]
	});
	
	$(document).on({
	    'wos.menuswitch.ending.warning1': function() {
	        if (!$.cookie('wos.menuswitch.warning1.status')) {
	            $.cookie('wos.menuswitch.warning1.status', 'show');
	        }
	 
	        if ($.cookie('wos.menuswitch.warning1.status') == 'show') {
	            $('.inline-alert.alert-menuswitch-timeout').removeClass('hidden');
	        } else {
	            $('.inline-alert.alert-menuswitch-timeout').addClass('hidden');
	        }
	    },
	    'wos.menuswitch.ending.warning2': function() {
	        if(!$.cookie('wos.menuswitch.warning2.status')) {
	            $.cookie('wos.menuswitch.warning2.status', 'show');
	        }
	 
	        if ($.cookie('wos.menuswitch.warning2.status') == 'show') {
	            $('.modal-alert.alert-menuswitch-timeout').modal('show');
	        } else {
	            $('.modal-alert.alert-menuswitch-timeout').modal('hide');
	        }
	    },
	    'wos.menuswitch.warning1.closed': function() {
	        $.cookie('wos.menuswitch.warning1.status', 'close');
	        $('.inline-alert.alert-menuswitch-timeout').addClass('hidden');
	    },
	    'wos.menuswitch.warning2.closed': function() {
	        $.cookie('wos.menuswitch.warning2.status', 'close');
	    },
	    'wos.menuswitch.ended': function() {
	        $.removeCookie('wos.menuswitch.warning1.status');
	        $.removeCookie('wos.menuswitch.warning2.status');
	 
	        $('.modal-alert.alert-menuswitch-timeout').modal('hide');
	        //window.location = '/kr/home.html';
			if (0 != 0) {
	        	window.location = 'changeMenu.html?changeMenuTo=0';
	        }
	    },
	    'menuswitch.action.ok': function() {
	        $.cookie('wos.menuswitch.warning2.status', 'close');
	    }
	}); 
	 
	$(document.body).menuswitchtimer({
	    duration: 10295000, // 5 mins left to menu switch off
	    triggers: [
	        {
	            when: 900000, // 3 mins before menu switch over, trigger this event
	            eventName: 'wos.menuswitch.ending.warning1'
	        },
	        {
	            when: 300000, // 1 min before menu switch over, trigger this event
	            eventName: 'wos.menuswitch.ending.warning2'
	        }
	    ]
	});

	$(document).on({'wos.storeclose.ending.warning1': function() {
			if(!$.cookie('wos.storeclose.warning1.status')) {
	            $.cookie('wos.storeclose.warning1.status', 'show');
	        }
	        if ($.cookie('wos.storeclose.warning1.status') == 'show') {
				$('.modal-alert.modal-countdownstoreclosetimer').modal('show');
			} else {
				$('.modal-alert.modal-countdownstoreclosetimer').modal('hide');
			}
		},
		'wos.storeclose.ended': function() {
			$.removeCookie('wos.storeclose.warning1.status');
			window.location = '/kr/homeStoreClosed.html';
		},
		'storeclose.action.continue': function() {
			$.cookie('wos.storeclose.warning1.status', 'close');
		}
	});
	 
	if (true) {
		$(document.body).storeclosetimer({
			duration: 10295000,
			triggers: [
		        {
		        	when: (5 * 60 * 1000),
		        	eventName: 'wos.storeclose.ending.warning1'
		        }
		    ]
		});
	}
	
	function manageAlerts() {
	    var menuswitchTimer = $(document.body).data('plugin_menuswitchtimer');
	    var sessionTimer = $(document.body).data('plugin_sessiontimer');
	    if (menuswitchTimer.remaining > 0) {
		    menuswitchTimer.enableTrigger(menuswitchTimer.remaining < sessionTimer.remaining);
		    sessionTimer.enableTrigger(!menuswitchTimer.enabled);
	    } else {
	    	sessionTimer.enableTrigger(true);
	    	menuswitchTimer.enableTrigger(false);
	    }
	    setTimeout(manageAlerts, 1000);
	}
	
	manageAlerts();
		
/*]]>*/
</script>


	<div>



		<div>
			<script type="text/javascript">
/*<![CDATA[*/
$(function() {	
		/* [/#page-content] */
		
		  $('#form_login_masthead').validate({
		      	rules: {
		      		userName: {
						required: true,
						email: true
					},
		
		    		password: {
						required: true
					}
		      	},
		    	messages: {
		    		userName: {
						required: '\uC774\uBA54\uC77C \uC8FC\uC18C\uB97C \uC785\uB825\uD558\uC154\uC57C \uB429\uB2C8\uB2E4.',
						email: '\uC798\uBABB\uB41C \uC774\uBA54\uC77C \uC8FC\uC18C\uC785\uB2C8\uB2E4.'
					},
		
		    		password: {
						required: '\uBE44\uBC00\uBC88\uD638\uB97C \uC785\uB825\uD558\uC154\uC57C \uB429\uB2C8\uB2E4'
					}
		    	},
		    	errorPlacement: function(error, element) {
					if (element.attr("name") == "userName" || element.attr("name") == "password" ) {
						$("#form_login_masthead ul").remove(); 
						$('#form_login_masthead_password').parents('.textfield-list-group').append(error);
					} else {
						 error.insertAfter(element);
					}
				}
	});
	/* [/#page-content] */
	
             
      /* [#trackOrder.modal] */
 	        $('#form_trackOrder').validate({
	        	rules: {
	        		orderNum: {
	        			required: true,
	        			remote: {
	                    	param: {
	                    		url: '/kr/validate/trackOrder.json',
		                    	data: {
		                    		orderNumber: function() {
		                    			console.log('orderNumber : ', $('#form_trackOrder_orderNum').val());
		                    			return $('#form_trackOrder_orderNum').val();
		                    		}
		                    	},
		                    		method:"POST",
 	       							complete: function(xhr, status) {
 	       							var response = xhr.responseJSON;
               						if(response.valid==false)
               							{
    	                            $('#form_trackOrder .form-group .error')
    	                                .html(response.message);
               							}
          						 }
	                    	}
	        		}
	        	}
	        	},
	            messages: {
	                orderNum: {
	                    required : '\uC8FC\uBB38 \uBC88\uD638\uB97C \uC785\uB825\uD574 \uC8FC\uC2DC\uAE30 \uBC14\uB78D\uB2C8\uB2E4.'
	                }
	            }
	        });
		/* [/#trackOrder.modal] */
		
  	$('#form_login_modal').validate({
		  		rules: {
			      		userName: {
						required: true,
						email: true
					},
		
		    		password: {
						required: true
					}
			      	},
		    	messages: {
		    		userName: {
						required: '\uC774\uBA54\uC77C \uC8FC\uC18C\uB97C \uC785\uB825\uD558\uC154\uC57C \uB429\uB2C8\uB2E4.',
						email: '\uC798\uBABB\uB41C \uC774\uBA54\uC77C \uC8FC\uC18C\uC785\uB2C8\uB2E4.'
					},
		
		    		password: {
						required: '\uBE44\uBC00\uBC88\uD638\uB97C \uC785\uB825\uD558\uC154\uC57C \uB429\uB2C8\uB2E4'
					}
		    	},
	    	errorPlacement: function(error, element) {
			    var ElementParent = element.parent();
			    if (element.attr("name") == "userName" || element.attr("name") == "password" ) {
			    	$('#form_login_modal_password').parents('.textfield-list-group').append(error);
			    	$("#form_login_masthead #errorId").remove();
			    } else {
			    	error.insertAfter(element);
			    }
			}
	    });  


	/* [#signin-facebook.modal] */

    $(document).on('facebook.linkaccount.action.no', function(event) {
        setTimeout(function() {
            $('#signin-facebook').one('show.bs.modal', function() {
                $('#form_deliveryoptions_datetime_later').prop('checked', true);
            }).modal('show');
        }, 5);
        
    });




    /* [#signin-facebook-linkaccount.modal] */

    $(document).on('facebook.linkaccount.action.yes', function(event) {
        setTimeout(function() {
            $('#signin-facebook-linkaccount').one('show.bs.modal', function() {
                $('#form_deliveryoptions_datetime_later').prop('checked', true);
            }).modal('show');
        }, 5);
        
    });


    
    if (window.location.hash && window.location.hash == '#_=_') {
        window.location.hash = '';
    }

    
    $('#form_login_facebook_modal').validate({		
		rules : {
			contactNo: {
				required: true,
 				number: true,
 				verifyPhoneNo:true
			},
			email: {
				required: true,
				email: true,
				remote: {
                	param: {
                		url: '/kr/validate/validateFacebookEmail.json',
                    	data: {
	                    		emailString: function() {
	                    			console.log('email : ', $('#form_login_facebook_modal_username').val());
	                    			return $('#form_login_facebook_modal_username').val();
	                    		}
                    		},
                    		method:"POST",
       					complete: function(xhr, status) {
       							var response = xhr.responseJSON;
       							if(response.valid == false)
       							{
                            		$('#email .form-group .error').html(response.message);
       							}
  						 }
                	}
    			}
			}
		},
		messages: {	
			contactNo: {
				required: '\uC798\uBABB\uB41C \uD734\uB300\uC804\uD654 \uBC88\uD638\uC785\uB2C8\uB2E4.',
            	number : '\uD734\uB300\uC804\uD654 \uBC88\uD638 \uD615\uC2DD\uC774 \uC798\uBABB\uB418\uC5C8\uC2B5\uB2C8\uB2E4.',
            	verifyPhoneNo: '\uD734\uB300\uC804\uD654 \uBC88\uD638 \uD615\uC2DD\uC774 \uC798\uBABB\uB418\uC5C8\uC2B5\uB2C8\uB2E4.'
			},
			
			email: {
				required: '\uC798\uBABB\uB41C \uC774\uBA54\uC77C \uC8FC\uC18C\uC785\uB2C8\uB2E4.',
				email: '\uC774\uBA54\uC77C \uD615\uC2DD\uC774 \uC798\uBABB\uB418\uC5C8\uC2B5\uB2C8\uB2E4.',
				remote: "Email id already exists"
			},
			agreeTandC: {
				required: '*\uD544\uC218\uD56D\uBAA9\uC785\uB2C8\uB2E4.'
			},
			agreeUsePersonalInfo: {
				required: '\uAC1C\uC778\uC815\uBCF4\uC758 \uC218\uC9D1 \uBC0F \uC774\uC6A9\uC5D0 \uB3D9\uC758 \uD558\uC154\uC57C \uD569\uB2C8\uB2E4.'
			},
			passUserAge: {
				required: '*\uD544\uC218\uD56D\uBAA9\uC785\uB2C8\uB2E4.'
			},
			form_register_agreetnc: {
				required: '*\uD544\uC218\uD56D\uBAA9\uC785\uB2C8\uB2E4.'
			},
			form_register_agreeage: {
				required: '*\uD544\uC218\uD56D\uBAA9\uC785\uB2C8\uB2E4.'
			}
		},
		errorPlacement: function(error, element) {
			    var ElementParent = element.parent();
			    if (element.attr("name") == "email" || element.attr("name") == "contactNo" ) {
			    	$('#form_login_facebook_modal_username').parents('.textfield-list-group').append(error);
			    	$("#form_login_facebook_modal #errorId").remove();
			    } else {
			    	error.insertAfter(element);
			    }
			}
	});  

    /* [#form_login_facebook_modal.modal] */
 	$('#form_login_facebook_modal').on('click', '[type=\"submit\"]', function(event) {
		    event.preventDefault();
		    if ($('#form_login_facebook_modal').valid()) {
			    // Check that field is not empty
			    var email = $('#form_login_facebook_modal_username'); 
			    var contactNo = $('#form_login_facebook_modal_contactno');
			    var subscribe = $('#form_login_wechat_subscribe');
			    var emailVal = email.val(); 
				var contactNoVal = contactNo.val();
				var subscribeVal = subscribe.val();  
	
			    var error = contactNo.parent('div').parent('div').next('.error'); // error message element
			    var form = $(this).parents('form');
		        // If field is not empty, ajax validation
		        error.hide();
		        $.ajax('/kr/login/socialRegister.json', {
		            data: {
		                Email : emailVal,
		                ContactNo : contactNoVal,
		                SubscribeMailList : subscribeVal
		            },
		            method:"POST",
		            success: function(response, status, xhr) {
						// success, we can submit the form
	                    if(response.message=='success' && typeof(response.code)=='undefined'){
	                    	 console.log('success');
	                         $('#form_login_facebook_modal').hide();
	                          error.empty().hide();
	                          error.parents('.form-group').removeClass('form-group-error');
	                          window.location.replace(response.redirectUrl);
	                    }else{
	                    	 $('#form_login_facebook_modal').show();
	                            error.html(response.message).show();
	                            error.parents('.form-group').addClass('form-group-error');
	                    }
		            }
		        });
    		}
		});
    /* [/#form_login_facebook_modal.modal] */
    
	$('#form_fb_linkaccount_modal').validate({
    	rules: {
	  		email: {
				required: true, 
				email: true
			},
			password: {
				required: true
			}
	  	},
	  	messages: {
			email: {
				required: '\uC774\uBA54\uC77C \uC8FC\uC18C\uB97C \uC785\uB825\uD558\uC154\uC57C \uB429\uB2C8\uB2E4.',
				email: '\uC774\uBA54\uC77C \uD615\uC2DD\uC774 \uC798\uBABB\uB418\uC5C8\uC2B5\uB2C8\uB2E4.'
			},
			password: {
				required: '\uBE44\uBC00\uBC88\uD638\uB97C \uC785\uB825\uD558\uC154\uC57C \uB429\uB2C8\uB2E4'
			}
		},
        errorPlacement: function(error, element) {
            var ElementParent = element.parent();
            if (element.is(':checkbox')) {
                var controlGroup = element.parents('.checkbox');
                var label = controlGroup.find('.checkbox-label');
                label.append(error);
            } else if (element.attr("name") == "email" || element.attr("name") == "password") {
                $('#form_fb_linkaccount_modal_password').parents('.textfield-list-group').append(error);
            } else {
                error.insertAfter(element);
            }
        }
    });
    /* [/#signin-facebook-linkaccount.modal] */
	
    /* [#form_fb_linkaccount_modal.modal] */
 	$('#form_fb_linkaccount_modal').on('click', '[type=\"submit\"]', function(event) {
		    event.preventDefault();
		    if ($('#form_fb_linkaccount_modal').valid()) {
			    // Check that field is not empty
			    var email = $('#form_fb_linkaccount_modal_username'); 
			    var password = $('#form_fb_linkaccount_modal_password');
			    var emailVal = email.val(); 
				var passwordVal = password.val();
	
			    var error = email.parent('div').parent('div').next('.error'); // error message element
			    var form = $(this).parents('form');
		        // If field is not empty, ajax validation
		        error.hide();
		        $.ajax('/kr/login/socialLinkAccount.json', {
		            data: {
		                Email : emailVal,
		                Password : passwordVal
		            },
		            method:"POST",
		            success: function(response, status, xhr) {
						// success, we can submit the form
	                    if(response.message=='success' && typeof(response.code)=='undefined'){
	                    	 console.log('success');
	                         $('#form_fb_linkaccount_modal').hide();
	                          error.empty().hide();
	                          error.parents('.form-group').removeClass('form-group-error');
	                          window.location.replace(response.redirectUrl);
	                    }else{
	                    	 $('#form_fb_linkaccount_modal').show();
	                            error.html(response.message).show();
	                            error.parents('.form-group').addClass('form-group-error');
	                    }
		            }
		        });
    		}
		});
    /* [/#form_fb_linkaccount_modal.modal] */
    
   /* $('a').click(function(){
  		$('.modal').modal('hide')
	})*/
		/* [/#signin.modal] */  
  	if(null=="true"){
  		if (true) {
  			console.log('gtm_session_expired');
  			dataLayer.push({
  				'event':'trackEvent',
  				'vpv': 'vpv_session_expired_timer_popup',
  				'eventDetails.category':'error_popups',
  				'eventDetails.action':'inactive',
  				'eventDetails.label':'session_expired'
  			});
  		}
		$('#alertTimeOut').modal('show');
	}
    
  	if(null){
  		$(document).trigger('modal.trigger.guest.tab');
	}
    
  	$('.js-show-guest-order').on('click', function(e){
  	    e.preventDefault();
  	    $(document).trigger('modal.trigger.guest.tab');
  	});
  	
});
/*]]>*/
</script>
		</div>
	</div>










</body>
</html>