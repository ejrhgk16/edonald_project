<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>주방 공개 행사 잠정 중단 안내의 건</title>
<meta name="description" id="description" contents="메뉴, 레스토랑, 프로모션 등 안내" />
<meta name="keywords"
	contents="McDonald's, McDrive, McDelivery, McMorning, Happy Meal, Signature Burger, McAllday, McCafe" />
<link rel="shortcut icon" type="image/x-icon"
	href="../images/favicon.ico">
<link rel="stylesheet" href="../css/common.css?t=2022012502">
<link rel="alternate" href="https://www.mcdonalds.co.kr">
</head>
<body>
	<div class="wrapper ">
		<header class="header">
			<!-- 상단 고정 fixed 클래스 추가, 메뉴의 depth1 오버시 open 클래스 추가 -->





			<div class="headArea">
				<strong class="hLogo"><a href="/" class="logo"
					title="메인으로 이동"><img src="../images/common/logo.png"
						alt="맥도날드"></a></strong>
				<nav class="hMenu">
					<div class="menu">
						<ul class="depth1">
							<li>
								<!-- li 오버시 on 클래스 추가 --> <a href="javascript:gotoMenu(1);"
								class="dth1 ">Menu</a>
							<!-- 현재페이지 메뉴에 current 클래스 추가 -->
								<ul class="depth2">
									<li><a href="javascript:gotoMenu(1);" class="dth2">버거</a></li>
									<li><a href="javascript:gotoMenu(14);" role="button">맥런치</a></li>
									<li><a href="javascript:gotoMenu(3);" class="dth2">맥모닝</a></li>
									<li><a href="javascript:gotoMenu(15);" role="button">해피
											스낵</a></li>
									<li><a href="javascript:gotoMenu(7);" class="dth2">사이드
											&amp; 디저트</a></li>
									<li><a href="javascript:gotoMenu(9);" class="dth2">맥카페
											&amp; 음료</a></li>
									<li><a href="javascript:gotoMenu(5);" class="dth2">해피밀</a></li>
									<!-- <li><a href="javascript:gotoMenu(11);" class="dth2">365일 즐거운 혜택</a></li> -->
								</ul>
							</li>
							<li><a href="/kor/store/main.do" class="dth1 ">Store</a>
								<ul class="depth2">
									<li><a href="/kor/store/main.do" class="dth2">매장찾기</a></li>
									<li><a href="/kor/store/mcdelivery.do" class="dth2">맥딜리버리</a></li>
									<li><a href="/kor/store/mcdrive.do" class="dth2">맥드라이브</a></li>
									<li><a href="/kor/store/rental.do" class="dth2">임차문의</a></li>
								</ul></li>
							<li><a href="/kor/promotion/list.do" class="dth1  current">What’s
									New</a>
								<ul class="depth2">
									<li><a href="/kor/promotion/list.do" class="dth2">프로모션</a></li>
									<li><a href="/kor/news/list.do" class="dth2">새로운 소식</a></li>
									<!--  li><a href="/kor/kitchen.do" class="dth2">주방공개의 날</a></li -->
									<li><a href="/kor/happymeal/list.do" class="dth2">이달의
											해피밀</a></li>
								</ul></li>
							<li><a href="/kor/story/main.do" class="dth1  ">Story</a>
								<ul class="depth2">
									<li><a href="/kor/story/intro/brandintro.do" class="dth2">브랜드
											소개</a></li>
									<li><a href="/kor/story/society/list.do" class="dth2">사회적
											책임과 지원</a></li>
									<li><a href="/kor/story/competition/farmToRestaurant.do"
										class="dth2">맥도날드 품질 이야기</a></li>
									<li><a href="/kor/story/people/crew.do" class="dth2">맥도날드
											사람들</a></li>
								</ul></li>
						</ul>
					</div>
					<!-- //menu -->
					<form id="commonSearchForm" method="post">
						<div class="util">
							<a href="/kor/store/rental.do" class="renter" title="임차문의로 이동">임차문의</a>
							<a href="/kor/story/people/recruit.do" class="recruit"
								title="인재채용으로 이동">RECRUIT</a> <a href="/eng/main.do"
								class="lang" title="영문사이트로 이동">ENG</a>
							<div class="topSearch">
								<!-- 검색 활성화인 경우 open 클래스 추가 -->
								<button type="button" class="srch">검색 열기</button>
								<fieldset class="srchField">
									<legend>통합검색</legend>
									<div class="form">
										<input type="text" name="commonSearchWord"
											id="commonSearchWord" placeholder="매장 또는 메뉴정보를 검색하실 수 있습니다."
											title="검색어 입력"
											onkeypress="if( event.keyCode==13 ){gotoCommonSearch();}">
										<button type="button" class="btnMC btnM"
											onclick="gotoCommonSearch()">검색하기</button>
									</div>
									<button type="button" class="close">검색 닫기</button>
								</fieldset>
							</div>
						</div>
					</form>
					<!-- //util -->
				</nav>
			</div>
			<form id="gotoMenuForm" method="post">
				<input type="hidden" name="sub_category_seq"
					id="gotoform_sub_category_seq">
			</form>
			<script>
				function gotoMenu(val) {
					$("#gotoform_sub_category_seq").val(val);
					$("#gotoMenuForm").attr("action", "/kor/menu/list.do");
					$("#gotoMenuForm").submit();
				}
				function gotoCommonSearch() {
					if ($.trim($("#commonSearchWord").val()) == "") {
						alert("검색어을 입력해 주세요");
						$("#commonSearchWord").focus();
					} else {
						$("#commonSearchForm").attr("action", "/kor/search.do");
						$("#commonSearchForm").submit();
					}
				}
			</script>
		</header>
		<!-- //header -->
		<div id="container">
			<div class="content">








				<div class="content">
					<div class="visualArea bgWhats01">
						<div class="inner">
							<h1 class="titDep1">새로운 소식</h1>
							<ul class="navPath">
								<li><a href="/kor/main.do">Home</a></li>
								<li><a href="/kor/promotion/list.do">What's New</a></li>
								<li><a href="/kor/news/list.do">새로운 소식</a></li>
							</ul>
						</div>
					</div>
					<!-- //visualArea -->
					<div class="contArea">
						<div class="inner">
							<div class="bbsDetail">
								<div class="bbsTit">
									<h2 id="news_title">주방 공개 행사 잠정 중단 안내의 건</h2>
									<span class="date"> <em><b class="hide">등록일 :</b>2020.02.27</em>
										<em><b class="hide">조회수 :</b> 5451</em>
									</span>
								</div>
								<article class="bbsCon">
									<div align="" style="">
										<div align="" style="">
											<div align="" style="">
												<div align="" style="">
													<p>
														<img
															src="../upload/editor/20200227151443c34e6d0a-f3c3-4794-8336-681581d69c78.png"
															width="50%"
															alt="고객 여러분께 안내 말씀드립니다. 현재 신종 코로나바이러스 이슈로 인해 모든 주방 공개 행사 및 행사 신청을 
