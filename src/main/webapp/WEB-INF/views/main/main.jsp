<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<link rel="stylesheet" href="./kor/css/common.css">
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="kor/js/commons.js"></script>

</head>
<body>	
<script type="text/javascript">
$(document).ready(function(){
	makeClone();

});

function makeClone() {
	let slides = document.querySelector('.swiper-wrapper');
	let slideImg = document.querySelectorAll('.swiper-slide');

	let cloneSlide_first = slideImg[0].cloneNode(true);
	let cloneSlide_last = slides.lastElementChild.cloneNode(true);
	slides.append(cloneSlide_first);
	slides.insertBefore(cloneSlide_last, slides.firstElementChild);
}
</script>
<!-- Google Tag Manager (noscript) -->
<noscript>
   <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W5TBQX4" height="0" width="0" style="display:none;visibility:hidden"></iframe>
</noscript> 
<!-- End Google Tag Manager (noscript) -->

	<div class="skipMenu"><a href="#container">본문 바로가기</a></div>
	<div class="wrapper ">
		<header class="header"><!-- 상단 고정 fixed 클래스 추가, 메뉴의 depth1 오버시 open 클래스 추가 -->
			
    



	<div class="headArea">
				<strong class="hLogo"><a href="/" class="logo" title="메인으로 이동"><img src="./kor/images/common/logo.png" alt="맥도날드"></a></strong>
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
								<a href="./kor/store/main.do" class="dth1 ">Store</a>
								<ul class="depth2">
									<li><a href="./kor/store/main.do" class="dth2">매장찾기</a></li>
									<li><a href="./kor/store/mcdelivery.do" class="dth2">맥딜리버리</a></li>
									<li><a href="./kor/store/mcdrive.do" class="dth2">맥드라이브</a></li>
									<li><a href="./kor/store/rental.do" class="dth2">임차문의</a></li>
								</ul>
							</li>
							<li>
								<a href="./kor/promotion/list.do" class="dth1  ">What’s New</a>
								<ul class="depth2">
									<li><a href="./kor/promotion/list.do" class="dth2">프로모션</a></li>
									<li><a href="./kor/news/list.do" class="dth2">새로운 소식</a></li>
									<!--  li><a href="./kor/kitchen.do" class="dth2">주방공개의 날</a></li -->
								    <li><a href="./kor/happymeal/list.do" class="dth2">이달의 해피밀</a></li> 
								</ul>
							</li>
							<li>
								<a href="./kor/story/main.do" class="dth1  ">Story</a>
								<ul class="depth2">
									<li><a href="./kor/story/intro/brandintro.do" class="dth2">브랜드 소개</a></li>
									<li><a href="./kor/story/society/list.do" class="dth2">사회적 책임과 지원</a></li>
									<li><a href="./kor/story/competition/farmToRestaurant.do" class="dth2">맥도날드 품질 이야기</a></li>
									<li><a href="./kor/story/people/crew.do" class="dth2">맥도날드 사람들</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- //menu -->
					<form id="commonSearchForm" method="post">
					<div class="util">
						<a href="./kor/store/rental.do" class="renter" title="임차문의로 이동">임차문의</a>					
						<a href="./kor/story/people/recruit.do" class="recruit" title="인재채용으로 이동">RECRUIT</a>
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
				$("#gotoMenuForm").attr("action","./kor/menu/list.do");
				$("#gotoMenuForm").submit();
			}
			function gotoCommonSearch(){
				if($.trim($("#commonSearchWord").val())==""){
					alert("검색어을 입력해 주세요");
					$("#commonSearchWord").focus();
				}else{
					$("#commonSearchForm").attr("action","./kor/search.do");
					$("#commonSearchForm").submit();
				}
			}
	</script>
		</header>
		<!-- //header -->
		<div id="container">
			<div class="content">
				





    



		<h1 class="hide" data-desc="메인">Main</h1>
		<!-- 
			basicSwiper > swiper ul li li의 업데이트 업데이트 이후 아래 함수 실행
			commonJs.swiperSetup( target ) 함수 실행 타겟은 $('#test1') 아이디나 클래스를 부여해 호출 클래스의 경우 중복인 경우는 순서에 맞춰서 호출해야 하기 때문에
			id를 부여하거나 commonJs.swiperSetup( $('.class:eq(0)') ) , commonJs.swiperSetup( $('.class:eq(1)') )  개별 호출이 필요
		 -->
			
		<div class="mainEvent basicSwiper">
			<button type="button" class="ctrl prev" tabindex="0" role="button" aria-label="Previous slide" onclick="prevSlide()">이전</button>
			<div class="swiper swiper-container swiper-container-horizontal">
			<ul class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-3200px, 0px, 0px);">
				<li class="swiper-slide swiper-slide-duplicate swiper-slide-prev" data-swiper-slide-index="8" style="width: 1600px; visibility: hidden;"><a href="/kor/promotion/detail.do?page=1&amp;seq=320&amp;utm_medium=Corp_site&amp;utm_source=Main_banner&amp;utm_campaign=0408_Strawberry">
					<img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/1641377444960.png" alt="신선한 우유와 딸기의 진한 만남_1등급 원유 사용 베리 스트로베리 맥플러리, 스트로베리콘"></a></li>
				<li class="swiper-slide swiper-slide-active" data-swiper-slide-index="0" style="width: 1600px; visibility: visible;"><a href="/kor/promotion/detail.do?page=1&amp;seq=356&amp;utm_medium=Corp_site&amp;utm_source=Main_banner&amp;utm_campaign=0310_MyMcD">
					<img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/1646731135357.png" alt="구매 금액 100원 당 5포인트 적립되는 마이 맥도날드 리워드 출시! 첫 적립 시 맥너겟 무료 (맥너겟으로 교환 가능한 1,500 포인트로 증정드립니다.)"></a></li>
				<li class="swiper-slide swiper-slide-next" data-swiper-slide-index="1" style="width: 1600px; visibility: hidden;"><a href="/kor/promotion/detail.do?page=1&amp;seq=358&amp;utm_medium=Corp_site&amp;utm_source=Main_banner&amp;utm_campaign=0331_Shanghai%20LE"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/1648632144508.png" alt="한국인이 사랑하는 이탈리아의 맛 신제품 아라비아따 리코타 치킨 버거 아라비아따 소스로 매콤하게 리코타 치즈로 부드럽게"></a></li>
				<li class="video swiper-slide" data-swiper-slide-index="2" style="width: 1600px; visibility: hidden;">
			   		<span>
						<div class="video-box">
							<video muted="" playsinline="" autoplay="">
								<source src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/0117_McD_BB_Double_BigMac_30_1920X540_2.mp4" type="video/mp4">
							</video>
							<button type="button" class="sound off">Sound on</button>
						</div>
					</span>
				</li>
				 	
				<li class="swiper-slide" data-swiper-slide-index="3" style="width: 1600px; visibility: hidden;"><a href="/kor/promotion/detail.do?page=1&amp;seq=350&amp;utm_medium=Corp_site&amp;utm_source=Main_banner&amp;utm_campaign=0204_Spicy%20Mcnugget"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/1643865649530.jpg" alt="바삭함 속에 기분 좋은 매콤함 신제품 스파이시맥너겟 &amp; 맥너겟"></a></li>
				<li class="swiper-slide" data-swiper-slide-index="4" style="width: 1600px; visibility: hidden;"><a href="/kor/promotion/detail.do?page=1&amp;seq=348&amp;utm_medium=Corp_site&amp;utm_source=Main_banner&amp;utm_campaign=0113_BAQ1"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/1645007676428.png" alt="모두가 해피한 인기 스낵 할인! 신메뉴 소시지 스낵랩 2400원, 필레 오 피쉬 단품 할인 전 3500원 할인 후 2500원, 맥치킨 단품 할인 전 3300원 할인 후 2900, 골든 모짜렐라 치즈스틱 2조각 할인 전 2300원 할인 후 1500원 , 바닐라 쉐이크 미디엄 할인 전 2500원 할인 후 2000원, 오레오 맥플러리 할인 전 2500원 할인 후 1900원, 아이스/핫 아메리카노 라지 할인 전 각 2900원 할인 후 각 2400원"></a></li>
				<li class="swiper-slide" data-swiper-slide-index="5" style="width: 1600px; visibility: hidden;"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/1633532684256.png" alt="점심을 제대로 굿런치 맥런치_맥치킨 모짜렐라, 베이컨 토마토 디럭스, 더블 불고기 버거, 빅맥, 맥스파이시 상하이 버거, 1955 버거, 더블 필레 오 피쉬, 쿼터파운더 치즈"></li>
				<li class="swiper-slide" data-swiper-slide-index="6" style="width: 1600px; visibility: hidden;"><a href="/kor/promotion/detail.do?page=1&amp;seq=306&amp;utm_medium=Corp_site&amp;utm_source=Main_banner&amp;utm_campaign=1104_Vanilla"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/1635905159418.png" alt="맥카페 바닐라를 만나다! 달콤한 바닐라 시럽이 듬뿍! New 바닐라 라떼"></a></li>
				<li class="swiper-slide" data-swiper-slide-index="7" style="width: 1600px; visibility: hidden;"><a href="/kor/promotion/detail.do?page=1&amp;seq=344&amp;utm_medium=Corp_site&amp;utm_source=Main_banner&amp;utm_campaign=1104_StrawberryChiller"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/1641377337519.png" alt="딸기의 상큼함을 한 잔에! 딸기 칠러"></a></li>
			</ul>
			<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>
		
			<button type="button" class="ctrl next" tabindex="0" role="button" aria-label="Next slide" onclick="nextSlide()">다음</button>
			<div class="indicator">
				<span role="text" class="timer"><span class="bar" style="width: 79.3638%; overflow: hidden;"></span></span>
				<button type="button" class="play pause" onclick="controlBar()">정지</button><!-- 재생표시 <button type="button" class="play">재생</button> -->
			</div>
			<script type="text/javascript">
			$(".pause").onclick = function(){
				if(!isStopBar){
					isStopBar = true;
				}else{
					isStopBar = false;
				}
			}
			</script>
		</div>
			
				<!-- //mainEvent -->
				<div class="contArea mainCont">
					<div class="inner">
						<h2 class="titMain">McDonald's LIVE</h2>
						<ul class="whatsNew" id="menuList">
							
						
