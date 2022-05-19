<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<link rel="stylesheet" type="text/css" href="/resources/css/local.css">
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="/resources/js/main.js"></script>
<script type="text/javascript" src="/resources/js/join.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="country-82 lang-ko ">

	<div class="root">
		<div class="wrap container">
			<div class="global-header">
				<script>
					/*<![CDATA[*/
					window.WOSPageVars = {
						'DURATION_OF_GDPR_DAY' : 365
					};

					/*]]>*/
				</script>
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
								src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/icon_profile_gray.png"
								alt="Profile" width="20" class="profile-grey-avator"></li>

							<li class="list-item"
								onclick="console.log('signin_topright'); dataLayer.push({          'event': 'trackEvent',          'vpv': 'vpv_signin_topright',          'eventDetails.category': 'signin',          'eventDetails.action': 'click',          'eventDetails.label': 'signin_topright'         });">
								<a class="list-item-target" href="#signin" data-toggle="modal"
								data-target="#signin">로그인</a>
							</li>

							<li class="list-item"><a
								class="list-item-target track-order-flag" href="#signin"
								data-toggle="modal" data-target="#signin">주문 조회</a></li>


						</ul>
					</div>
				</div>
				<div class="global-navbar navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<a class="navbar-brand wos-brand" href=""> <img
							src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/mcdelivery_logo_ko.jpg"
							alt="McDelivery&amp;trade;">

						</a>
					</div>
					<div class="main-navigation clearfix">
						<ul class="nav navbar-nav">

							<li class="menu-item menu-item-menu"><a
								class="menu-item-target" href=""> <i
									class="fa mcd mcd-burger icon"></i> 메뉴
							</a></li>

							<li class="menu-item menu-item-account dropdown"><a
								class="menu-item-target dropdown-toggle" href="#signin"
								data-toggle="modal" data-target="#signin"> <i
									class="fa fa-user icon"></i> 마이 페이지
							</a></li>


							<li class="menu-item menu-item-support dropdown "><a
								class="menu-item-target dropdown-toggle" href=""
								data-toggle="dropdown"> <i class="fa fa-phone icon"></i>
									기타정보<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="" target="_self">이용약관</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="" target="_self">개인정보
											처리방침</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="" target="_self">자주
											묻는 질문</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="" target="_blank">과일
											칠러 판매 제외 매장</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="" target="_blank">영양정보/원산지
											정보/기타 정보</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="" target="_self">모바일
											웹</a></li>


								</ul></li>

						</ul>
					</div>
				</div>

				<div
					class="alert alert-warning alert-dismissable inline-alert type-flama hidden alert-menuswitch-timeout"
					data-dismiss-trigger="wos.menuswitch.warning1.closed">
					<button type="button" class="close" data-hide="inline-alert"
						aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
					<p>
						<i class="fa fa-exclamation text-white icon"></i> <span>메뉴는
							<span class="text-primary timer menuswitch-timer">6:50</span> 분
							후에 종료됩니다. 종료 전에 주문을 완료해 주세요.
						</span>
					</p>
				</div>


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
										<div class="time-disclaimer">메뉴 종료까지</div>
										<div class="time timer text-din timer-clock menuswitch-timer">6:50</div>
										<div class="time-disclaimer"></div>
									</div>
									<div class="col-xs-8 timer-wrapper">
										<div class="alert-content text-left">
											<h1 id="countdownmenuswitchtimer-title">메뉴가 종료됩니다</h1>
											<p>일반 메뉴 메뉴가 종료됩니다. 종료 전에 주문을 완료해 주세요.</p>
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
										<div class="time timer text-din timer-clock storeclose-timer">16:50</div>
									</div>
									<div class="col-xs-8 timer-wrapper">
										<div class="alert-content text-left">
											<h1 id="countdowntimer-title">배달 가능 시간</h1>
											<p>해당 지역의 매장은 오후 08:59 AM 까지 배달 가능합니다.</p>
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

				<div class="page-content">
					<div class="row">
						<div class="form-column col-xs-9">

							<form action="" role="form" class="form form-register"
								id="form_register" name="form_register" data-required-symbol="*"
								method="post" novalidate="novalidate">
								<div class="form-register error-container">
									<p>표시된 필수 항목을 입력해 주세요.</p>
								</div>

								<fieldset class="fieldset">
									<div class="fieldset-heading">
										<h2 class="fieldset-title">회원 정보</h2>
										<p class="instructions">* 필수 항목</p>
									</div>

									<div class="row">
										<div class="col-xs-12">
											<div class="form-group">
												<label class="field-label" for="form_register_firstname"><span
													class="required-symbol">*</span>성함:</label> <input type="text"
													class="form-control input-lg required no-special-characters"
													id="form_register_firstname" name="firstName" value=""
													aria-required="true">

											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-xs-6">
											<div class="form-group">
												<label class="field-label" for="form_register_gender">성별:</label>

												<fieldset class="fieldset">
													<div class="form-group">
														<div class="radio">
															<div class="iradio checked" style="position: relative;">
																<input type="radio" name="preferredNotification"
																	value="1" id="checkman"
																	checked="checked"
																	style="position: absolute; opacity: 0;">
																<ins class="iCheck-helper"
																	style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
															</div>
															<label for="form_notification_channel_email"
																class="radio-label">남 <span
																id="man"></span></label>
														</div>
														<div class="radio">
															<div class="iradio" style="position: relative;">
															<input type="radio" name="preferredNotification"
																		value="2" id="checkwoman"
																	style="position: absolute; opacity: 0;">
																<ins class="iCheck-helper"
																	style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
															</div>
															<label for="form_notification_channel_mobile"
																class="radio-label">여<span
																id="woman"></span></label>
														</div>
													</div>
												</fieldset>

											</div>
										</div>
									</div>


									<div class="row">
										<div class="col-xs-12">
											<div class="form-group">
												<label class="field-label" for="form_register_contactno"><span
													class="required-symbol">*</span>휴대전화 번호:</label> <input type="text"
													class="form-control input-lg required number digit-only"
													maxlength="11" id="form_register_contactno"
													name="contactNo" placeholder="숫자만 입력" value=""
													aria-required="true">

											</div>
										</div>
									</div>

								</fieldset>
								<fieldset class="fieldset">



									<div class="fieldset-heading">
										<h2 class="fieldset-title">계정 정보</h2>
									</div>

									<div class="form-group">
										<label class="field-label" for="form_register_email"><span
											class="required-symbol">*</span>이메일:</label> <input type="email"
											class="form-control input-lg required"
											id="form_register_email" name="email"
											placeholder="name@mail.com" value="" aria-required="true">
										<label class="control-hint" for="form_register_email">이메일
											주소는 고객님의 안전한 거래와 회원정보 보호를 위해 정확하게 입력해 주세요.</label>
									</div>

									<div class="form-group">
										<label class="field-label" for="form_register_email_comfirm"><span
											class="required-symbol">*</span>이메일 확인:</label> <input type="email"
											class="form-control input-lg required"
											id="form_register_email_comfirm" name="confirmEmail"
											placeholder="name@mail.com" value="" aria-required="true">
									</div>

									<div class="form-group">

										<label class="field-label" for="form_register_password"><span
											class="required-symbol">*</span>비밀번호:</label> <input type="password"
											class="form-control input-lg required"
											id="form_register_password" name="password"
											autocomplete="off"  maxlength="20"
											value="" aria-required="true"> <label
											for="form_register_password" class="control-hint">비밀번호는
											문자, 숫자를 조합한 최소 8 글자 이상이어야 합니다.</label>
									</div>
									<div class="form-group">
										<label class="field-label"
											for="form_register_password_confirm"><span
											class="required-symbol">*</span>비밀번호 확인:</label> <input
											type="password" class="form-control input-lg required"
											id="form_register_password_confirm" name="comfirmPassword"
											autocomplete="off" maxlength="20" value=""
											aria-required="true">
									</div>

								</fieldset>
								<!-- START Notification Channel -->
								<div class="fieldset-heading">
									<h2 class="fieldset-title">인증방법</h2>
									<p class="instructions">인증코드가 선택하신 인증방법(휴대폰문자 혹은 email )으로
										발송됩니다.</p>
								</div>
								<fieldset class="fieldset">
									<div class="form-group">
										<div class="radio">
											<div class="iradio checked" style="position: relative;">
												<input type="radio" name="preferredNotification" value="1"
													id="form_notification_channel_email" checked="checked"
													style="position: absolute; opacity: 0;">
												<ins class="iCheck-helper"
													style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
											</div>
											<label for="form_notification_channel_email"
												class="radio-label">이메일 <span
												id="form_notification_channel_email_mirror"></span></label>
										</div>
										<div class="radio">
											<div class="iradio" style="position: relative;">
												<input type="radio" name="preferredNotification" value="2"
													id="form_notification_channel_mobile"
													style="position: absolute; opacity: 0;">
												<ins class="iCheck-helper"
													style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
											</div>
											<label for="form_notification_channel_mobile"
												class="radio-label">휴대폰 <span
												id="form_notification_channel_mobile_mirror"></span></label>
										</div>
									</div>
								</fieldset>

								<!-- END Notification Channel -->
								<fieldset class="fieldset">
									<fieldset class="fieldset">
										<div class="fieldset-heading">
											<h2 class="fieldset-title">이용약관</h2>
										</div>
										<div class="checkall-toggle">
											<div class="form-group">
												<div id="allChecked" class="checkbox">
													<div class="icheckbox" style="position: relative;">
														<input type="checkbox" name="form_register_checkall"
															id="form_register_checkall"
															data-check-rules="all-children"
															data-child-selector=".checkbox-list-tnc input:checkbox"
															style="position: absolute; opacity: 0;">
														<ins class="iCheck-helper"
															style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
													</div>
													<label class="checkbox-label type-sans"
														for="form_register_checkall"><span>전체 동의</span> <span
														class="instructions">(개별 선택 가능)</span> </label>
												</div>
											</div>
											<hr>
											<div class="checkbox-list checkbox-list-tnc">
												<div class="form-group">
													<div class="checkbox">
														<div class="icheckbox" style="position: relative;">
															<input type="checkbox" name="form_register_agreetnc"
																value="1" id="form_register_agreetnc"
																data-rule-required="true" data-msg-required="*필수항목입니다."
																required="required" aria-required="true"
																style="position: absolute; opacity: 0;">
															<ins class="iCheck-helper"
																style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
														</div>
														<label class="checkbox-label type-sans"
															for="form_register_agreetnc"><span><span
																class="text-gray-dark"><a
																	href="/ed/TaC" target="_blank">이용약관</a>을
																	확인했으며, 이에 동의합니다.</span></span> <span class="instructions">(필수)</span>
														</label>
													</div>
												</div>

												<div class="checkall-toggle">
													<div class="form-group">
														<div class="checkbox">
															<div class="icheckbox" style="position: relative;">
																<input type="checkbox"
																	name="form_register_reviewconsent"
																	id="form_register_reviewconsent"
																	data-check-rules="any-children"
																	data-child-selector=".checkbox-list-reviewconsent input:checkbox"
																	style="position: absolute; opacity: 0;">
																<ins class="iCheck-helper"
																	style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
															</div>
															<label class="checkbox-label type-sans"
																for="form_register_reviewconsent">이용약관을 확인했으며,
																이에 동의합니다.</label>
														</div>
														<div
															class="checkbox-list checkbox-indent checkbox-list-reviewconsent">
															<div class="form-group">
																<div class="checkbox checkbox-small">
																	<div class="icheckbox" style="position: relative;">
																		<input type="checkbox"
																			name="form_register_reviewconsent_personaldata_one"
																			value="1"
																			id="form_register_reviewconsent_personaldata_one"
																			data-rule-required="true"
																			data-msg-required="*필수항목입니다." required="required"
																			aria-required="true"
																			style="position: absolute; opacity: 0;">
																		<ins class="iCheck-helper"
																			style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
																	</div>
																	<label class="checkbox-label type-sans"
																		for="form_register_reviewconsent_personaldata_one">
																		<span><a href="/ed/PIPP"
																			target="_blank">개인정보 수집 및 이용</a></span> <span
																		class="instructions">(필수)</span>
																	</label>
																</div>
															</div>
															<div class="form-group">
																<div class="checkbox checkbox-small">
																	<div class="icheckbox" style="position: relative;">
																		<input type="checkbox"
																			name="form_register_reviewconsent_personaldata_two"
																			value="1"
																			id="form_register_reviewconsent_personaldata_two"
																			style="position: absolute; opacity: 0;">
																		<ins class="iCheck-helper"
																			style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
																	</div>
																	<label class="checkbox-label type-sans"
																		for="form_register_reviewconsent_personaldata_two">
																		<span><a href="/ed/PIPP"
																			target="_blank">개인정보 수집 및 이용</a></span> <span
																		class="instructions">(선택)</span>
																	</label>
																</div>
															</div>
															<div class="form-group">
																<div class="checkbox checkbox-small">
																	<div class="icheckbox" style="position: relative;">
																		<input type="checkbox"
																			name="form_register_reviewconsent_outsourcepersonaldata"
																			value="1"
																			id="form_register_reviewconsent_outsourcepersonaldata"
																			style="position: absolute; opacity: 0;">
																		<ins class="iCheck-helper"
																			style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
																	</div>
																	<label class="checkbox-label type-sans"
																		for="form_register_reviewconsent_outsourcepersonaldata">
																		<span><a href="/ed/PIPP"
																			target="_blank">개인정보 취급 위탁</a></span> <span
																		class="instructions">(선택)</span>
																	</label>
																</div>
															</div>
															<div class="form-group">
																<div class="checkbox checkbox-small">
																	<div class="icheckbox" style="position: relative;">
																		<input type="checkbox"
																			name="form_register_reviewconsent_tranferpersonaldata_one"
																			value="1"
																			id="form_register_reviewconsent_tranferpersonaldata_one"
																			data-rule-required="true"
																			data-msg-required="*필수항목입니다." required="required"
																			aria-required="true"
																			style="position: absolute; opacity: 0;">
																		<ins class="iCheck-helper"
																			style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
																	</div>
																	<label class="checkbox-label type-sans"
																		for="form_register_reviewconsent_tranferpersonaldata_one">
																		<span><a href="/ed/PIPP"
																			target="_blank">개인정보 제3자 제공</a></span> <span
																		class="instructions">(필수)</span>
																	</label>
																</div>
															</div>
															<div class="form-group">
																<div class="checkbox checkbox-small">
																	<div class="icheckbox" style="position: relative;">
																		<input type="checkbox"
																			name="form_register_reviewconsent_tranferpersonaldata_2"
																			value="1"
																			id="form_register_reviewconsent_tranferpersonaldata_2"
																			style="position: absolute; opacity: 0;">
																		<ins class="iCheck-helper"
																			style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
																	</div>
																	<label class="checkbox-label type-sans"
																		for="form_register_reviewconsent_tranferpersonaldata_2">
																		<span><a href="/ed/PIPP"
																			target="_blank">개인정보 제3자 제공</a></span> <span
																		class="instructions">(선택)</span>
																	</label>
																</div>
															</div>
															<div class="form-group">
																<div class="checkbox checkbox-small">
																	<div class="icheckbox" style="position: relative;">
																		<input type="checkbox"
																			name="form_register_reviewconsent_tranferpersonaldata_3"
																			value="1"
																			id="form_register_reviewconsent_tranferpersonaldata_3"
																			style="position: absolute; opacity: 0;">
																		<ins class="iCheck-helper"
																			style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
																	</div>
																	<label class="checkbox-label type-sans"
																		for="form_register_reviewconsent_tranferpersonaldata_3">
																		<span><a href="/ed/PIPP"
																			target="_blank">개인정보 국외 이전 동의</a></span> <span
																		class="instructions">(선택)</span>
																	</label>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="form-group">
													<div class="checkbox">
														<div class="icheckbox" style="position: relative;">
															<input type="checkbox" name="form_register_agreeage"
																value="1" id="form_register_agreeage"
																data-rule-required="true" data-msg-required="*필수항목입니다."
																required="required" aria-required="true"
																style="position: absolute; opacity: 0;">
															<ins class="iCheck-helper"
																style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
														</div>
														<label class="checkbox-label type-sans"
															for="form_register_agreeage"><span><span
																class="text-gray-dark">만 14세 이상입니다.</span></span> <span
															class="instructions">(필수)</span> </label>
													</div>
												</div>
												<div class="form-group">
													<div class="checkbox">
														<div class="icheckbox" style="position: relative;">
															<input type="checkbox" checked="checked"
																name="form_register_subscribe" value="1"
																id="form_register_subscribe"
																style="position: absolute; opacity: 0;">
															<ins class="iCheck-helper"
																style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
														</div>
														<label class="checkbox-label type-sans"
															for="form_register_subscribe"><span>맥도날드
																관련 정보와 프로모션에 대해 이메일 및 SMS/MMS/DM/SNS 수신에 동의합니다.</span> <span
															class="instructions">(선택)</span> </label>
													</div>
												</div>
											</div>
										</div>
									</fieldset>
									<!-- [#personaldatahandling.modal] -->
									<div id="personaldatahandling" data-backdrop="static"
										data-keyboard="false"
										class="modal-personaldatahandling modal fade" role="dialog"
										aria-labelledby="tncupdate-title" aria-hidden="true"
										tabindex="-1">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h1 id="personaldatahandling-title">개인정보의 취급위탁</h1>
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">
														<i class="fa mcd mcd-close"></i>
													</button>
												</div>
												<div class="modal-body">
													<p>한국맥도날드(유)는 고객에게 다양한 혜택을 제공하기 위하여 다음과 같이 고객의 개인정보를
														위탁하여 취급하고 있습니다.</p>
													<table class="table-tnc">
														<tbody>
															<tr>
																<td><strong>수탁자</strong></td>
																<td><strong>취급위탁 업무</strong></td>
															</tr>
															<tr>
																<td>이노컴퍼니</td>
																<td>맥도날드 관련 정보와 프로모션에 대한 이메일 및 SMS/MMS 발송</td>
															</tr>
															<tr>
																<td>㈜처음소프트</td>
																<td>맥도날드 관련 정보와 프로모션에 대한 이메일 및 SMS/MMS 발송</td>
															</tr>
															<tr>
																<td>대원 세무법인</td>
																<td>각종 프로모션 경품 관련 소득신고</td>
															</tr>
															<tr>
																<td>퍼블리시스모뎀포트폴리오㈜</td>
																<td>고객의 구매 정보를 분석하여 제품정보/신규이벤트(쿠폰,할인행사 등)등에 관한 마케팅
																	정보 발송 및 리서치/통계자료 작성, 각종 프로모션의 전반적인 운영</td>
															</tr>
															<tr>
																<td>(주)차이커뮤니케이션</td>
																<td>고객 데이터 베이스에서 특정 개인정보를 추출하여 다른 수탁자에게 전달</td>
															</tr>
															<tr>
																<td>Facebook</td>
																<td>맥도날드 온라인 주문 사이트 회원이면서 동시에 페이스북 회원이기도 한 고객들에게
																	페이스북 상에서 맥도날드 관련 정보와 프로모션에 대한 광고 노출</td>
															</tr>
														</tbody>
													</table>
												</div>

											</div>
										</div>
									</div>
									<!-- [/#personaldatahandling.modal] -->

									<!-- [#personalinfo.modal] -->
									<div id="personalinfo" data-backdrop="static"
										data-keyboard="false" class="modal-personalinfo modal fade"
										role="dialog" aria-labelledby="tncupdate-title"
										aria-hidden="true" tabindex="-1">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h1 id="personalinfo-title">개인정보 수집 및 이용</h1>
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">
														<i class="fa mcd mcd-close"></i>
													</button>
												</div>
												<div class="modal-body">
													<p>한국맥도날드(유)(이하 "회사")는 고객에게 맥딜리버리 서비스 제공을 위하여 아래와 같은
														개인정보를 수집하고 있습니다.</p>
													<table class="table-tnc">
														<tbody>
															<tr>
																<td width="30%"><strong>수집항목</strong></td>
																<td><strong>수집 및 이용목적 </strong></td>
																<td width="30%"><strong>보유 및 이용기간</strong></td>
															</tr>
															<tr>
																<td>성명, 핸드폰 번호, 이메일 주소, ID, 비밀번호, 배달지 주소</td>
																<td><ul>
																		<li>맥딜리버리 서비스 제공</li>
																		<li>맥도날드 관련 정보와 프로모션에 대한 이메일 및 SMS/MMS 발송(이러한 이용을
																			위하여 회사는 회원 가입 절차상 고객으로부터 별도 동의를 받고 있습니다)</li>
																	</ul></td>
																<td>회원 탈퇴(단, 관계 법령에 따라 탈퇴 후에도 개인정보를 보관해야 하는 경우 해당
																	기간의 만료시 까지)</td>
															</tr>
														</tbody>
													</table>
												</div>

											</div>
										</div>
									</div>
									<div></div>
								</fieldset>

								<fieldset class="fieldset form-actions">
									<div class="form-group">

										<button id="register_button" type="button"
											class="btn btn-red btn-xl btn-submit">계정 생성</button>


									</div>
								</fieldset>
								<input type="hidden" name="csrfValue"
									value="c88ae5be33caf4e15ec216eb549176bb">
							</form>
						</div>
						<div class="sidebar register-sidebar col-xs-3">
							<section class="register-promotions">
								<h2>프로모션</h2>
								<p></p>
							</section>
							<section class="register-benefits">
								<h2>아이디 생성 후, 더욱 다양한 혜택을 누리세요</h2>
								<p></p>
								<ul>
									<li>빠른 결제</li>
									<li>주문 저장 및 선호 메뉴 설정</li>
									<li>특별 혜택 및 프로모션</li>
								</ul>
							</section>

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
								<li class="menu-item"><a class="menu-item-target" href="">추천
										메뉴</a></li>
								<li class="menu-item"><a class="menu-item-target" href="">버거
										&amp; 세트</a></li>
								<li class="menu-item"><a class="menu-item-target" href="">스낵
										&amp; 사이드</a></li>
								<li class="menu-item"><a class="menu-item-target" href="">음료</a></li>
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
								<li class="menu-item"><a class="menu-item-target" href=""
									target="_self">이용약관</a></li>
								<li class="menu-item"><a class="menu-item-target" href=""
									target="_self">개인정보 처리방침</a></li>
								<li class="menu-item"><a class="menu-item-target" href=""
									target="_self">자주 묻는 질문</a></li>
								<li class="menu-item"><a class="menu-item-target" href=""
									target="_blank">과일 칠러 판매 제외 매장</a></li>
								<li class="menu-item"><a class="menu-item-target" href=""
									target="_blank">영양정보/원산지 정보/기타 정보</a></li>
								<li class="menu-item"><a class="menu-item-target" href=""
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
				Store Number:688<br>:NpVersion: 6.1<br>Store Status:<br>1
			</div>

		</div>
	</div>


	<div id="signin" class="modal-login modal fade signin-modal"
		role="dialog" aria-labelledby="modal-title" aria-hidden="true"
		tabindex="-1">
		<div class="modal-backdrop fade in" style="height: 754px;"></div>
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">

					<img class="logo"
						src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/mcdelivery_logo_ko.jpg"
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
							value="c88ae5be33caf4e15ec216eb549176bb">
					</form>
					<p class="note">주문 관련 문의사항은 맥딜리버리 콜센터로연락하시기 바랍니다1600-5252.</p>
				</div>
			</div>
		</div>
	</div>


	<div>
		<div id="register-gmal-reminder" class="modal-login modal fade"
			role="dialog" aria-labelledby="register-gmal-reminder"
			aria-hidden="true" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h2 id="register-gmal-reminder">??register.gmal.reminder.title_ko_KR??</h2>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">
							<i class="fa mcd mcd-close"></i>
						</button>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-xs-offset-2 col-xs-8">
								<p>
									<strong>??register.gmal.reminder.desc1_ko_KR??</strong>
								</p>
								<p>??register.gmal.reminder.desc2_ko_KR??</p>
								<p>??register.gmal.reminder.desc3_ko_KR??</p>
							</div>
						</div>
						<div class="row row-narrow">
							<div class="col-xs-offset-2 col-xs-4">
								<button type="button"
									class="btn btn-default btn-red btn-xl btn-block"
									data-dismiss="modal" onclick="signInModalShow()">로그인</button>
							</div>
							<div class="col-xs-4">
								<a class="btn btn-default btn-red btn-xl btn-block"
									data-ajax="false"
									onclick="dataLayer.push({          'event':'trackEvent',          'vpv': 'vpv_existing_mcdonalds_app_user_popup',          'eventDetails.category':'single sign on',          'eventDetails.action':'cta click',          'eventDetails.label':'reset password'         });"
									href="/kr/forgot-password.html"> 비밀번호 변경 </a>
							</div>
						</div>
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


							<div class="time timer text-din timer-clock session-timer">11:23</div>


							<div class="time-disclaimer">세션 만료까지 _분 남았습니다</div>

						</div>
						<div class="col-xs-8 timer-wrapper">
							<div class="alert-content text-left">
								<h1 id="countdowntimer-title">아직도 주문 중이신가요?</h1>


								<p>일시적으로 중단되었습니다. 주문을 계속하시려면 계속 버튼을 눌러주세요.</p>

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
	<!-- [#tnc-update.modal] -->
	<div id="tncupdate2" data-backdrop="static" data-keyboard="false"
		class="modal-tncupdate modal fade" role="dialog"
		aria-labelledby="tncupdate-title" aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="tncupdate-title">이용약관 업데이트</h1>
				</div>
				<div class="modal-body">
					<h2>제1조. 목적</h2>
					<p>
						이 약관은 한국맥도날드 유한회사(이하 "맥도날드")가 운영하는 맥딜리버리 인터넷 홈페이지(<a
							href="https://www.mcdelivery.co.kr/kr/" target="_blank">https://www.mcdelivery.co.kr/kr/</a>,
						이하 "홈페이지")를 통하여 제공하는 모든 서비스 이용과 관련하여 맥도날드 및 회원과의 권리, 의무, 책임사항, 기타
						이용 조건 및 절차에 관한 사항을 규정함을 목적으로 합니다.
					</p>
					<h2>제2조. 정의</h2>
					<p>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
					<ol>
						<li>"서비스"라 함은 구현되는 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함)와 상관없이
							홈페이지를 통하여 제공받아 회원이 이용할 수 있는 서비스를 말합니다.</li>
						<li>"회원"이라 함은 홈페이지에 접속하여 이 약관에 따라 회원 가입 신청을 하여 맥도날드로부터 가입 승인을
							받고 이 약관에 따라 맥도날드가 제공하는 서비스를 이용하는 이용자를 말합니다.</li>
						<li>"ID(아이디)"라 함은 회원의 식별과 서비스 이용을 위하여 회원이 정하고 맥도날드가 승인하는 문자와
							숫자의 조합을 말합니다.</li>
						<li>"Password(비밀번호)"라 함은 회원이 부여 받은 ID와 일치되는 회원임을 확인하고 비밀보호를
							위해 회원 자신이 정한 문자와 숫자의 조합을 말합니다.</li>
					</ol>
					<h2>제3조. 약관의 변경</h2>
					<ol>
						<li>약관은 관계법령에 위배되지 않는 범위 안에서 개정될 수 있습니다.</li>
						<li>회원은 개정된 약관에 동의하지 않을 경우 회원 탈퇴를 요청할 수 있습니다.</li>
					</ol>
					<h2>제4조. 회원가입</h2>
					<ol>
						<li>홈페이지 회원은 "본인회원"만을 원칙으로 합니다.</li>
						<li>본인회원이란 이 약관의 내용에 대하여 동의를 한 다음 홈페이지 서비스의 회원 신청 양식에 의거, 본인의
							신상 정보를 사실에 입각, 입력하는 방법으로 회원가입신청을 하고 맥도날드로부터 회원 가입 승인을 받으신 분을
							의미합니다. 법인 혹은 단체회원으로 가입신청을 하실 수는 없습니다.</li>
						<li>만14세 미만의 미성년자는 회원으로 가입할 수 없습니다.</li>
						<li>맥도날드는 다음 사항에 해당하는 경우에는 가입승인을 유보, 거부하거나 사후에 회원 자격을 박탈할 수
							있습니다:
							<ul class="lower-roman">
								<li>가명으로 회원 가입할 경우.</li>
								<li>혐오스럽거나 타인에게 불쾌감을 줄 수 있는 아이디로 회원가입을 할 경우.</li>
								<li>다른 사람의 명의를 빌리거나 도용하여 차명으로 신청하였을 경우.</li>
								<li>기타 가입신청 항목에 허위로 기재하거나 맥도날드가 제시하는 내용을 기재하지 아니할 경우.</li>
								<li>관계법령에 위배되거나 미풍양속을 저해하고자 하는 목적으로 회원가입 신청을 할 경우(또는 그런 행위를
									한 경우).</li>
								<li>가입신청자가 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우(단, 맥도날드의 회원 재가입
									승인을 득한 경우에는 예외로 함).</li>
							</ul>
						</li>
					</ol>
					<h2>제5조. 회원정보</h2>
					<ol>
						<li>맥도날드는 관계법령이 정하는 바에 따라 회원의 개인정보를 보호하기 위해 노력합니다. 또한, 개인정보의
							보호 및 사용에 대해서는 관계법령뿐 아니라 맥도날드의 개인정보취급방침이 적용됩니다.</li>
						<li>회원 가입 시 입력한 개인정보는 회원의 동의를 득하거나 관계법령에서 허용하는 경우를 제외하고는 다른
							용도로 사용되지 않으며, 또한 외부로 유출되지 않습니다.</li>
						<li>상기 제5조 제2항에도 불구하고 관계법령에 따라 맥도날드에게 수사기관 등 제3자에 대한 회원의
							개인정보제공 의무가 강제되는 경우 맥도날드는 관계법령을 준수하는 범위 내에서는 부득이하게 회원의 개인정보를 제공할 수
							있습니다.</li>
					</ol>
					<h2>제6조. 회원의무</h2>
					<ol>
						<li>회원은 이 약관에서 규정하는 사항과 기타 맥도날드가 정한 제반 규정, 공지사항 등 회사가 공지하는 사항
							및 관계법령을 준수하여야 합니다.</li>
						<li>ID와 Password에 대한 관리책임은 회원에게 있고 회원 본인이 직접 사용하여야 하며, 본인이 아닌
							타인이 이용하게 하여서는 안됩니다.</li>
						<li>회원 본인의 부주의로 ID와 Password가 타인에게 유출되어 발생할 수 있는 각종 손실 및 손해에
							대한 책임은 회원 본인에게 귀속됩니다.</li>
						<li>회원은 회원가입신청 시 기재한 사항이 변경되었을 경우 온라인으로 수정을 하거나 전자우편 기타 방법으로
							맥도날드에 대하여 그 변경사항을 알려야 하며, 변경사항을 맥도날드에 알리지 않아 발생하는 불이익 등 문제점 발생시,
							그에 대한 책임은 회원 본인에게 귀속됩니다.</li>
					</ol>
					<h2>제7조. 회원관리</h2>
					<ol>
						<li>회원은 언제든지 개인정보를 열람하고 정정 또는 동의철회(회원탈퇴)를 요청할 수 있습니다.</li>
						<li>개인정보의 수집에 대한 동의철회(회원탈퇴)를 하시려면 회원탈퇴를 누르시고 회원탈퇴를 하시면 됩니다.
							회원탈퇴 시 관계법령 및 개인정보취급방침에 따라 맥도날드가 회원정보를 보유하는 경우를 제외하고는 탈퇴 즉시 회원의
							모든 개인정보는 삭제 및 소멸됩니다.</li>
						<li>회원은 홈페이지 내에 게재되어 있는 각종 정보서비스 이용에 관련된 불만사항이나 의견을 제안하여 시정을
							요구할 수 있습니다.</li>
						<li>회원으로 가입되어 있는 분들은 누구나 동등한 자격으로 서비스를 이용하실 수 있습니다.</li>
					</ol>
					<h2>제8조. 회원정보 이용</h2>
					<ol>
						<li>회원은 서비스 이용과정에서 취득한 e-mail 주소 등 다른 이용자의 개인정보를 영리 목적을 불문하고
							사용하거나 제3자에게 제공할 수 없습니다.</li>
						<li>회원이 스팸메일 발송 등을 위하여 다른 회원들의 e-mail 주소를 사용하거나 이를 제3자에게
							제공하였을 경우, 이에 대한 법적 책임은 해당 회원에게 있으며,해당 회원은 이로 인하여 발생하는 모든 손실 또는
							손해로부터 맥도날드가 면책되도록 하여야 합니다.</li>
					</ol>
					<h2>제9조. 저작권</h2>
					<ol>
						<li>회원이 홈페이지에서 제공하는 각종 서비스에 대한 정보를 사전 동의 없이 외부로 유출시켰을 경우, 해당
							회원은 저작권법 등 관계법령에 의하여 제재를 받을 수 있습니다.</li>
						<li>회원은 홈페이지에 등록되어 있는 맥도날드의 CI/BI 혹은 캐릭터 등 상표권법에 의해 보호 받고 있는
							이미지 파일을 무단으로 사용하실 수 없으며, 위반사항 적발 시 해당 행위에 대한 법적 제재가 따른다는 사실을 인정하고
							이에 동의합니다.</li>
					</ol>
					<h2>제10조. 회원자격 중지 및 탈퇴</h2>
					<ol>
						<li>서비스 제공업자인 맥도날드는 다음 사항 발생시 별도 통보절차 없이 회원의 자격을 정지하거나 박탈할 수
							있습니다.:
							<ul class="lower-roman">
								<li>회원가입 시 입력사항을 허위로 기재하는 등 이 약관 제4조 제4항 각호에 해당하는 경우.</li>
								<li>회원들 간의 홈페이지 내에서의, 음란물 거래 혹은 음란물 등록을 하였을 경우.</li>
								<li>형사처벌 또는 민사상 불법행위의 대상이 되는 것으로 판단되는 행위 적발 시. (불법 상행위 포함)</li>
								<li>게시판 등 홈페이지에서 욕설이나 저속한 문구를 사용하여, 타인에게 불쾌감을 준다고 판단되는 경우.</li>
								<li>기타 관계법령, 이 약관, 서비스 이용과 관련하여 맥도날드가 정한 다른 규정을 위반하는 행위를 하는
									경우.</li>
							</ul>
						</li>
						<li>홈페이지를 이용한 부당광고 및 다른 회원들에게 피해를 주는 행위를 하였을 경우, 맥도날드는 1회에
							한하여 해당 이용자에게 해당 행위를 중지할 것을 통보하며, <strong>통보에도 불구하고</strong> 그러한
							행위가 지속될 때에는 별도의 통보 없이 <strong>해당 이용자의</strong> 맥도날드 회원 자격을 정지 또는
							박탈할 수 있습니다.
						</li>
					</ol>
					<h2>제11조. 서비스 이용</h2>
					<ol>
						<li>서비스는 맥도날드의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간을 원칙으로
							합니다. 단, 일부 매장은 이용시간이 제한되어 있습니다.</li>
						<li>제1항의 이용시간은 정기 점검 등의 필요로 인하여 맥도날드가 정한 날과 시간에는 예외로 합니다. 단,
							부득이한 경우로 서비스를 일시 중지 할 경우에는 맥도날드는 가급적 사전에 이를 공지하여야 하나, 불가피한 경우에는
							사후 통지로 갈음할 수 있습니다.</li>
						<li>매장 가격과 배달 시 가격은 맥도날드 가격 정책에 따라 다르게 책정되어 있으며 주문 시에 가격 확인을
							확인하시기 바랍니다.</li>
						<li>맥딜리버리 서비스는 최소 주문 금액제도에 따라, ₩7,000원 이상 주문 시에 서비스 받으실 수
							있습니다.</li>
						<li>매장에서 진행되는 할인 메뉴 혜택, 행사 내용이 동일하게 진행되지 않을 수 있습니다.</li>
						<li>배달이 어려운 일부 디저트 메뉴는 제공을 못해 드리고 있습니다.</li>
						<li>제품의 품질 유지를 위한 청소, 점검으로 인하여 일부 시간대 제품 판매가 제한될 수 있습니다.</li>
						<li>맥모닝 주문은 03:50AM ~ 10:20AM 사이에 가능합니다.</li>
						<li>해피밀 장남감은 번호로 선택 하실 수 있습니다.</li>
						<li>양념 등 소스류의 제공은 맥딜리버리 기본 제공 원칙에 따릅니다.</li>
						<li>₩70,000원 이상 대량 주문의 경우 매장 상황을 파악한 뒤 가능 여부를 알려 드립니다.</li>
						<li>배달가능 구역 내에서도 기상조건이나 매장 사정상 배달이 제한될 수 있습니다.</li>
						<li>배달지 검색 결과와 실제 배달가능 지역은 다를 수 있습니다.</li>
						<li>배달 가능 지역에 따라 맥딜리버리 서비스를 제한적으로 받을 수 있습니다.</li>
						<li>호텔, 모텔, PC방, 노래방 등 공공장소의 경우 프론트까지만 맥딜리버리 서비스를 하고 있습니다.</li>
						<li>결제 방법은 현금, 신용카드, 수표로 가능합니다.</li>
					</ol>
					<h2>제12조. 서비스 제공업자의 의무</h2>
					<ol>
						<li>맥도날드는 특별한 사정이 없는 한 이용자가 신청한 서비스 제공 개시일에 서비스를 이용할 수 있도록
							합니다.</li>
						<li>맥도날드는 이 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 의무가 있습니다.</li>
						<li>맥도날드는 이 약관에서 특별히 정한 경우를 제외하고는 이용자의 개인정보를 본인의 승낙 없이 타인에게
							누설, 배포하여서는 아니 됩니다. 다만, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관계법령에 의하여
							국가기관 등의 적법한 요구가 있는 경우에는 예외로 합니다.</li>
						<li>맥도날드는 회원으로부터 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 즉시 처리하여야 합니다.
							다만, 즉시 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 통보 하여야 합니다.</li>
					</ol>
					<h2>제13조. 기타사항 (명기되지 않은 사항)</h2>
					<p>이 약관에 명기되지 않은 사항이나 약관의 해석에 관하여서는 관계법령 또는 상 관례에 따릅니다.</p>
					<h2>제14조. 약관위반 시 책임</h2>
					<ol>
						<li>이 약관을 위반함으로써 발생하는 모든 책임은 위반한 자가 부담하며, 이로 인하여 상대방에게 손해를 입힌
							경우에는 관계법령에 의거하여 법적 책임을 져야 합니다.</li>
						<li>서비스 이용과 관련하여 맥도날드와 회원 간에 발생하는 분쟁에 관한 소송은 민사소송법 등에 의거한
							관할법원에 제기합니다.</li>
					</ol>
					<h2>제15조. 면책조항</h2>
					<ol>
						<li>맥도날드는 천재지변, 전쟁 기타 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는
							서비스 제공에 대한 책임이 면책됩니다.</li>
						<li>맥도날드는 회원의 귀책사유로 인한 서비스 이용의 장애 또는 손해에 대하여 책임을 부담하지 않습니다.</li>
					</ol>
					<h2>부칙</h2>
					<p>이 약관은 2012.11. 4.부터 적용합니다.</p>
					<div class="row">
						<div class="col-xs-12">
							<form class="form" role="form" id="form_tncupdate"
								action="updateTnC.html" method="POST">
								<div class="form-group text-left">
									<div class="checkbox">
										<div class="icheckbox" style="position: relative;">
											<input type="checkbox" name="form_tncupdate_agreement"
												id="form_tncupdate_agreement"
												style="position: absolute; opacity: 0;">
											<ins class="iCheck-helper"
												style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
										</div>
										<label for="form_tncupdate_agreement" class="checkbox-label">예,
											이용약관을 확인했으며, 이에 동의합니다.</label>
									</div>
								</div>
								<div class="form-group text-center">
									<button type="submit" data-dismiss="modal" aria-hidden="true"
										class="btn btn-default btn-gray disabled btn-lg text-ucase">확인</button>
								</div>
								<input type="hidden" name="csrfValue"
									value="c88ae5be33caf4e15ec216eb549176bb">
							</form>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>


	<div class="ui-selectmenu-menu select-lg"
		style="z-index: 2; top: 361px; left: 60px;">
		<ul
			class="ui-widget ui-widget-content ui-selectmenu-menu-dropdown ui-corner-bottom"
			aria-hidden="true" role="listbox"
			aria-labelledby="form_register_gender-button"
			id="form_register_gender-menu" aria-disabled="false" tabindex="0"
			aria-activedescendant="ui-selectmenu-item-397"
			style="width: 294.25px;">
			<li role="presentation"
				class="ui-selectmenu-item-selected ui-selectmenu-item-focus"><a
				href="#nogo" tabindex="-1" role="option" aria-selected="true"
				id="ui-selectmenu-item-397">&nbsp;</a></li>
			<li role="presentation"><a href="#nogo" tabindex="-1"
				role="option" aria-selected="false">남</a></li>
			<li role="presentation"><a href="#nogo" tabindex="-1"
				role="option" aria-selected="false">여</a></li>
			<li role="presentation" class="ui-corner-bottom"><a href="#nogo"
				tabindex="-1" role="option" aria-selected="false">선택 안함</a></li>
		</ul>
	</div>
</body>
</html>