잠정 중단했습니다. 안전을 위한 불가피한 조치로 이해 부탁드리며, 이후 행사 일정이 정해지면 다시 안내드릴 수 있도록 하겠습니다 . 다시 한번 고객님의 너그러운 이해를 부탁드립니다. 감사합니다">
														<br style="clear: both;">&nbsp;
													</p>
												</div>
												<p>
													<br>
												</p>
											</div>
											<p>
												<br>
											</p>
										</div>
										<p>
											<br>
										</p>
									</div>
									<p>
										<br>
									</p>
								</article>
								<div class="btnArea">

									<a href="/kor/news/list.do" role="button" class="btnMC btnM"><span>목록보기</span></a>

									<button type="button" onclick="javascript:goDetail(518,2 );"
										class="next">다음 글 보기</button>

								</div>
							</div>
						</div>
					</div>
					<!-- //contArea -->
				</div>
				<div class="aside">
					<a href="https://www.mcdelivery.co.kr/kr/" class="goDelivery"
						target="_blank" title="새창 열림">Mcdelivery</a>
				</div>
				<form id="searchForm" method="post">
					<input type="hidden" name="seq" id="seq"> <input
						type="hidden" name="rnum" id="rnum">
				</form>
				<script>
					function goDetail(seq, rnum) {

						$("#seq").val(seq);
						$("#rnum").val(rnum);

						$("#searchForm").attr("action", "/kor/news/detail.do");
						$("#searchForm").submit();
					}

					$(document).ready(function() {
						var news_title = $('#news_title').text();
						$(document).find("title").text(news_title);
					});
				</script>
			</div>
			<div class="aside">
				<a href="/kor/story/competition/farmToRestaurant.do"
					class="go_story" title="품질 이야기로 이동">품질 이야기</a> <a
					href="https://www.mcdelivery.co.kr/kr/" class="goDelivery"
					target="_blank" title="새창 열림">Mcdelivery</a>
			</div>
			<button type="button" class="btnTop">맨 위로 가기</button>
		</div>
		<!-- //container -->
		<footer class="footer">

			<div class="footArea">
				<ul class="fUtil">
					<li class="privacy"><a href="/kor/etc/private.do">개인정보
							처리방침</a></li>
					<li><a href="/kor/etc/location.do">위치정보 이용약관</a></li>
					<!-- 추가 -->
					<li><a href="/kor/etc/sitemap.do">사이트맵</a></li>
					<li><a href="/kor/store/rental.do">임차문의</a></li>
					<li><a href="https://voc.mcd.co.kr/MC/HOM/faqMain.jsp"
						target="_blank" title="새창 열림">고객문의</a></li>
					<!-- <li><a href="javascript:systemCheck('https://voc.mcd.co.kr/MC/HOM/faqMain.jsp')" title="새창 열림">고객문의</a></li> -->
					<li><a href="/kor/story/people/recruit.do">인재채용</a></li>
				</ul>
				<ul class="fSns">
					<li><a href="https://www.facebook.com/McDonaldsKorea"
						class="fb" target="_blank" title="새창 열림">맥도날드 페이스북</a></li>
					<li><a href="https://www.instagram.com/mcdonalds_kr/"
						class="ig" target="_blank" title="새창 열림">맥도날드 인스타그램</a></li>
					<li><a href="https://www.youtube.com/user/McDonaldsKor"
						class="yt" target="_blank" title="새창 열림">맥도날드 유투브</a></li>
					<li><a href="https://story.kakao.com/ch/mcdonalds/feed"
						class="ks" target="_blank" title="새창 열림">맥도날드 카카오스토리</a></li>
					<li class="web_accessibility"><a
						href="http://www.webwatch.or.kr/Situation/WA_Situation.html?MenuCD=110"
						class="web_accessibility" title="국가 공인 인증기관 : 웹와치" target="_blank">
							<img src="../images/common/web_accessibility.svg"
							alt="과학기술정보통신부 WEB ACCESSIBILITY 마크(웹 접근성 품질인증 마크)">
					</a></li>
				</ul>
				<div class="fInfo">
					<ul class="info">
						<li>한국맥도날드(유)</li>
						<li>대표이사: 앤토니 마티네즈</li>
						<li>사업자등록번호: 101-81-26409</li>
						<li>전화주문: 1600-5252</li>
					</ul>
					<p class="copy">COPYRIGHT © 2019 ALL RIGHTS RESERVED BY
						McDonald's.</p>
				</div>
			</div>
		</footer>
		<!-- //footer -->
	</div>
</body>
</html>