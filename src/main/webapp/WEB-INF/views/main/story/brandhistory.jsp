<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="../css/common.css">
</head>
<body>
    <div class="wrapper ">
		<header class="header fixed" style="margin-top: 0px;"><!-- 상단 고정 fixed 클래스 추가, 메뉴의 depth1 오버시 open 클래스 추가 -->
			
    



	<div class="headArea">
				<strong class="hLogo"><a href="/" class="logo" title="메인으로 이동"><img src="../kor/images/common/logo.png" alt="맥도날드"></a></strong>
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
								<a href="../kor/store/main.do" class="dth1 ">Store</a>
								<ul class="depth2">
									<li><a href="../kor/store/main.do" class="dth2">매장찾기</a></li>
									<li><a href="../kor/store/mcdelivery.do" class="dth2">맥딜리버리</a></li>
									<li><a href="../kor/store/mcdrive.do" class="dth2">맥드라이브</a></li>
									<li><a href="../kor/store/rental.do" class="dth2">임차문의</a></li>
								</ul>
							</li>
							<li>
								<a href="../kor/promotion/list.do" class="dth1  ">What’s New</a>
								<ul class="depth2">
									<li><a href="../kor/promotion/list.do" class="dth2">프로모션</a></li>
									<li><a href="../kor/news/list.do" class="dth2">새로운 소식</a></li>
									<!--  li><a href="../kor/kitchen.do" class="dth2">주방공개의 날</a></li -->
								    <li><a href="../kor/happymeal/list.do" class="dth2">이달의 해피밀</a></li> 
								</ul>
							</li>
							<li>
								<a href="../kor/story/main.do" class="dth1  current">Story</a>
								<ul class="depth2">
									<li><a href="../kor/story/intro/brandintro.do" class="dth2">브랜드 소개</a></li>
									<li><a href="../kor/story/society/list.do" class="dth2">사회적 책임과 지원</a></li>
									<li><a href="../kor/story/competition/farmToRestaurant.do" class="dth2">맥도날드 품질 이야기</a></li>
									<li><a href="../kor/story/people/crew.do" class="dth2">맥도날드 사람들</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- //menu -->
					<form id="commonSearchForm" method="post">
					<div class="util">
						<a href="../kor/store/rental.do" class="renter" title="임차문의로 이동">임차문의</a>					
						<a href="../kor/story/people/recruit.do" class="recruit" title="인재채용으로 이동">RECRUIT</a>
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
				$("#gotoMenuForm").attr("action","../kor/menu/list.do");
				$("#gotoMenuForm").submit();
			}
			function gotoCommonSearch(){
				if($.trim($("#commonSearchWord").val())==""){
					alert("검색어을 입력해 주세요");
					$("#commonSearchWord").focus();
				}else{
					$("#commonSearchForm").attr("action","../kor/search.do");
					$("#commonSearchForm").submit();
				}
			}
	</script>
		</header>
		<!-- //header -->
		<div id="container">
			<div class="content">
				