<li><a href="#" onclick="goDetail(this)" data-seq="130" data="130,N,./kor/promotion/detail.do?page=1&amp;seq=356&amp;utm_medium=Corp_site&amp;utm_source=Main_cardblock&amp;utm_campaign=0310_MyMcD">
								<div class="tmb"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/1646730927037.png" alt="첫 적립 시 맥너겟 무료 마이 맥도날드 리워드 출시!"></div>
								<div class="con">
									<strong class="tit">첫 적립 시 1500 포인트 제공!<br>
마이 맥도날드 리워드 출시!</strong>
								</div>
							</a></li>

<li><a href="#" onclick="goDetail(this)" data-seq="126" data="126,N,https://www.mcdonalds.co.kr./kor/story/competition/farmToRestaurant.do?utm_medium=Corp_site&amp;utm_source=Main_cardblock_quality&amp;utm_campaign=0127_BB">
								<div class="tmb"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/1643187174757.png" alt="맥도날드 품질 이야기"></div>
								<div class="con">
									<strong class="tit">우리가 엄격해질수록 <br>버거는 더 맛있어지니까!</strong>
								</div>
							</a></li>

<li><a href="#" onclick="goDetail(this)" data-seq="131" data="131,N,https://mcdonalds.co.kr./kor/promotion/detail.do?page=1&amp;seq=358">
								<div class="tmb"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/1648632255889.png" alt=""></div>
								<div class="con">
									<strong class="tit">한국인이 사랑하는 이탈리아의 맛<br> NEW 아라비아따 리코타 치킨 버거</strong>
								</div>
							</a></li>

