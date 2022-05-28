<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
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