<div class="visualArea bgStory01" data-title="브랜드 소개" data-desc="브랜드 소개">
					<div class="inner">
						<h1 class="titDep1">브랜드 소개</h1>
						<p class="subCopy">1955년 작은 레스토랑에서부터 지금에 이르기까지 고객이 가장 좋아하는 장소이자,<br>음식을 즐기는 최고의 방법이 되기 위해 맥도날드는 오늘도 노력합니다.</p>
						<ul class="navPath">
							<li><a href="../kor/main.do">Home</a></li>
							<li><a href="../kor/story/main.do">Story</a></li>
							<li><a href="../kor/story/intro/brandintro.do">브랜드 소개</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<!-- tab -->
						<ul class="tabType01">
							<li><a href="../kor/story/intro/brandintro.do" role="button">맥도날드 소개</a></li>
							<li><a href="../kor/story/intro/brandhistory.do" role="button" aria-selected="true">맥도날드 철학 및 역사</a></li>
						</ul>
						<!-- //tab -->
						<div class="brnadCont01">
							<div class="img"><img src="../kor/images/story/img_brand02_01.jpg" alt="창업주 레이 크록(Ray Kroc) 이미지"></div>
							<h2 class="titDep2">맥도날드 기업철학의 뿌리,<br>창업주 레이 크록(Ray Kroc)의 이야기</h2>
							<h3 class="txtInfo02">1954년, 맥도날드 형제가 만든 최고의 햄버거를 만나다</h3>
							<p role="text" class="txtInfo">맥도날드 역사는 1954년 레이 크록(Ray Kroc)이 캘리포니아에 있는 한 햄버거 가게를 방문하면서부터 시작되었습니다.<br>밀크 쉐이크 기계 판매원으로 근무하던 크록은 맥도날드 형제가 운영하던 햄버거 가게에서 주문을 받았고 그들에게 감탄했습니다.<br>메뉴는 간단하고 저렴하지만 햄버거의 품질과 맛은 최고였습니다.</p>
						</div>
						<div class="brandCont03">
							<div class="col2">
								<img src="../kor/images/story/img_brand02_02.jpg" alt="맥도날드 1호 일리노이주 매장 이미지">
								<div>
									<h3 class="tit">1955년, 일리노이주에 첫 매장 오픈에서 5년 후,<br>200개의 매장 오픈까지</h3>
									<p>크록은 맥도날드 형제에게 미국 전역에 걸쳐 맥도날드 매장을 개장하는 비전을 제시하며<br>프랜차이즈 사업을 제안했습니다. 1955년에 크록은 일리노이주의 데스플레인스<br>(Des Plaines)에 맥도날드의 첫 정식 프랜차이즈 매장을 오픈했습니다.<br>이 후 큰 성공을 거두어 불과 5년 만에 점포 수는 200개가 되었습니다.</p>
									<h3 class="tit">맥도날드의 기업철학의 뿌리, 레이 크록</h3>
									<p>1984년 1월, 81세의 나이로 사망하기 직전까지 크록은 맥도날드를 위해 헌신 했습니다.<br>그는 새 가맹점이 문을 열 때마다 영업 첫날의 판매 보고서를 받아 철저히 검토했으며,<br>맥도날드의 당시 신임 경영진이 어떻게 회사를 이끌어 가는지 늘 관심을 갖고<br>지켜보았습니다. 레이 크록의 진정한 공로는 수평적이고 모두의 성장을 꾀하는 새로운<br>사업구조와 그 시스템을 창조한 것입니다. 그는 타고난 리더로서 탁월한 능력을 발휘하여,<br>프랜차이즈 업체와 공급업체, 그리고 직원 모두의 성장을 꾀하는 새로운 사업 구조를<br>창조했으며, 선진적인 기업 문화 정착에 기여한 것으로 평가 받고 있습니다.</p>
								</div>								
							</div>
							<div class="col2">
								<div>
									<h3 class="tit">‘세 다리 의자(The Three-Legged Stool)’ 철학</h3>
									<p>크록은 언제 어디에서나 변함없이 좋은 품질의 음식을 제공하고 완벽한 서비스를<br>동일하게 제공한다는 경영철학을 추구했습니다. 이를 위해 크록은 프랜차이즈 파트너와<br>공급 업체와의 수평적인 관계를 통해 동반 성장이 이루어져야 한다는 신념으로 이들에게<br>‘맥도날드를 위해 일하는 것’이 아닌, ‘맥도날드와 함께 본인들을 위해 일하는 것’이라는<br>비전을 전달했습니다. 크록은 ‘사업은 혼자 하는것이 아니라(by yourself), 본인을 위해<br>하는 것(for yourself)이다’라는 유명한 슬로건을 남긴 바 있습니다.<br>크록의 신념은 프랜차이즈 파트너, 공급업체가 의자의 세 다리와 같은 역할을 해야만<br>맥도날드가 튼튼하게 바로설 수 있다는 의미의 ‘세 다리 의자(The Three-Legged Stool)’<br> 철학을 바탕으로 하고 있습니다. 이것이 맥도날드가 오늘날의 프랜차이즈 표본이 되고,<br>60년 가까이 전세계에서 최대 규모의 프랜차이즈 업체로 성장하게 된 비결입니다.</p>
								</div>
								<img src="../kor/images/story/img_brand02_03.jpg" alt="세 다리 의자(The Three-Legged Stool) 이미지">
							</div>
						</div>
						<div class="brandCont04">
							<div class="brandQscv">
								<h2 class="titDep2">맥도날드의 네가지 약속<br>품질, 서비스, 청결, 가치</h2>
								<div class="philosophy">
									<blockquote>
										만약 내가 QSC&amp;V를 언급할 때마다<br>벽돌을 한 개씩 쌓아 다리를 만들었다면,<br>대서양도 가로지를 수 있었을 것입니다. <em>레이 크록</em>
									</blockquote>
									<p>레이 크록은 맥도날드가 햄버거 비즈니스를 어느 누구보다<br>진지하게 받아들이고 있다고 항상 이야기하는 완벽주의자였습니다.<br>그는 맥도날드를 처음 시작할 때부터 고객에게 깨끗한 레스토랑에서<br>친절한 서비스와 함께 저렴한 가격의 품질 높은 식사를 제공할 것이라고<br>약속하였습니다. 레이 크록은 이러한 맥도날드의 기업 정신을 QSC&amp;V<br>(Quality, Service, Cleanliness and Value)라고 불렀고,<br>이는 지금까지도 맥도날드의 핵심 가치로 남아 있습니다.</p>
								</div>
								<p class="qscvInfo"><em class="color01">*QSC&amp;V : Quality, Service, Cleanliness and Value</em>를 뜻한다.<br>고객에게 최고 품질의 청결한 음식과 친절한 서비스를 제공하고자 하는 맥도날드의 기업 정신.</p>
							</div>
							<div class="socialList">
								<ul>
									<li>
										<span class="thum"><img src="../kor/images/story/img_brand02_04.jpg" alt=""></span>
										<strong>Quality 품질</strong>
										<p>품질은 최고의 재료, 엄격한 조리 방법 그리고 안전이 검증된 준비 방법, 뛰어난 맛을 지닌<br>제품을 말합니다. 맥도날드의 목표는 고객에게 최적의 가격으로 뛰어난 품질의 제품을<br>제공하는 것입니다. 우리는 맥도날드의 엄격한 품질 기준에 따른 고품질의 음식을 제공합니다.<br>맥도날드는 품질을 최우선시하여 품질 관리 시스템을 구축하였습니다.</p>
									</li>
									<li>
										<span class="thum"><img src="../kor/images/story/img_brand02_05.jpg" alt=""></span>
										<strong>Service 서비스</strong>
										<p>빠르고 친절한 서비스는 맥도날드의 성공에 기반이 되어 왔습니다. 맥도날드는 항상 고객의<br>입장에서 생각합니다. 주문이 들어옴과 동시에 주문한 음식을 만들기 시작해 고객들에게<br>더욱 신선하고 따뜻한 제품을 제공할 수 있도록 하는 주방 시스템인 ‘메이드 포 유(Made<br>For You)’를 통해 더욱 빠르고 편리한 서비스를 제공하고 있습니다. 맥도날드의 서비스는<br>음식을 제공하는데 그치는 것이 아니라 고객의 행복과 즐거움이 되도록 노력하는 것입니다.</p>
									</li>
									<li>
										<span class="thum"><img src="../kor/images/story/img_brand02_06.jpg" alt=""></span>
										<strong>Cleanliness 청결</strong>
										<p>청결은 맥도날드가 1955년 첫 시작부터 지켜온 중요한 철학입니다.<br>매장의 주방, 로비부터 화장실, 주차장에 이르기까지 깨끗하고 상쾌한 공간과 시설을 제공합니다. 매장에서는 매 30분마다 크루들이 손을 씻도록 하고 있으며, <br>시간별로 철저히 위생 상태를 체크하는 것은 물론, 조리시 장갑 등 위생 용품을<br>식재료에 따라 다르게 사용하는 등 세심한 부분까지 철저하고 체계적인 시스템을<br>갖추고 있습니다.</p>
									</li>
									<li>
										<span class="thum"><img src="../kor/images/story/img_brand02_07.jpg" alt=""></span>
										<strong>Value 가치</strong>
										<p>맥도날드의 가치는 고품질의 음식, 친절한 직원의 응대, 깨끗한 환경 그리고 빠르고 정확한<br>서비스 등 고객이 맥도날드에서 접하게 되는 모든 경험을 말합니다. 맥도날드는 최상의<br>서비스를 제공하여 고객들이 맥도날드를 방문할 때마다 즐거운 경험을 할 수 있도록<br>고객의 만족이 100%가 될 때까지 지속적으로 노력합니다. 맥도날드는 음식 이상의 가치를 고객에게 전달하고자 합니다.</p>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- //contArea -->

			</div>
			<div class="aside">
				<a href="../kor/story/competition/farmToRestaurant.do" class="go_story" title="품질 이야기로 이동">품질 이야기</a>
				<a href="https://www.mcdelivery.co.kr/kr/" class="goDelivery" target="_blank" title="새창 열림">Mcdelivery</a>
			</div>
			<button type="button" class="btnTop">맨 위로 가기</button>
		</div>
		<!-- //container -->
		<footer class="footer">
			
			<div class="footArea">
				<ul class="fUtil">
					<li class="privacy"><a href="../kor/etc/private.do">개인정보 처리방침</a></li>
					<li><a href="../kor/etc/location.do">위치정보 이용약관</a></li><!-- 추가 -->
					<li><a href="../kor/etc/sitemap.do">사이트맵</a></li>
					<li><a href="../kor/store/rental.do">임차문의</a></li>
					<li><a href="https://voc.mcd.co.kr/MC/HOM/faqMain.jsp" target="_blank" title="새창 열림">고객문의</a></li>
					<!-- <li><a href="javascript:systemCheck('https://voc.mcd.co.kr/MC/HOM/faqMain.jsp')" title="새창 열림">고객문의</a></li> -->					
				    <li><a href="../kor/story/people/recruit.do">인재채용</a></li> 
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