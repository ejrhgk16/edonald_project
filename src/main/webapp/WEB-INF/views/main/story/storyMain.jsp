<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="css/common.css">
</head>
<body>
    <div class="wrapper subMain">
		<header class="header fixed" style="margin-top: 0px;"><!-- 상단 고정 fixed 클래스 추가, 메뉴의 depth1 오버시 open 클래스 추가 -->
			
    



	<div class="headArea">
				<strong class="hLogo"><a href="/" class="logo" title="메인으로 이동"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/logo.png" alt="맥도날드"></a></strong>
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
				
	            <div class="visualArea bgStory" data-title="Story" data-desc="스토리">
					<div class="inner">
						<h1 class="titDep1">Story</h1>						
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<h2 class="titDep2">세계 1위의 푸드서비스 기업, 맥도날드</h2>
						<p role="text" class="txtInfo">전 세계 119개국 3만 4천여 개의 매장에서, 약 170만 명의 직원들이 근무하며<br>매일 6,900만 명의 고객들에게 제품과 서비스를 제공하고 있는 맥도날드는<br>전세계인들이 사랑하는 퀵 서비스 레스토랑(QSR, Quick Service Restaurant)이자<br>세계 1위의 푸드서비스 기업으로, 고객에게 더 나은 경험을 제공함으로써<br>‘고객이 가장 좋아하는 장소이자 음식을 즐기는 최고의 방법(Our Customer’s<br>Favorite Place and Way to Eat)’이 되기 위해 노력하고 있습니다.</p>
						<ul class="submainCon">
							<li class="subMenu">
								<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_submenu01.jpg" alt="브랜드소개 이미지"></div>
								<div class="txtCon">
									<h3 class="tit">01. 브랜드소개</h3>
									<strong class="subTit">1955년부터 지금까지 이어져온<br>맥도날드의 발자취</strong>
									<p>1955년 작은 레스토랑에서부터 지금에 이르기까지<br>고객이 가장 좋아하는 장소이자, 음식을 즐기는<br>최고의 방법이 되기 위해 맥도날드는 오늘도 노력합니다.</p>
									<a href="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/brandintro.do" class="btnMC btnM" title="브랜드소개 페이지 이동">자세히 보기</a>
								</div>								
							</li>
							<li class="subMenu">								
								<div class="txtCon">
									<h3 class="tit">02.<br>맥도날드의<br>사회적 책임</h3>
									<strong class="subTit">더 나은 세상을 위한 맥도날드의 노력</strong>
									<p>맥도날드는 건전한 기업시민으로서의 책임을 다하고자 노력합니다.<br>지역 사회의 발전과 사람들의 행복에 기여하고<br>지금보다 더 나은 세상을 만들기 위해 오늘도 나아갑니다.</p>
									<a href="kor/story/society/list.do" class="btnMC btnM" title="맥도날드의 사회적 책임과 지원 페이지 이동">자세히 보기</a>									
								</div>
								<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_submenu02.jpg" alt="맥도날드의 사회적 책임 이미지"></div>								
							</li>
							<li class="subMenu">
								<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_submenu03.jpg" alt="맥도날드 경쟁력 이미지"></div>
								<div class="txtCon">
									<h3 class="tit">03. 맥도날드 경쟁력</h3>
									<strong class="subTit">식재료부터 레스토랑까지<br>엄격한 기준을 고집합니다.</strong>
									<p>맥도날드는 어떤 곳 보다 햄버거 비즈니스를 진지하게 생각합니다.<br>엄격한 품질 관리 시스템을 통해 고품질의 음식을 제공하며,<br>조리 과정에서 고객이 궁금한 모든 것을 알려드립니다.</p><!-- 0702 문구수정 -->
									<a href="/kor/story/competition/farmToRestaurant.do" class="btnMC btnM">자세히 보기</a>
								</div>								
							</li>
							<li class="subMenu">								
								<div class="txtCon">
									<h3 class="tit">04. 맥도날드 사람들</h3>
									<strong class="subTit">최초의 서비스에 담긴 자부심으로<br>맥도날드의 새로운 변화를 이끌어갑니다.</strong>
									<p>끊임없는 변화와 도전을 통해 성장해온 맥도날드.<br>이 변화의 중심에는 맥도날드와 함께 변화하며 성장하는 <br>'맥도날드 사람들'이 있습니다.</p><!-- 0702 문구수정 -->
									<a href="/kor/story/people/crew.do" class="btnMC btnM" title="맥도날드 사람들 페이지 이동">자세히 보기</a>
								</div>
								<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_submenu04.jpg" alt="맥도날드 사람들 이미지"></div>						
							</li>
						</ul>
					</div>
				</div>

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
                        <img src="/kor/images/common/web_accessibility.svg" alt="과학기술정보통신부 WEB ACCESSIBILITY 마크(웹 접근성 품질인증 마크)">
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