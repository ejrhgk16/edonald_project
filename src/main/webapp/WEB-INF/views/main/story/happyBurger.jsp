<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
 <link rel="stylesheet" href="/resources/css/common.css">
 <script type="text/javascript" src="/resources/js/commons.js"></script>
</head>
<body>
<div class="wrapper ">
		<header class="header fixed" style="margin-top: 0px;"><!-- 상단 고정 fixed 클래스 추가, 메뉴의 depth1 오버시 open 클래스 추가 -->
			
    



	<div class="headArea">
				<strong class="hLogo"><a href="/" class="logo" title="메인으로 이동"><img src="/kor/images/common/logo.png" alt="맥도날드"></a></strong>
				<nav class="hMenu">
					<div class="menu">
						<ul class="depth1">
							<li><!-- li 오버시 on 클래스 추가 -->
								<a href="javascript:gotoMenu(1);" class="dth1 ">Menu</a><!-- 현재페이지 메뉴에 current 클래스 추가 -->
								<ul class="depth2">
									<li><a href="javascript:gotoMenu(1);" class="dth2">버거</a></li>
									<li><a href="javascript:gotoMenu(14);" role="button">맥런치</a></li>
									<li><a href="javascript:gotoMenu(3);" class="dth2">맥모닝</a></li>
									<li><a href="javascript:gotoMenu(15);" role="button">해피 스낵</a></li>
									<li><a href="javascript:gotoMenu(7);" class="dth2">사이드 &amp; 디저트</a></li>
									<li><a href="javascript:gotoMenu(9);" class="dth2">맥카페 &amp; 음료</a></li>
									<li><a href="javascript:gotoMenu(5);" class="dth2">해피밀</a></li>
									<!-- <li><a href="javascript:gotoMenu(11);" class="dth2">365일 즐거운 혜택</a></li> -->
								</ul>
							</li>
							<li>
								<a href="/kor/store/main.do" class="dth1 ">Store</a>
								<ul class="depth2">
									<li><a href="/kor/store/main.do" class="dth2">매장찾기</a></li>
									<li><a href="/kor/store/mcdelivery.do" class="dth2">맥딜리버리</a></li>
									<li><a href="/kor/store/mcdrive.do" class="dth2">맥드라이브</a></li>
									<li><a href="/kor/store/rental.do" class="dth2">임차문의</a></li>
								</ul>
							</li>
							<li>
								<a href="/kor/promotion/list.do" class="dth1  ">What’s New</a>
								<ul class="depth2">
									<li><a href="/kor/promotion/list.do" class="dth2">프로모션</a></li>
									<li><a href="/kor/news/list.do" class="dth2">새로운 소식</a></li>
									<!--  li><a href="/kor/kitchen.do" class="dth2">주방공개의 날</a></li -->
								    <li><a href="/kor/happymeal/list.do" class="dth2">이달의 해피밀</a></li> 
								</ul>
							</li>
							<li>
								<a href="/kor/story/main.do" class="dth1  current">Story</a>
								<ul class="depth2">
									<li><a href="/kor/story/intro/brandintro.do" class="dth2">브랜드 소개</a></li>
									<li><a href="/kor/story/society/list.do" class="dth2">사회적 책임과 지원</a></li>
									<li><a href="/kor/story/competition/farmToRestaurant.do" class="dth2">맥도날드 품질 이야기</a></li>
									<li><a href="/kor/story/people/crew.do" class="dth2">맥도날드 사람들</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- //menu -->
					<form id="commonSearchForm" method="post">
					<div class="util">
						<a href="/kor/store/rental.do" class="renter" title="임차문의로 이동">임차문의</a>					
						<a href="/kor/story/people/recruit.do" class="recruit" title="인재채용으로 이동">RECRUIT</a>
						<a href="/eng/main.do" class="lang" title="영문사이트로 이동">ENG</a>
						<div class="topSearch"><!-- 검색 활성화인 경우 open 클래스 추가 -->
							<button type="button" class="srch">검색 열기</button>
							<fieldset class="srchField">
								<legend>통합검색</legend>
								<div class="form">
									<input type="text" name="commonSearchWord" id="commonSearchWord" placeholder="매장 또는 메뉴정보를 검색하실 수 있습니다." title="검색어 입력" onkeypress="if( event.keyCode==13 ){gotoCommonSearch();}">
									<button type="button" class="btnMC btnM" onclick="gotoCommonSearch()">검색하기</button>
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
		<input type="hidden" name="sub_category_seq" id="gotoform_sub_category_seq">
		</form>
	<script>
			function gotoMenu(val){
				$("#gotoform_sub_category_seq").val(val);
				$("#gotoMenuForm").attr("action","/kor/menu/list.do");
				$("#gotoMenuForm").submit();
			}
			function gotoCommonSearch(){
				if($.trim($("#commonSearchWord").val())==""){
					alert("검색어을 입력해 주세요");
					$("#commonSearchWord").focus();
				}else{
					$("#commonSearchForm").attr("action","/kor/search.do");
					$("#commonSearchForm").submit();
				}
			}
	</script>
		</header>
		<!-- //header -->
		<div id="container">
			<div class="content">
				
