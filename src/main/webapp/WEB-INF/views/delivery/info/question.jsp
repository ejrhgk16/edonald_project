<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/main.css">
<script type="text/javascript" src="./js/jquery-3.6.0.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$(".btn-faq").on("click", function(e){
		//console.log($(this).attr("data-target"));
		var divId = $(this).attr("data-target");
		if($(divId).attr("class") == "collapse in"){
			$(divId).attr("class", "collapse");
		}else{
			$(divId).attr("class", "collapse in");
		}
	})
})
</script>
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
								src="./img/icon_profile_gray.png"
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
							src="./img/mcdelivery_logo_ko.jpg"
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
										class="dropdown-menu-item-target"
										href=""
										target="_self">이용약관</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href=""
										target="_self">개인정보 처리방침</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href=""
										target="_self">자주 묻는 질문</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href="http://www.mcdonalds.co.kr/kor/news/detail.do?page=1&amp;seq=517&amp;rnum=1&amp;temp_seq=&amp;searchWord="
										target="_blank">과일 칠러 판매 제외 매장</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href=""
										target="_blank">영양정보/원산지 정보/기타 정보</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target"
										href=""
										target="_self">모바일 웹</a></li>


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


								<li class="menu-item"><a class="menu-item-target" id="이용약관"
									href=""
									target="_self">이용약관</a></li>



								<li class="menu-item"><a class="menu-item-target"
									id="개인정보 처리방침"
									href=""
									target="_self">개인정보 처리방침</a></li>



								<li class="menu-item selected"><a class="menu-item-target"
									id="자주 묻는 질문"
									href=""
									target="_self">자주 묻는 질문</a></li>



								<li class="menu-item"><a class="menu-item-target"
									id="과일 칠러 판매 제외 매장"
									href=""
									target="_blank">과일 칠러 판매 제외 매장</a></li>



								<li class="menu-item"><a class="menu-item-target"
									id="영양정보/원산지 정보/기타 정보"
									href=""
									target="_blank">영양정보/원산지 정보/기타 정보</a></li>



								<li class="menu-item"><a class="menu-item-target"
									id="모바일 웹"
									href=""
									target="_self">모바일 웹</a></li>

							</ul>
						</div>
					</div>
					<div class="col-xs-10">
						<div class="page-title">
							<h1>자주 묻는 질문</h1>
						</div>
						<div class="panel-lg panel panel-default">
							<div class="panel-body">

								<div class="panel-group panel-lg accordion faq">
									<!-- ACCORDION 1-N -->
									<div class="panel-default faq-row">
										<div class="panel-heading">
											<div class="row">
												<div class="faq-col col-xs-1">
													<a data-toggle="collapse"
														class="btn btn-faq btn-faq accordion-state collapsed accordion-state-collapsed accordion-faq-collapsed"
														data-target="#faq-1" aria-expanded="false"><i
														class="mcd icon"></i></a>
												</div>
												<div class="col-xs-11 faq-title">매장에서 판매하는 모든 메뉴를
													배달하나요?</div>
											</div>
										</div>
										<div class="collapse" id="faq-1" aria-expanded="false"
											style="">
											<div class="row">
												<div class="col-xs-offset-1 col-xs-11">
													<p class="faq-copy">배달이 어려운 일부 메뉴를 제외하고, 맥도날드 매장에서 판매하고
														있는 대부분의 제품을 배달해 드리고 있습니다. 다만, 맥딜리버리 서비스 메뉴의 가격은 매장 가격과 상이할
														수 있으며, 매장에서 진행되는 할인 및 행사 내용은 적용되지 않을 수 있습니다. 맥딜리버리 주문이 가능한
														제품은 메뉴 창에서 확인하실 수 있습니다.</p>
												</div>
											</div>

										</div>
									</div>
									<div class="panel-default faq-row">
										<div class="panel-heading">
											<div class="row">
												<div class="faq-col col-xs-1">
													<a data-toggle="collapse"
														class="btn btn-faq btn-faq accordion-state accordion-faq-collapsed accordion-state-expanded"
														data-target="#faq-2"><i class="mcd icon"></i></a>
												</div>
												<div class="col-xs-11 faq-title">런치 세트도 주문 가능한가요?</div>
											</div>
										</div>
										<div class="collapse" id="faq-2">
											<div class="row">
												<div class="col-xs-offset-1 col-xs-11">
													<p class="faq-copy">맥런치 세트 메뉴는 매일 오전 10시 30 분부터 오후 2시까지
														더욱 합리적인 가격으로 점심 식사를 즐기시려는 고객들을 위해 마련되어 있으며, 맥도날드 매장에서만
														제공됩니다. 따라서 맥딜리버리 서비스 이용 시에는 런치 세트가 적용 되지 않습니다.</p>
												</div>
											</div>

										</div>
									</div>
									<div class="panel-default faq-row">
										<div class="panel-heading">
											<div class="row">
												<div class="faq-col col-xs-1">
													<a data-toggle="collapse"
														class="btn btn-faq btn-faq accordion-state accordion-faq-collapsed accordion-state-expanded"
														data-target="#faq-3"><i class="mcd icon"></i></a>
												</div>
												<div class="col-xs-11 faq-title">주문 가능한 최소 금액이 있나요?</div>
											</div>
										</div>
										<div class="collapse" id="faq-3">
											<div class="row">
												<div class="col-xs-offset-1 col-xs-11">
													<p class="faq-copy">맥딜리버리 서비스는 12,000원 이상 주문 시 별도 배달비
														없이 이용 가능하며, 12,000원 미만 주문 시 소액 주문비 2천원을 부담하시면 최소 3천원부터 주문이
														가능합니다. 다만, 매장 및 주문 채널 별 최소 주문 금액이 다르게 운영될 수 있는 점 이용에 참고 부탁
														드립니다.</p>
												</div>
											</div>

										</div>
									</div>
									<div class="panel-default faq-row">
										<div class="panel-heading">
											<div class="row">
												<div class="faq-col col-xs-1">
													<a data-toggle="collapse"
														class="btn btn-faq btn-faq accordion-state accordion-faq-collapsed accordion-state-expanded"
														data-target="#faq-4"><i class="mcd icon"></i></a>
												</div>
												<div class="col-xs-11 faq-title">가격은 어떻게 확인이 가능한가요?</div>
											</div>
										</div>
										<div class="collapse" id="faq-4">
											<div class="row">
												<div class="col-xs-offset-1 col-xs-11">
													<p class="faq-copy">제품 주문 시에 가격을 확인할 수 있으며, 맥도날드 가격 정책에
														따라 매장 가격과 배달 시 가격은 다르게 책정되어 있습니다.</p>
												</div>
											</div>

										</div>
									</div>
									<div class="panel-default faq-row">
										<div class="panel-heading">
											<div class="row">
												<div class="faq-col col-xs-1">
													<a data-toggle="collapse"
														class="btn btn-faq btn-faq accordion-state accordion-faq-collapsed accordion-state-expanded"
														data-target="#faq-5"><i class="mcd icon"></i></a>
												</div>
												<div class="col-xs-11 faq-title">배달 가능한 시간은 어떻게 되는지요?</div>
											</div>
										</div>
										<div class="collapse" id="faq-5">
											<div class="row">
												<div class="col-xs-offset-1 col-xs-11">
													<p class="faq-copy">일부 매장을 제외하고 24시간 맥딜리버리 서비스를 제공하고
														있습니다. 다만, 재료부족 등 매장상황에 따라 서비스 제공이 불가능한 경우 개별 연락하에 주문이 변경
														또는 취소 될 수 있음을 양해해주시기 바랍니다. 또한 기상 악화시에는 배달 라이더들의 안전을 위해 배달이
														중단, 제한, 지연 될 수 있고, 일부 시간대에 제품 품질 유지를 위해 기계청소를 실시함에 따라 일부
														시간대 특정 메뉴가 생산이 되지 않습니다.</p>
												</div>
											</div>

										</div>
									</div>
									<div class="panel-default faq-row">
										<div class="panel-heading">
											<div class="row">
												<div class="faq-col col-xs-1">
													<a data-toggle="collapse"
														class="btn btn-faq btn-faq accordion-state accordion-faq-collapsed accordion-state-expanded"
														data-target="#faq-6"><i class="mcd icon"></i></a>
												</div>
												<div class="col-xs-11 faq-title">배달 시간이 얼마나 걸리나요?</div>
											</div>
										</div>
										<div class="collapse" id="faq-6">
											<div class="row">
												<div class="col-xs-offset-1 col-xs-11">
													<p class="faq-copy">맥딜리버리 서비스의 배달 시간은 주문량 및 매장 상황에 따라
														소요 시간이 다르며, 고객님의 주문 시에 배달 가능한 예상 시간을 미리 안내 드리고 있습니다. 안내 드린
														시간 내 음식을 제공할 수 있도록 노력하겠습니다.</p>
												</div>
											</div>

										</div>
									</div>
									<div class="panel-default faq-row">
										<div class="panel-heading">
											<div class="row">
												<div class="faq-col col-xs-1">
													<a data-toggle="collapse"
														class="btn btn-faq btn-faq accordion-state accordion-faq-collapsed accordion-state-expanded"
														data-target="#faq-7"><i class="mcd icon"></i></a>
												</div>
												<div class="col-xs-11 faq-title">전국적으로 배달이 가능한가요?</div>
											</div>
										</div>
										<div class="collapse" id="faq-7">
											<div class="row">
												<div class="col-xs-offset-1 col-xs-11">
													<p class="faq-copy">지난 2007년 업계 최초로 맥도날드가 배달 서비스를 시작한
														이후, 맥도날드는 더 많은 고객들에게 편리한 배달 서비스를 제공하고자 노력하고 있습니다. 현재 전국 매장
														중 70%이상의 매장에서 배달 서비스를 제공하고 있으며, 맥딜리버리 주소 검색창, 혹은 회원 가입 후
														주소 등록 시 고객님의 주소로 배달 가능한 매장 검색을 통하여 배달가능여부를 확인하실 수 있습니다.
														다만, 호텔, 모텔, PC방, 노래방 등 공공장소의 경우 프론트까지만 맥딜리버리 서비스를 하고 있습니다.</p>
												</div>
											</div>

										</div>
									</div>
									<div class="panel-default faq-row">
										<div class="panel-heading">
											<div class="row">
												<div class="faq-col col-xs-1">
													<a data-toggle="collapse"
														class="btn btn-faq btn-faq accordion-state accordion-faq-collapsed accordion-state-expanded"
														data-target="#faq-8"><i class="mcd icon"></i></a>
												</div>
												<div class="col-xs-11 faq-title">다른 할인 적용 카드가 있나요?</div>
											</div>
										</div>
										<div class="collapse" id="faq-8">
											<div class="row">
												<div class="col-xs-offset-1 col-xs-11">
													<p class="faq-copy">현재, 맥딜리버리 서비스에는 매장과 마찬가지로 별도로 적용되는
														타사 할인 또는 멤버십 카드가 없습니다. 맥도날드는 별도의 할인 혜택 대신, 좋은 품질의 제품을 항상
														합리적인 가격으로 만나실 수 있도록 노력하고 있습니다.</p>
												</div>
											</div>

										</div>
									</div>
									<div class="panel-default faq-row">
										<div class="panel-heading">
											<div class="row">
												<div class="faq-col col-xs-1">
													<a data-toggle="collapse"
														class="btn btn-faq btn-faq accordion-state accordion-faq-collapsed accordion-state-expanded"
														data-target="#faq-9"><i class="mcd icon"></i></a>
												</div>
												<div class="col-xs-11 faq-title">쿠폰 사용을 할 수 있는지요?</div>
											</div>
										</div>
										<div class="collapse" id="faq-9">
											<div class="row">
												<div class="col-xs-offset-1 col-xs-11">
													<p class="faq-copy">일부 쿠폰의 경우 쿠폰에 기재된 내용에 따라 1600 5252
														전화 주문 시 혹은 인터넷 주문을 통해 사용하실 수 있습니다. 쿠폰에 기재된 내용에 따라 사용가능여부를
														확인 부탁 드립니다.</p>
												</div>
											</div>

										</div>
									</div>
									<div class="panel-default faq-row">
										<div class="panel-heading">
											<div class="row">
												<div class="faq-col col-xs-1">
													<a data-toggle="collapse"
														class="btn btn-faq btn-faq accordion-state accordion-faq-collapsed accordion-state-expanded"
														data-target="#faq-10"><i class="mcd icon"></i></a>
												</div>
												<div class="col-xs-11 faq-title">주문을 변경, 취소하고 싶은데
													가능하나요?</div>
											</div>
										</div>
										<div class="collapse" id="faq-10">
											<div class="row">
												<div class="col-xs-offset-1 col-xs-11">
													<p class="faq-copy">주문사항의 변경, 취소를 원하시는 경우 1600 5252 로
														연락 하시어 가능여부를 확인하여 주시기 바랍니다. 제품이 만들어졌거나, 이미 배송중인 경우 변경, 취소가
														제한될 수 있습니다.</p>
												</div>
											</div>

										</div>
									</div>
									<div class="panel-default faq-row">
										<div class="panel-heading">
											<div class="row">
												<div class="faq-col col-xs-1">
													<a data-toggle="collapse"
														class="btn btn-faq btn-faq accordion-state accordion-faq-collapsed accordion-state-expanded"
														data-target="#faq-11"><i class="mcd icon"></i></a>
												</div>
												<div class="col-xs-11 faq-title">대량주문에 대한 제한이 있는지요?</div>
											</div>
										</div>
										<div class="collapse" id="faq-11">
											<div class="row">
												<div class="col-xs-offset-1 col-xs-11">
													<p class="faq-copy">₩89,000원 이상 대량주문의 경우 매장 상황을 파악한 후
														맥딜리버리 콜센터에서 확인전화를 드리며 확인 전화가 완료되어야 주문이 접수됩니다. 원재료 및 제품의
														생산시간을 고려하여 가능 여부를 안내해드립니다.</p>
												</div>
											</div>

										</div>
									</div>
									<div class="panel-default faq-row">
										<div class="panel-heading">
											<div class="row">
												<div class="faq-col col-xs-1">
													<a data-toggle="collapse"
														class="btn btn-faq btn-faq accordion-state accordion-faq-collapsed accordion-state-expanded"
														data-target="#faq-12"><i class="mcd icon"></i></a>
												</div>
												<div class="col-xs-11 faq-title">주문을 미리 예약하고 싶은데요?</div>
											</div>
										</div>
										<div class="collapse" id="faq-12">
											<div class="row">
												<div class="col-xs-offset-1 col-xs-11">
													<p class="faq-copy">주문받기 원하시는 일정의 2시간 전부터 7일 전까지 주문 예약이
														가능합니다.</p>
												</div>
											</div>

										</div>
									</div>
									<div class="panel-default faq-row">
										<div class="panel-heading">
											<div class="row">
												<div class="faq-col col-xs-1">
													<a data-toggle="collapse"
														class="btn btn-faq btn-faq accordion-state accordion-faq-collapsed accordion-state-expanded"
														data-target="#faq-13"><i class="mcd icon"></i></a>
												</div>
												<div class="col-xs-11 faq-title">현금영수증 발행이 가능하나요?</div>
											</div>
										</div>
										<div class="collapse" id="faq-13">
											<div class="row">
												<div class="col-xs-offset-1 col-xs-11">
													<p class="faq-copy">결제 시 현금영수증을 선택하여 발행 여부를 선택하실 수
														있습니다.</p>
												</div>
											</div>

										</div>
									</div>
									<div class="panel-default faq-row">
										<div class="panel-heading">
											<div class="row">
												<div class="faq-col col-xs-1">
													<a data-toggle="collapse"
														class="btn btn-faq btn-faq accordion-state accordion-faq-collapsed accordion-state-expanded"
														data-target="#faq-14"><i class="mcd icon"></i></a>
												</div>
												<div class="col-xs-11 faq-title">화면이 올바로 보이지 않나요?</div>
											</div>
										</div>
										<div class="collapse" id="faq-14">
											<div class="row">
												<div class="col-xs-offset-1 col-xs-11">
													<p class="faq-copy">
														Internet Explorer 8 또는 그 이상의 버전에서는 호환성 보기를 해제 하고 사용해야
														정상적으로 보입니다.<br>호환성 보기 해제 방법: Internet Explorer 메뉴에서
														‘도구’&gt; ‘호환성 보기 설정’ 클릭&gt; 호환성 보기 설정 창에서 모든 체크 박스 해제.
													</p>
												</div>
											</div>

										</div>
									</div>
									<div class="panel-default faq-row">
										<div class="panel-heading">
											<div class="row">
												<div class="faq-col col-xs-1">
													<a data-toggle="collapse"
														class="btn btn-faq btn-faq accordion-state accordion-faq-collapsed accordion-state-expanded"
														data-target="#faq-15"><i class="mcd icon"></i></a>
												</div>
												<div class="col-xs-11 faq-title">배달 시에도 해피밀 토이 선택이
													가능한가요?</div>
											</div>
										</div>
										<div class="collapse" id="faq-15">
											<div class="row">
												<div class="col-xs-offset-1 col-xs-11">
													<p class="faq-copy">배달 주문 시에도 해피밀 토이의 선택은 가능하나, 매장의 상황에
														따라 다른 토이로 대체될 수 있는 점 양해 부탁 드립니다.</p>
												</div>
											</div>

										</div>
									</div>
								</div>
								<div class="faq-help" id="contact-us-info">
									<div class="row">
										<div class="col-xs-1">
											<i class="mcd mcd-question icon"></i>
										</div>
										<div class="col-xs-11 ">
											<div class="faq-help-title">문제가 해결되지 않았나요?</div>
											<div class="faq-help-note notes">맥딜리버리 콜센터로 연락하시기 바랍니다.
												1600 5252</div>
										</div>
									</div>
								</div>
								<section class="how-it-works home-section">
									<h1 class="section-title">맥딜리버리 이용 방법!</h1>
									<p>

										<a href="#signin" data-target="#signin" data-toggle="modal"><img
											class="img-block" alt=""
											src="./img/how_mcdelivery_works_ko.png"></a>
									</p>
								</section>
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
								<li class="menu-item"><a class="menu-item-target"
									href=""
									target="_self">이용약관</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href=""
									target="_self">개인정보 처리방침</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href=""
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
		<div class="modal-backdrop fade in" style="height: 754px;"></div>
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
							value="0bfe025f34e76bae74001feb4c774506">
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

	<!--	[#trackOrder.modal] -->



	<!-- [/#trackOrder.modal] -->

	<!-- [#alertAddBookEmpty.modal] -->
	<div id="alertAddBookEmpty" data-backdrop="static"
		data-keyboard="false"
		class="modal-addressbookempty modal-alert modal fade" role="dialog"
		aria-labelledby="addressbookempty-title" aria-hidden="true"
		tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="addressbookempty-title">고객님의 주소가 등록되어 있지 않습니다.</h1>
				</div>
				<div class="modal-body">
					<div class="alert-content">
						<p>배달 받으실 주소를 먼저 추가해 주시고 주문해 주세요.</p>
						<p>
							<a class="btn btn-default btn-red btn-lg text-ucase"
								href="">주소 추가하기</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [/#alertAddBookEmpty.modal] -->

	<div id="rememberMe" class="modal-rememberme modal fade"
		data-backdrop="static" role="dialog"
		aria-labelledby="rememberme-title" aria-hidden="true" tabindex="-1">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 id="rememberme-title">자동 로그인</h1>
					<button type="button" class="close close-rememberMe"
						data-dismiss="modal" aria-hidden="true">
						<i class="fa mcd mcd-close"></i>
					</button>
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
</body>
</html>