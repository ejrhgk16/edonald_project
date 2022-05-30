<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!-- Spring Security Login Session 처리 -->
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이도날드</title>
<link rel="icon" href="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/favicon.ico">
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="/resources/js/main.js"></script>
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

							<li class="menu-item menu-item-support dropdown selected"><a
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

				<div class="row row-narrow">
					<div class="page-sidebar">
						<div class="sidebar-menu">
							<h2 class="menu-category">기타정보</h2>
							<ul class="menu">


								<li class="menu-item"><a class="menu-item-target" id="이용약관"
									href="/ed/ect/useInfo"
									target="_self">이용약관</a></li>



								<li class="menu-item"><a class="menu-item-target"
									id="개인정보 처리방침"
									href="/ed/ect/userInfo"
									target="_self">개인정보 처리방침</a></li>



								<li class="menu-item selected"><a class="menu-item-target"
									id="자주 묻는 질문"
									href="/ed/ect/question"
									target="_self">자주 묻는 질문</a></li>



							

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
														data-target="#faq-1" aria-expanded="false"></a>
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
														data-target="#faq-2"></a>
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
														data-target="#faq-3"></a>
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
														data-target="#faq-4"></a>
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
														data-target="#faq-5"></a>
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
														data-target="#faq-6"></a>
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
														data-target="#faq-7"></a>
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
														data-target="#faq-8"></a>
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
														data-target="#faq-9"></a>
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
														data-target="#faq-10"></a>
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
														data-target="#faq-11"></a>
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
														data-target="#faq-12"></a>
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
														data-target="#faq-13"></a>
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
														data-target="#faq-14"></a>
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
														data-target="#faq-15"></a>
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

										<a href="/ed/deliverHome" data-target="#signin" data-toggle="modal"><img
											class="img-block" alt=""
											src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/how_mcdelivery_works_ko.png"></a>
									</p>
								</section>
							</div>
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