<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/main.css">
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="/resources/js/main.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
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
							<li class="list-item"><a class="list-item-target"
								href="?locale=ko">한국어 <i class="fa fa-caret-left icon"></i></a>
								<!-- --></li>
							<li class="list-item"><a class="list-item-target"
								href="?locale=en">English <i class="fa fa-caret-left icon"></i></a></li>
						</ul>
					</div>
					<div class="my-account-quicklinks">
						<ul class="list-inline list-inline-divide">
							<li class="list-item"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/icon_profile_gray.png"
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
						<a class="navbar-brand wos-brand" href="/kr/home.html"> <img
							src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/mcdelivery_logo_ko.jpg" alt="McDelivery&amp;trade;">
						</a>
					</div>
					<div class="main-navigation clearfix">
						<ul class="nav navbar-nav">

							<li class="menu-item menu-item-menu"><a
								class="menu-item-target" href="/kr/menu.html"> <i
									class="fa mcd mcd-burger icon"></i> 메뉴
							</a></li>
							<li class="menu-item menu-item-account dropdown"><a
								class="menu-item-target dropdown-toggle" href="#signin"
								data-toggle="modal" data-target="#signin"> <i
									class="fa fa-user icon"></i> 마이 페이지
							</a></li>
							<li class="menu-item menu-item-support dropdown  selected"><a
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
						<i class="fa fa-exclamation text-white icon"></i> <span><span
							class="text-primary timer menuswitch-timer"></span> 분 후 아침 메뉴
							주문으로 전환됩니다. 주문을 완료해 주세요.</span>
					</p>
				</div>


				<!-- Start of Session time out warning -->

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
										<div class="time timer text-din timer-clock menuswitch-timer"></div>
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
										<div class="time timer text-din timer-clock storeclose-timer"></div>
									</div>
									<div class="col-xs-8 timer-wrapper">
										<div class="alert-content text-left">
											<h1 id="countdowntimer-title">배달 가능 시간</h1>
											<p>해당 지역의 매장은 오후 0 까지 배달 가능합니다.</p>
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

				<div class="row row-narrow">
					<div class="page-sidebar">
						<div class="sidebar-menu">
							<h2 class="menu-category">기타정보</h2>
							<ul class="menu">


								<li class="menu-item"><a class="menu-item-target"
									href="useInfo.jsp" target="_self">이용약관</a></li>



								<li class="menu-item selected"><a class="menu-item-target"
									href="" target="_self">개인정보 처리방침</a></li>



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
					</div>

					<div class="col-xs-10">
						<div class="page-title">
							<h1>개인정보 처리방침</h1>
						</div>
						<div class="panel-lg panel panel-default">
							<div class="panel-body">
								<div class="row">
									<div class="col-xs-12">
										<h3 style="text-decoration: underline;">01.&nbsp;
											개인정보처리방침의 의의</h3>
										<p>한국맥도날드 유한회사 (이하 '회사')는 고객의 개인정보를 중요시하며, 정보통신망 이용촉진 및
											정보보호 등에 관한 법률 및 개인정보보호법 등 고객의 개인정보 보호와 관련된 법령을 준수하고 있습니다. 회사는
											본 개인정보 처리방침(이하 ‘본 방침’)을 통하여 고객이 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고
											있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 회사는 본 방침을 개정하는 경우
											웹사이트 및 모바일 어플리케이션 공지사항 또는 개별공지를 통하여 변경내용과 그 이유를 지체 없이 공지할
											것입니다.</p>
										<p>본 방침 시행일 2012년 4월 1일</p>
										<p>본 방침 개정일 2021년 10월 18일</p>
										<h3 id="policy_02" style="text-decoration: underline;">02.&nbsp;
											수집하는 개인정보</h3>
										<h4>Q) 회사가 수집하는 개인정보 항목과 수집∙이용 목적, 수집방법은 무엇인가요?</h4>
										<p>회사에서는 고객 여러분에게 맥딜리버리 서비스(이하 “MDS”)를 제공하기 위하여 아래와 같이
											개인정보를 수집∙이용하고 있습니다.</p>
										<p id="policy_02_1"
											style="font-weight: bold; text-decoration: underline;">[회원]</p>
										<table class="table-tnc">
											<tbody>
												<tr>
													<td
														style="font-weight: 700; background-color: #ccc; width: 30%;">수집항목</td>
													<td
														style="font-weight: 700; background-color: #ccc; width: 40%">수집
														및 이용목적</td>
													<td
														style="font-weight: 700; background-color: #ccc; width: 30%;">수집방법</td>
												</tr>
												<tr>
													<td>(필수)<br> 이름, 휴대전화 번호, 이메일,<br> 비밀번호, 배달지
														주소
													</td>
													<td>- MDS 서비스 제공 <br>- MDS 및 맥도날드 관련 정보와 프로모션에 대한
														SNS 메시지, 문자 등을 발송(광고성 정보 수신 동의시)
													</td>
													<td>회원가입 시 수집</td>
												</tr>
												<tr>
													<td>(선택) <br>성별
													</td>
													<td>- 통계자료로 활용</td>
													<td>회원가입 시 수집</td>
												</tr>
											</tbody>
										</table>
										<p id="policy_02_2"
											style="font-weight: bold; text-decoration: underline;">[비회원]</p>
										<table class="table-tnc">
											<tbody>
												<tr>
													<td
														style="font-weight: 700; background-color: #ccc; width: 30%;">수집항목</td>
													<td
														style="font-weight: 700; background-color: #ccc; width: 40%;">수집
														및 이용목적</td>
													<td
														style="font-weight: 700; background-color: #ccc; width: 30%;">수집방법</td>
												</tr>
												<tr>
													<td>(필수)<br> 휴대전화 번호, 배달지 주소
													</td>
													<td>- MDS 서비스 제공</td>
													<td>주문 시 수집</td>
												</tr>
												<tr>
													<td>(선택) <br>이메일
													</td>
													<td>- 주문결과 전달<br>- 광고성 정보 전달(광고성 정보 수신 동의시)
													</td>
													<td>주문 시 수집</td>
												</tr>
											</tbody>
										</table>
										<h3 id="policy_03" style="text-decoration: underline;">03.
											수집한 개인정보의 보유 및 이용기간</h3>
										<h4>Q) 회사는 수집한 개인정보를 언제까지 보관하나요?</h4>
										<p style="font-weight: bold; text-decoration: underline;">[회원]</p>
										<ol>
											<li>회사는 고객의 개인정보처리 동의일로부터 탈퇴확정시까지(선택적 개인정보의 경우에는 처리 동의
												철회시 또는 탈퇴확정시까지) 개인정보를 보유∙이용 할 수 있습니다.</li>
											<li>제1항에도 불구하고 다음과 같이 전자상거래 등에서의 소비자보호에 관한 법률 등 다른 법률에
												따라 개인정보를 보존하여야 하는 경우에는 그러한 법률에서 정한 기간 동안 개인정보를 보관합니다.<br>-전자상거래
												등에서 소비자 보호에 관한 법률<br>계약 또는 청약철회 등에 관한 기록: 5년 보관<br>대금결제
												및 재화 등의 공급에 관한 기록: 5년 보관<br>소비자의 불만 또는 분쟁처리에 관한 기록: 3년
												보관<br>-통신비밀보호법<br>로그인 기록: 3개월
											</li>
											<li>제1항에도 불구하고 1년 이상 MDS를 이용하지 않는 고객의 개인정보는 파기합니다. 다만 다른
												법령에 특별한 규정이 있는 경우 그에 따릅니다.</li>
										</ol>
										<p style="font-weight: bold; text-decoration: underline;">[비회원]</p>
										<ol>
											<li>수집 후 1년간 보관됩니다.</li>
										</ol>
										<h3 id="policy_04" style="text-decoration: underline;">04.
											개인정보처리의 위탁에 관한 사항</h3>
										<h4>Q) 회사는 개인정보의 처리를 위탁하나요?</h4>
										<p>회사는 MDS 제공, 고객정보의 원활한 처리와 안전한 보관, 각종 프로모션 및 다양한 혜택을
											제공하기 위하여 다음과 같이 고객정보를 위탁하여 처리하고 있습니다.</p>
										<table class="table-tnc">
											<tbody>
												<tr>
													<td
														style="font-weight: 700; background-color: #ccc; text-align: center; width: 30%;"><strong>수탁자</strong></td>
													<td
														style="font-weight: 700; background-color: #ccc; text-align: center;"><strong>취급위탁
															업무</strong></td>
												</tr>
												<tr>
													<td>씨앤티테크㈜</td>
													<td>콜센터 운영, 민원처리</td>
												</tr>
												<tr>
													<td>㈜푸드테크</td>
													<td>주문 중개, 시스템 유지 및 보수</td>
												</tr>
												<tr>
													<td>Capgemini</td>
													<td>웹사이트 및 관련 시스템 개발, 유지 및 보수</td>
												</tr>
												<tr>
													<td>㈜ 메쉬코리아</td>
													<td rowspan="2">제품 배달업무</td>
												</tr>
												<tr>
													<td>㈜ 바로고</td>
												</tr>
												<tr>
													<td>주식회사 브라이트벨</td>
													<td>웹사이트 및 관련시스템 개발 유지 및 보수, 각종 프로모션의 전반적인 운영</td>
												</tr>
												<tr>
													<td>㈜처음소프트</td>
													<td rowspan="3">프로모션, 혜택 등 광고성 정보 전송 업무</td>
												</tr>
												<tr>
													<td>다우기술</td>
												</tr>
												<tr>
													<td>메일링크</td>
												</tr>
												<tr>
													<td>㈜코마스인터렉티브</td>
													<td rowspan="2">프로모션, 혜택 등 광고성 정보 전송 및 각종 프로모션의 전반적인
														운영. 맥딜리버리 회원가입 및 주문 시 고객이 제공하는 개인정보를 활용한 고객 분석 및 결과 보고</td>
												</tr>
												<tr>
													<td>MILVUS</td>
												</tr>
												<tr>
													<td>㈜다음카카오</td>
													<td>㈜다음카카오 상품/서비스를 통한 고객 맞춤형 마케팅 정보 발송</td>
												</tr>
												<tr>
													<td>McDonald’s Corp</td>
													<td>시스템 유지 보수 등 운영</td>
												</tr>
												<tr>
													<td>AWS</td>
													<td>맥딜리버리 서버 호스팅</td>
												</tr>
											</tbody>
										</table>
										<h4 id="policy_04_2">Q) 회사는 국외에서 개인정보의 처리위탁을 하는가요?</h4>
										<p>회사는 개인정보 처리를 위탁 중 국외법인에서 처리하는 경우가 있으며, 해당 위탁업무는 다음과
											같습니다.</p>
										<table class="table-tnc">
											<tbody>
												<tr>
													<td
														style="font-weight: 700; background-color: #ccc; text-align: center;"><strong>수탁자</strong></td>
													<td colspan="2"
														style="font-weight: 700; background-color: #ccc; text-align: center;"><strong>위탁
															사항</strong></td>
												</tr>
												<tr>
													<td style="font-weight: 700;" rowspan="6">McDonald’s
														Corp</td>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">개인정보
														항목</td>
													<td>이름, 휴대 전화번호, 이메일, 비밀번호, 배송지 주소</td>
												</tr>
												<tr>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">국가</td>
													<td>미국 <br> 1035 W Randolph St, Chicago, IL,
														60607
													</td>
												</tr>
												<tr>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">위탁
														일시 및 방법</td>
													<td>회원가입 및 사용시<br>암호화된 데이터 전송
													</td>
												</tr>
												<tr>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">위탁받는
														자<br>(정보관리책임자 <br>연락처)
													</td>
													<td>McDonald’s Corporation <br>(contact.privacy@us.mcd.com)
													</td>
												</tr>
												<tr>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">위탁
														업무</td>
													<td>시스템 유지 보수 등 운영</td>
												</tr>
												<tr>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">개인정보의
														보유 <br>및 이용 기간
													</td>
													<td>회원 탈퇴 시 혹은 위탁 계약 종료시까지</td>
												</tr>
												<tr>
													<td style="font-weight: 700;" rowspan="6">AWS</td>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">개인정보
														항목</td>
													<td>이름, 휴대 전화번호, 이메일, 비밀번호, 배송지 주소</td>
												</tr>
												<tr>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">국가</td>
													<td>싱가폴<br>27 Tampines Street 92, Singapore
														528878
													</td>
												</tr>
												<tr>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">위탁
														일시 및 방법</td>
													<td>회원가입 및 사용시<br>암호화된 데이터 전송
													</td>
												</tr>
												<tr>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">위탁받는
														자 <br>(정보관리책임자 <br>연락처)
													</td>
													<td>Amazon Web Service Inc. <br>(aws-korea-privacy@amazon.com)
													</td>
												</tr>
												<tr>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">위탁
														업무</td>
													<td>맥딜리버리 서버 호스팅</td>
												</tr>
												<tr>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">개인정보의
														보유 <br>및 이용기간
													</td>
													<td>회원 탈퇴 시 혹은 위탁 계약 종료시까지</td>
												</tr>
												<tr>
													<td style="font-weight: 700;" rowspan="6">Capgemini</td>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">개인정보
														항목</td>
													<td>이름, 휴대 전화번호, 이메일, 비밀번호, 배송지 주소</td>
												</tr>
												<tr>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">국가</td>
													<td>미국<br>79 Fifth Avenue, 3rd Floor, New York,
														New York <br>10003
													</td>
												</tr>
												<tr>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">위탁
														일시 및 방법</td>
													<td>회원가입 및 사용시<br>암호화된 데이터 전송
													</td>
												</tr>
												<tr>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">위탁받는
														자<br>(정보관리책임자 <br>연락처)
													</td>
													<td>Capgemini America, Inc.<br>(dataprivacyoffice.nar@capgemini.com)
													</td>
												</tr>
												<tr>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">위탁
														업무</td>
													<td>웹사이트 및 관련 시스템 개발, 유지 및 보수</td>
												</tr>
												<tr>
													<td
														style="font-weight: 700; background-color: #eceaea; text-align: center;">개인정보의
														보유 <br>및 이용 기간
													</td>
													<td>회원 탈퇴 시 혹은 위탁 계약 종료시까지</td>
												</tr>
											</tbody>
										</table>
										<h3 id="policy_05" style="text-decoration: underline;">05.
											개인정보의 제3자 제공에 관한 사항</h3>
										<h4>Q) 회사는 어떤 제3자에게 개인정보를 제공하나요?</h4>
										<table class="table-tnc">
											<tbody>
												<tr>
													<td
														style="font-weight: 700; background-color: #ccc; text-align: center; width: 12%;"><strong>제공받는
															자</strong></td>
													<td
														style="font-weight: 700; background-color: #ccc; text-align: center; width: 14%;"><strong>제공받는
															자의 이용목적</strong></td>
													<td
														style="font-weight: 700; background-color: #ccc; text-align: center; width: 44%"><strong>제공하는
															개인정보의 항목</strong></td>
													<td
														style="font-weight: 700; background-color: #ccc; text-align: center; width: 30%;"><strong>제공받는
															자의 보유 및 이용기간</strong></td>
												</tr>
												<tr>
													<td>*맥도날드 가맹점</td>
													<td>주문배달 처리 및 고객 불만사항 해결</td>
													<td>*주문배달 관련 개인 정보 : 고객이 제공하는 고객의 이름, 휴대전화 번호, 이메일,
														비밀번호, 배달지 주소 <br>*고객 불만사항 관련 개인 정보 : 상기 개인정보 및 문의 또는
														민원 사항
													</td>
													<td>이용목적이 달성된 후 3개월</td>
												</tr>
											</tbody>
										</table>
										<p>
											* 맥도날드 가맹점 확인하기 &gt;&gt; <a
												href="https://www.mcdonalds.co.kr/kor/etc/private.do#indexA"
												target="_blank">클릭</a>
										</p>
										<h3 id="policy_06" style="text-decoration: underline;">06.
											개인정보의 파기절차 및 파기방법에 관한 사항</h3>
										<h4>Q) 회사는 어떻게 개인정보를 파기하나요?</h4>
										<p>회사는 파기해야 하는 개인정보를 확인하면, 전자적 파일 형태로 보관되고 있는 개인정보는 복원이
											불가능한 방법으로 영구 삭제하며, 그 외의 기록물, 인쇄물, 서면, 그 밖의 기록매체인 경우에는 파쇄하거나
											소각합니다. 다만 다른 법률에 따라 개인정보를 보존하여야 하는 경우에는 제3조 제2항에 기재된 법률에서 정한
											기간 동안 개인정보를 보관합니다.</p>
										<h3 id="policy_07" style="text-decoration: underline;">07.
											개인정보의 안정성 확보조치에 관한 사항</h3>
										<h4>Q) 회사는 개인정보의 안전성 확보를 위해 어떠한 조치를 취하고 있나요?</h4>
										<p>회사는 개인정보의 안전성 확보를 위해 다음과 같은 조치를 취하고 있습니다.</p>
										<ul>
											<li>관리적 조치: 내부관리계획의 수립 및 시행, 구성원에 대한 정기적인 개인정보 보호교육 등</li>
											<li>기술적 조치: 개인정보처리시스템 등의 접근권한 관리, 접근통제시스템 설치, 고유식별정보 등의
												암호화, 보안프로그램의 설치 등</li>
											<li>물리적 조치: 전산실, 자료보관실 등 개인정보 보관장소에 대한 접근통제 등</li>
										</ul>
										<h3 id="policy_08" style="text-decoration: underline;">08.
											정보주체의 권리와 의무 및 그 행사방법에 관한 사항</h3>
										<h4>Q) 고객과 법정대리인은 어떠한 권리가 있으며, 권리행사는 어떻게 해야 하나요?</h4>
										<ol style="list-style-type: upper-alpha">
											<li>고객은 언제든지 자신의 개인정보를 열람하거나 정정할 수 있으며, 개인정보의 삭제또는 개인정보
												제공에 관한 동의철회를 요청할 수 있습니다..</li>
											<li>만14세 미만 아동의 개인정보는 수집하지 않습니다. 다만, 법정대리인의 요구가 있는 경우
												법령상의 권리를 보장합니다(아동의 개인정보에 대한 열람∙정정∙삭제, 개인정보처리정지요구권 등).</li>
											<li>이러한 열람, 정정, 삭제를 원하는 경우 홈페이지 내 1:1고객센터를 이용하시거나, 아래
												고객센터 또는 개인정보관리책임자에게 연락하시면 지체 없이 조치하겠습니다.</li>
											<li>또한 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를
												이용 또는 제공하지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를
												제3자에게 지체 없이 통지하여 정정이 이루어지도록 하겠습니다.</li>
										</ol>
										<h3 id="policy_09" style="text-decoration: underline;">09.
											쿠키의 운영</h3>
										<h4>Q) 인터넷 접속정보파일 등 개인정보를 자동으로 수집하는 장치를 운영하나요?</h4>
										<p>
											웹사이트 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악하여 웹사이트 서비스를 개선하고자
											쿠키(Cookie)를 운영합니다. 쿠키란 회사 웹사이트를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는
											아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다.<br>귀하는 쿠키 설치에 대한
											선택권을 가지고 있으며, 귀하의 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될
											때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다.
										</p>
										<h3 style="text-decoration: underline;">10. 개인정보의 보호책임자에
											관한 사항</h3>
										<h4>Q) 개인정보 처리에 관한 문의사항이 있는 경우에는 어떻게 해야 하나요?</h4>
										<p>회사는 고객의 개인정보를 보호하고 개인정보와 관련한 민원을 처리하기 위하여 아래와 같이 고객센터를
											운영하고 있으며, 개인정보관리책임자를 지정하고 있습니다. 귀하께서는 회사의 서비스를 이용하시며 발생하는 모든
											개인정보보호 관련 민원은 고객센터를 통해 문의하여 주시기 바랍니다.</p>
										<ul>
											<li>고객센터: 080-208-1588</li>
											<li>개인정보관리책임자: 김철홍</li>
											<li>이메일: <a href="mailto:DataPrivacy@kr.mcd.com">DataPrivacy@kr.mcd.com</a></li>
										</ul>
										<p>기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.</p>
										<ol>
											<li>개인정보 침해신고센터:(국번없이)118 (<a
												href="http://privacy.kisa.or.kr" target="_blank">http://privacy.kisa.or.kr</a>)
											</li>
											<li>개인정보 분쟁조정위원회:1833-6972 (<a
												href="http://www.kopico.go.kr" target="_blank">www.kopico.go.kr</a>)
											</li>
											<li>대검찰청 사이버수사과: (국번없이)1301, cid@spo.go.kr (<a
												href="http://spo.go.kr" target="_blank">http://spo.go.kr</a>)
											</li>
											<li>경찰청 사이버안전국: (국번없이)182 (<a
												href="http://cyberbureau.police.go.kr" target="_blank">http://cyberbureau.police.go.kr</a>)
											</li>
										</ol>

										<h3 style="text-decoration: underline;">11. 이전의 개인정보
											처리방침은 아래에서 확인하실 수 있습니다.</h3>
										<ul>
											<li>이전 개인정보 처리방침 보기 (<a
												href="https://www.mcdonalds.co.kr/kor/etc/private.do"
												target="_blank">https://www.mcdonalds.co.kr/kor/etc/private.do</a>)
											</li>
										</ul>
									</div>
								</div>
							</div>
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
			<div id="signin" class="modal-login modal fade signin-modal"
			role="dialog" aria-labelledby="modal-title" aria-hidden="true"
			tabindex="-1" style="display: none;">
			<div class="modal-backdrop fade in" style="height: 754px;"></div>
			
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<img class="logo" src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/mcdelivery_logo_ko.jpg" alt="">

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
										>로그인</a>
									</li>

									<li class=""><a href="#modal-signin-tab-new"
										data-toggle="tab">비회원
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
															placeholder="아이디" value="" aria-required="true"
															aria-invalid="false">
													</div>
													<div class="list-group-item textfield-list-group-item">
														<label class="sr-only" for="form_login_modal_password">비밀번호</label>
														<input type="password" name="password"
															id="form_login_modal_password"
															class="required list-group-form-control"
															placeholder="비밀번호" autocomplete="off" maxlength="20"
															value="" aria-required="true" aria-invalid="false">
													</div>
													<label id="form_login_modal_username-error" class="error"
														for="form_login_modal_username"></label><label
														id="form_login_modal_password-error" class="error"
														for="form_login_modal_password"></label>
												</div>
												<label id="errorTips" style="display: none;"></label>
												<div class="checkbox">
													<div class="icheckbox" style="position: relative;">
														<input type="checkbox" name="rememberMe"
															id="modal_login_rememberme" value="true"
															aria-invalid="false"
															style="position: absolute; opacity: 0;">
														<ins class="iCheck-helper"
															style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
													</div>
													<input type="hidden" name="_rememberMe" value="off">
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
		<div id="rememberMe" class="modal-rememberme modal fade"
			data-backdrop="static" role="dialog"
			aria-labelledby="rememberme-title" aria-hidden="true" tabindex="-1"
			style="display: none;">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h1 id="rememberme-title">자동 로그인</h1>
					</div>
					<div class="modal-body">
						<p>입력하신 정보로 웹사이트에 자동 로그인 됩니다. 공공장소에 있는 컴퓨터에서는 개인정보가 유출될 수 있으니
							사용을 자제해 주시기 바랍니다.</p>
						<div class="form-group">
							<button id="btnRememberMeCancel"
								class="btn btn-default btn-black btn-lg text-ucase">취소</button>
							<button id="btnRememberMeAgree"
								class="btn btn-default btn-red btn-lg text-ucase">동의</button>
						</div>
						<p class="note">맥딜리버리 채널을 이용한 주문 관련 문의 사항은 맥딜리버리 콜센터
							(1600-5252) 를 이용해 주시기 바랍니다.</p>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>