<div class="visualArea bgStory02" data-title="맥도날드 사회적 책임" data-desc="행복의 버거 캠페인">
					<div class="inner">
						<h1 class="titDep1">맥도날드 사회적 책임</h1>
						<p class="subCopy">맥도날드는 건전한 기업시민으로서의 책임을 다하고자 노력합니다.<br>지역 사회의 발전과 사람들의 행복에 기여하고, 지금보다 더 나은 세상을 만들기 위해 오늘도 나아갑니다.</p>
						<ul class="navPath">
							<li><a href="/kor/main.do">Home</a></li>
							<li><a href="/story/main.do">Story</a></li>
							<li><a href="/story/society/list.do">맥도날드 사회적 책임</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<ul class="tabType01">
							<li><a href="/story/society/kidsSoccer.do" role="button">로날드 맥도날드 어린이 축구교실</a></li>
							<li><a href="/story/society/happyBurger.do" role="button" aria-selected="true">행복의 버거 캠페인</a></li>
							<li><a href="/story/society/safetyGuard.do" role="button">맥도날드 안전지킴 캠페인</a></li>
							<li><a href="/story/society/mcDonaldHouse.do" role="button">재단법인 로날드맥도날드하우스</a></li>
						</ul>
						
						<div class="socialTab">
							<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_social02_02_01.jpg" alt="행복의 버거 캠페인 대표이미지"></div>
							<h2 class="titDep2">‘행복의 버거’ 캠페인은 무엇인가요?</h2>
							<p role="text" class="txtInfo02">‘행복의 버거’는 나눔과 사랑의 손길이 필요한<br>우리 주변 이웃들에게 햄버거를 전달하는 캠페인입니다.</p>
														
							<div class="socialList">
								<ul>
									<li>
										<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_social02_02_02.jpg" alt="강원산불피해돕기 이미지"></span>
										<strong>강원 산불 피해 이재민 및 소방관 물품 지원</strong>
										<p>2019년 4월, 강원지역에서 일어난 산불로 피해를 입은 이재민과 피해 복구에 나선<br>강원지역 4개 소방서 소방관들에게 버거 및 음료 2,000세트를 제공했습니다.<br>뿐만 아니라, 맥도날드는 2018년 5월 소방청과 ‘행복의 버거 캠페인’ 협약을 체결하며<br>5,000세트에 달하는 행복의 버거를 순직 소방관의 유가족 및 공상 소방관과 그 가족들에게<br>무상으로 제공해오고 있습니다.</p>
									</li>
									<li>
										<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_social02_02_03.jpg" alt="영진종합사회복지관