<li><a href="#" onclick="goDetail(this)" data-seq="128" data="128,N,./kor/promotion/detail.do?page=1&amp;seq=350&amp;utm_medium=Corp_site&amp;utm_source=Main_cardblock&amp;utm_campaign=0204_Spicy%20Mcnugget">
								<div class="tmb"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/1643868245207.jpg" alt="바삭함 속에 기분 좋은 매콤함  스파이시 맥너겟 출시! 신제품 스파이시 맥너겟 &amp;맥너겟"></div>
								<div class="con">
									<strong class="tit">바삭함 속에 기분 좋은 매콤함 <br>
스파이시 맥너겟 출시!</strong>
								</div>
							</a></li>

<li><a href="#" onclick="goDetail(this)" data-seq="125" data="125,N,./kor/promotion/detail.do?page=1&amp;seq=348&amp;utm_medium=Corp_site&amp;utm_source=Main_cardblock&amp;utm_campaign=0113_BAQ1">
								<div class="tmb"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/1644570199804.png" alt="해피스낵 소시지 스낵랩 신규 출시"></div>
								<div class="con">
									<strong class="tit">인기 스낵을 하루 종일 할인된 가격으로!</strong>
								</div>
							</a></li>

<li><a href="#" onclick="goDetail(this)" data-seq="121" data="121,N,./kor/promotion/detail.do?page=1&amp;seq=344&amp;utm_medium=Corp_site&amp;utm_source=Main_cardblock&amp;utm_campaign=1104_StrawberryChiller">
								<div class="tmb"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/1641377482506.png" alt="딸기의 상큼함을 한 잔에!  딸기 칠러가 돌아왔다!"></div>
								<div class="con">
									<strong class="tit">딸기의 상큼함을 한 잔에! <br> 딸기 칠러가 돌아왔다!</strong>
								</div>
							</a></li>