버거전달 이미지"></span>
										<strong>부산 영진종합사회복지관에 행복의 버거 증정</strong>
										<p>맥도날드는 5월 8일 어버이날을 맞아 영진종합사회복지관에 어르신들을 위한<br>행복의 버거 200세트를 제공했습니다. 맥도날드는 지난 8년간 지역 내 봉사활동에<br>앞장서온 부산 지역 직원들의 선행에 동참하는 의미로 이날 행사를 준비했습니다.</p>
									</li>
									<li>
										<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_social02_02_04.jpg" alt="논산훈련소 버거전달 이미지"></span>
										<strong>논산 육군훈련소에 행복의 버거 세트 제공</strong>
										<p>맥도날드는 2018년 12월 28일 한파 속에서 국방의 의무를 다하는 육군 훈련병들에게<br>빅맥 1,000개와 애플파이 12,000개를 무상 제공했습니다.이처럼 맥도날드는 지난 7년간<br>지역아동센터 어린이, 어린이 병원 환우, 장애 학생과 학부모, 환경 미화원, 육군 훈련생,<br>순직 소방관 유가족 등 다양한 이웃들을 위해 20만개가 넘는 햄버거를 전달하며 나눔의<br>의미를 실천하고 있습니다.</p>
									</li>
								</ul>
							</div>
							<div class="btnArea">
								<a href="/story/society/list.do" role="button" class="btnList"><span>목록보기</span></a>
							</div>
						</div>
						<!-- //socialTab -->
					</div>
				</div>
				<!-- //contArea -->

			</div>
			<div class="aside">
				<a href="/kor/story/competition/farmToRestaurant.do" class="go_story" title="품질 이야기로 이동">품질 이야기</a>
				<a href="https://www.mcdelivery.co.kr/kr/" class="goDelivery" target="_blank" title="새창 열림">Mcdelivery</a>
			</div>
			<button type="button" class="btnTop">맨 위로 가기</button>
		</div>
		<!-- //container -->
		<footer class="footer">
			
			<div class="footArea">
				<ul class="fUtil">
					<li class="privacy"><a href="/kor/etc/private.do">개인정보 처리방침</a></li>
					<li><a href="/kor/etc/location.do">위치정보 이용약관</a></li><!-- 추가 -->
					<li><a href="/kor/etc/sitemap.do">사이트맵</a></li>
					<li><a href="/kor/store/rental.do">임차문의</a></li>
					<li><a href="https://voc.mcd.co.kr/MC/HOM/faqMain.jsp" target="_blank" title="새창 열림">고객문의</a></li>
					<!-- <li><a href="javascript:systemCheck('https://voc.mcd.co.kr/MC/HOM/faqMain.jsp')" title="새창 열림">고객문의</a></li> -->					
				    <li><a href="/kor/story/people/recruit.do">인재채용</a></li> 
				</ul>
				<ul class="fSns">
					<li><a href="https://www.facebook.com/McDonaldsKorea" class="fb" target="_blank" title="새창 열림">맥도날드 페이스북</a></li>
					<li><a href="https://www.instagram.com/mcdonalds_kr/" class="ig" target="_blank" title="새창 열림">맥도날드 인스타그램</a></li>
					<li><a href="https://www.youtube.com/user/McDonaldsKor" class="yt" target="_blank" title="새창 열림">맥도날드 유투브</a></li>
					<li><a href="https://story.kakao.com/ch/mcdonalds/feed" class="ks" target="_blank" title="새창 열림">맥도날드 카카오스토리</a></li>
					<li class="web_accessibility">
                       <a href="http://www.webwatch.or.kr/Situation/WA_Situation.html?MenuCD=110" class="web_accessibility" title="국가 공인 인증기관 : 웹와치" target="_blank">
                        <img src="../kor/images/common/web_accessibility.svg" alt="과학기술정보통신부 WEB ACCESSIBILITY 마크(웹 접근성 품질인증 마크)">
                    </a>
                    </li> 
				</ul>
				<div class="fInfo">
					<ul class="info">
						<li>한국맥도날드(유)</li> 
						<li>대표이사: 앤토니 마티네즈</li>
						<li>사업자등록번호: 101-81-26409</li>
						<li>전화주문: 1600-5252</li>
					</ul>
					<p class="copy">COPYRIGHT © 2019 ALL RIGHTS RESERVED BY McDonald's.</p>
				</div>
			</div>	
		</footer>
		<!-- //footer -->
	</div>
</body>
</html>