</ul>
						<div class="btnMore" id="btnMore">
							<a href="javascript:more();" class="more" title="더보기">더보기</a>
						</div>
					</div>
				</div>
				<form id="searchForm" name="searchForm" method="get">
					<input type="hidden" name="seq" id="seq">
					<input type="hidden" name="urlCode" id="urlCode">
					<input type="hidden" name="linkurl" id="linkurl">
				</form>		
<script id="card1" type="text/templet">
<li><a href="#" onclick="goDetail(this)" data-seq="{seq}" data="{seq},{certification},{pc_kor_link}">
								<div class="tmb"><img src="{pc_kor_image_url}" alt="{pc_kor_alt}"></div>
								<div class="con">
									<strong class="tit">{pc_kor_content}</strong>
								</div>
							</a></li>
</script>	
<script id="card2" type="text/templet">
<li class="official"><a href="#" onclick="goDetail(this)"  data-seq="{seq}" data="{seq},{certification},{pc_kor_link}">
								<strong class="tit">{pc_kor_alt}</strong>
								<span class="txt">{pc_kor_content}</span>
							</a></li>
</script>	
			</div>
			<div class="aside fixedB">
				<a href="./kor/story/competition/farmToRestaurant.do" class="go_story" title="품질 이야기로 이동">품질 이야기</a>
				<a href="https://www.mcdelivery.co.kr/kr/" class="goDelivery" target="_blank" title="새창 열림">Mcdelivery</a>
			</div>
			<button type="button" class="btnTop">맨 위로 가기</button>
		</div>
		<!-- //container -->
		<footer class="footer">
			
			<div class="footArea">
				<ul class="fUtil">
					<li class="privacy"><a href="./kor/etc/private.do">개인정보 처리방침</a></li>
					<li><a href="./kor/etc/location.do">위치정보 이용약관</a></li><!-- 추가 -->
					<li><a href="./kor/etc/sitemap.do">사이트맵</a></li>
					<li><a href="./kor/store/rental.do">임차문의</a></li>
					<li><a href="https://voc.mcd.co.kr/MC/HOM/faqMain.jsp" target="_blank" title="새창 열림">고객문의</a></li>
					<!-- <li><a href="javascript:systemCheck('https://voc.mcd.co.kr/MC/HOM/faqMain.jsp')" title="새창 열림">고객문의</a></li> -->					
				    <li><a href="./kor/story/people/recruit.do">인재채용</a></li> 
				</ul>
				<ul class="fSns">
					<li><a href="https://www.facebook.com/McDonaldsKorea" class="fb" target="_blank" title="새창 열림">맥도날드 페이스북</a></li>
					<li><a href="https://www.instagram.com/mcdonalds_kr/" class="ig" target="_blank" title="새창 열림">맥도날드 인스타그램</a></li>
					<li><a href="https://www.youtube.com/user/McDonaldsKor" class="yt" target="_blank" title="새창 열림">맥도날드 유투브</a></li>
					<li><a href="https://story.kakao.com/ch/mcdonalds/feed" class="ks" target="_blank" title="새창 열림">맥도날드 카카오스토리</a></li>
					<li class="web_accessibility">
                       <a href="http://www.webwatch.or.kr/Situation/WA_Situation.html?MenuCD=110" class="web_accessibility" title="국가 공인 인증기관 : 웹와치" target="_blank">
                        <img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/web_accessibility.svg" alt="과학기술정보통신부 WEB ACCESSIBILITY 마크(웹 접근성 품질인증 마크)">
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
	<!-- //wrapper -->
	





    
     
	<div class="dimmed"></div>
	<div id="materialPop" class="popLayer layerS">
		<div class="layCont" id="materialPopCon">
			
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>

	<div class="popLayer layerL layerType02" id="storeSearch">
		<div class="layCont">
			<div class="scroll storeSch">
				<div class="schTop">
					<h2 class="popTit">주방 공개의 날/쿠킹 클래스 운영매장</h2>
					<fieldset class="schArea">
						<legend>매장검색</legend>
						<div class="field01">
							<div class="formWrap">
								<label for="store01-button">시/도</label>		
								<div class="selectWrap" style="z-index: 100000;">
									<select title="시/도 선택" id="store01" style="width: 200px; display: block; position: absolute; margin-left: -100000px;" onchange="getGugunJsonp()">
												<option value="">전체</option>
						                        <option value="서울">서울</option>
						                        <option value="경기도">경기도</option>
						                        <option value="강원도">강원도</option>
						                        <option value="광주">광주</option>
						                        <option value="경상남도">경상남도</option>
						                        <option value="경상북도">경상북도</option>
						                        <option value="대전">대전</option>
						                        <option value="대구">대구</option>
						                        <option value="부산">부산</option>
						                        <option value="인천">인천</option>
						                        <option value="울산">울산</option>
						                        <option value="제주">제주</option>
						                        <option value="전라남도">전라남도</option>
						                        <option value="전라북도">전라북도</option>
						                        <option value="충청남도">충청남도</option>
						                        <option value="충청북도">충청북도</option>
						             </select><button tabindex="-1" id="store01-button" aria-expanded="false" aria-autocomplete="list" aria-owns="store01-menu" aria-haspopup="true" title="시/도 선택" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget" style="width: 200px;"><span class="ui-selectmenu-text">전체</span></button>
								<div class="ui-selectmenu-menu ui-front"><ul aria-hidden="true" aria-labelledby="store01-button" id="store01-menu" role="listbox" tabindex="0" class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul></div></div>
							</div>
							<div class="formWrap">
								<label for="store02-button">시/군/구</label>		
								<div class="selectWrap" style="z-index: 100000;">
									<select title="시/군/구 선택" id="store02" style="width: 200px; display: block; position: absolute; margin-left: -100000px;">
										<option value="">전체</option>
									</select><button tabindex="-1" id="store02-button" aria-expanded="false" aria-autocomplete="list" aria-owns="store02-menu" aria-haspopup="true" title="시/군/구 선택" class="ui-selectmenu-button ui-selectmenu-button-closed ui-corner-all ui-button ui-widget" style="width: 200px;"><span class="ui-selectmenu-text">전체</span></button>
								<div class="ui-selectmenu-menu ui-front"><ul aria-hidden="true" aria-labelledby="store02-button" id="store02-menu" role="listbox" tabindex="0" class="ui-menu ui-corner-bottom ui-widget ui-widget-content"></ul></div></div>
							</div>				
						</div>
						<div class="field02">
							<span class="formWrap">
								<label for="store03">매장</label>
								<input type="text" id="store03" placeholder="ex)안양">
								<button type="button" class="btnMC btnM" onclick="getStoreList()">검색</button>
							</span>
						</div>
					</fieldset>
					<p class="notiTxt">검색이 되지 않는 매장은 다음 달에 행사 계획이 없는 매장입니다.</p>
				</div>
				<div class="schCon">
					<!-- 지도영역 -->
					<div id="storePopMap" class="map">
						
					</div>
					<!-- //지도영역 -->
					<!-- 검색결과 있음-->
					<div class="result" id="storeS">
						<ul id="storePopListUl">
						
							
						
						</ul>
					</div>
					<!-- //검색결과 있음-->
					<!-- 검색 결과 없음 -->
					<p class="noResult" id="storeN" style="display:none;"><b class="color01" id="searchWordShow"></b>에 대한 검색결과가 없습니다.</p>
					<!-- 검색 결과 없음 -->
				</div>
			</div>			
		</div>
		<!-- //.layCont-->
		<div class="btnArea">
			<button type="button" class="btnMC btnM" onclick="selectStorePop()">선택완료</button>
		</div>				
		<button type="button" class="layClose">닫기</button>
	</div>

			<!-- 크루 이야기 (L) -->
	<div class="popLayer layerS layerType03" id="crew_1">
		<div class="layCont">
			<div class="scroll crewDetail">
				<div class="contHead">
					<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_crew_pop01.jpg" alt="목포 남악 DT점 김지웅 매니저"></div>
				</div>
				<div class="contBtm crewCont">
					<h2 class="tit">변화는 나의 자부심</h2>
					<p class="txt">처음엔 ‘그냥 아르바이트 하는 곳’이라는 생각으로 시작 하였던 것이 어느 것 16년을 함께 하고 있습니다. 맥도날드의 다양한 경험을 통해 항상 새로운 시도와 변화를 먼저 이끌어 나가는 기업이라는 것을 자연스럽게 느낄 수 있었습니다.</p>
					<p class="txt">맥드라이브, 맥딜리버리, 최근의 미래형 매장까지···<br>멈추지 않는 다양한 시도들은 저에게 변화를 함께 만들어 가면서 최초라는 자부심을 갖고 일할 수 있게 해주었습니다.</p>
					<p class="txt">맥도날드의 변화는 곧 저의 즐거움이자 자부심이며,<br>이러한 새로운 변화를 계속해서 이끌어갈 것입니다.</p>
					<p class="crewInfo">목포 남악 DT점 김지웅 매니저</p>
				</div>
			</div>
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>

	<div class="popLayer layerS layerType03" id="crew_2">
		<div class="layCont">
			<div class="scroll crewDetail">
				<div class="contHead">
					<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_crew_pop02.jpg" alt="경희대점 권영미 크루"></div>
				</div>
				<div class="contBtm crewCont">
					<h2 class="tit">매일 열정적일 수 있는 나만의 비결</h2>
					<p class="txt">야간 근무를 하면서 밤낮이 바뀐 생활이 쉽진 않았습니다.<br>하지만 한 집안의 ‘엄마’와 ‘아내’로서, 그리고 맥도날드에<br>찾아오는 모든 고객 분들의 ‘이웃’과 ‘친구’로서 균형을<br>잃지 않기 위해 더 열심히 일했습니다.</p>
					<p class="txt">누구보다 더 변화하는 시스템을 긍정적이고 빠르게 받아들이려<br>노력하여, 어느새 저는 매장의 맏언니로 자리할 수 있었습니다.<br>함께 일하는 크루들도 언제나 열정적인 저의 모습을 통해<br>힘을 얻고 함께 변화하며 성장하고 있습니다.</p>
					<p class="txt">오늘 밤에도 나, 그리고 맥도날드를 찾아 주시는<br>고객 분들을 위해 더 열정적으로 일하려 합니다.</p>
					<p class="crewInfo">경희대점 권영미 크루</p>
				</div>
			</div>
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>

	<div class="popLayer layerS layerType03" id="crew_3">
		<div class="layCont">
			<div class="scroll crewDetail">
				<div class="contHead">
					<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_crew_pop03.jpg" alt="미아역점 이지혁 라이더"></div>
				</div>
				<div class="contBtm crewCont">
					<h2 class="tit">행복을 배달하는 사람으로.</h2>
					<p class="txt">제가 어떤 마음으로 일하느냐에 따라 고객 분들이 느끼는 게<br>다를거라 생각했습니다. 돈을 벌기 위해서, 어쩔 수 없이 해야하니까 하는 것 보단 스스로 가치 있고 “행복을 전달하는 일이다.”라고 생각하는 태도를 갖기로 마음 먹었습니다.</p>
					<p class="txt">그러자 전보다 감사한 마음으로 일할 수 있었고, <br>그 마음이 어느 정도 고객 분들에게 전달 되어지고 있다고 생각합니다.</p>
					<p class="txt">그렇게 감사하며 유쾌하게 일을 하고 있고,<br>더 많은 행복을 전달할 수 있도록 노력할 것 입니다</p>
					<p class="crewInfo">미아역점 이지혁 라이더</p>
				</div>
			</div>
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>

	<div class="popLayer layerS layerType03" id="crew_4">
		<div class="layCont">
			<div class="scroll crewDetail">
				<div class="contHead">
					<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_crew_pop04.jpg" alt="석촌역점 이나라 크루"></div>
				</div>
				<div class="contBtm crewCont">
					<h2 class="tit">맥도날드를 넘어, 나 자신의 변화까지</h2>
					<p class="txt">올 해, 고객 분들과 직접 접할 일이 더욱 많은 ‘서비스 리더’라는 직책을 맡게 되면서 저에게 고객과의 소통은 중요한 일이 되었습니다. 처음엔 낯설고 힘들었습니다.<br>하지만 고객 분들에게 저희 매장의 직원들이 친절하다는 칭찬을 듣고 싶은 욕심이 점점 생겼습니다.</p>
					<p class="txt">그렇게 마음 먹은 뒤로부터 웃는 얼굴로 일하여 노력하기 시작했고, 그러자 일이 즐겁게 느껴졌습니다. <br> 그런 것을 고객 분들도 알아주시고, 함께 웃는 얼굴로 마주해주시니 제 삶까지 행복해졌습니다.</p>
					<p class="txt">처음에는 작은 욕심으로 시작한 일이<br>맥도날드의 변화를 넘어, 나 자신의 변화까지 가져왔습니다.</p>
					<p class="crewInfo">석촌역점 이나라 크루</p>
				</div>
			</div>
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>



</body>
</html>