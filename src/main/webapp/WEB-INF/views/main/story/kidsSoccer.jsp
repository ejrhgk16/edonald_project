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
				
<div class="visualArea bgStory02" data-title="맥도날드 사회적 책임" data-desc="어린이 축구교실">
					<div class="inner">
						<h1 class="titDep1">맥도날드 사회적 책임</h1>
						<p class="subCopy">맥도날드는 어떤 곳 보다 햄버거 비즈니스를 진지하게 생각합니다.<br>엄격한 품질 관리 시스템을 통해 고품질의 음식을 제공하며,조리 과정에서 고객이 궁금한 모든 것을 알려드립니다.</p>
						<ul class="navPath">
							<li><a href="../kor/main.do">Home</a></li>
							<li><a href="../kor/story/main.do">Story</a></li>
							<li><a href="../kor/story/society/list.do">맥도날드 사회적 책임</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<ul class="tabType01">
							<li><a href="../kor/story/society/kidsSoccer.do" role="button" aria-selected="true">로날드 맥도날드 어린이 축구교실</a></li>
							<li><a href="../kor/story/society/happyBurger.do" role="button">행복의 버거 캠페인</a></li>
							<li><a href="../kor/story/society/safetyGuard.do" role="button">맥도날드 안전지킴 캠페인</a></li>
							<li><a href="../kor/story/society/mcDonaldHouse.do" role="button">재단법인 로날드맥도날드하우스</a></li>
						</ul>
						
						<div class="socialTab">
							<div class="img"><img src="../kor/images/story/img_social02_01_01.jpg" alt="어린이축구교실 대표이미지"></div>
							<h2 class="titDep2">‘로날드 맥도날드<br>어린이 축구교실’ 은 무엇인가요?</h2>
							<p role="text" class="txtInfo02">로날드 맥도날드 어린이 축구교실은 축구를 통해 우리 어린이들에게 마음껏 뛰어 놀며<br>성장할 수 있는 환경을 만들어 주고자 시작한 캠페인입니다.</p>
							<p role="text" class="txtInfo">2006년 처음 시작된 축구교실은 참가한 어린이와 가족들의 뜨거운 반응을 얻고 있습니다.<br>로날드 맥도날드 어린이 축구교실의 참가비는 무료이며, 참가 어린이 모두에게 유니폼이 제공됨은 물론, 영양교육 비디오와 수료증 등이 제공됩니다.</p>
							<div class="socialList">
								<ul>
									<li>
										<span class="thum"><img src="../kor/images/story/img_social02_01_02.jpg" alt="아빠와 함께하는 축구교실 이미지"></span>
										<strong>아빠와 함께하는 축구교실</strong>
										<p>‘아빠와 함께 하는 축구교실’은 맥도날드의 대표 사회공헌 활동인 ‘로날드 맥도날드<br>어린이 축구교실’의 일환으로, 여가시간을 좀 더 자녀들과 보내고자 하는 아빠들이 체계적이고 효과적인 축구 수업을 받고, 추후 직접 아이들의 선생님 역할을 하도록 돕고 있습니다. FC서울의 유소년 코치가 직접 지도하는 전문적인 커리큘럼과 아빠와 자녀가 함께 운동을 즐기며 추억을 쌓을 수 있는 프로그램 구성으로 매년 가족 단위 참가자들로부터 높은 호응을 얻고 있습니다.</p>
									</li>
									<li>
										<span class="thum"><img src="../kor/images/story/img_social02_01_03.jpg" alt="학교방문 축구교실 이미지"></span>
										<strong>학교방문 축구교실</strong>
										<p>맥도날드의 찾아가는 ‘학교방문 축구교실’ 은 현재 부산 지역에서 부산아이파크<br>축구단과의 협약을 통해 부산 지역 어린이들을 대상으로 진행하는 무료 축구교실 프로그램입니다. 대한축구협회 라이선스를 가진 부산아이파크 유소년 코치들이<br>부산지역 내 초등학교를 방문하여 체계적이고 전문적인 축구 기본기 교육을 가르치고 있으며, 2019년 축구교실 참여 어린이에게는 수료증과 함께 부산아이파크 홈 경기 1회<br>무료 관람권 및 동반 부모님 대상 티켓 50% 할인 혜택이 주어집니다.</p>
									</li>
									<li>
										<span class="thum"><img src="../kor/images/story/img_social02_01_04.jpg" alt="다문화 어린이 축구교실 이미지"></span>
										<strong>다문화 가정 어린이 축구교실</strong>
										<p>맥도날드는 다문화가정 어린이들의 건강한 성장 발달과 사회통합을 위해 서울지역 다문화가정지원센터 및 FC 서울과 함께 ‘다문화가정 어린이 축구교실’을 운영하고 있습니다. 다문화 가정 어린이들과 일반 가정 어린이들이 한데 어우러져 프로그램에 참여함으로써 다문화 가정 어린이들의 체력과 사회성을 기르는데 도움을 주고 있습니다.</p>
									</li>
									<!-- <li>
										<span class="thum"><img src="../kor/images/story/img_social02_01_05.jpg" alt=""></span>
										<strong>맥도날드 교사 축구 연수 프로그램</strong>
										<p>선생님들을 가르치면 더욱 많은 학생들에게 혜택이 돌아가지 않을까?<br>맥도날드는 부산광역시 교육청과 부산아이파크와 함께 부산 지역 초등학생들의 학교체육을<br>담당하고 있는 선생님들에게 수업 시간에 직접 활용할 수 있는 축구 연수 프로그램을<br>진행했습니다. 선생님들이 현장에 보다 효과적인 축구 수업을 진행할 수 있도록, 부산 지역<br>프로축구 구단인 부산아이파크 코치 진이 직접 교육에 참여하여 이론 및 실전을 결합한<br>체계적인 축구 코칭 방법들을 전수하는 프로그램이다.</p>
									</li> -->
									<li>
										<span class="thum"><img src="../kor/images/story/img_social02_01_06.jpg" alt="특수학교 축구교실 이미지"></span>
										<strong>특수학교 축구교실</strong>
										<p>맥도날드는 지난 2016년부터 평소 체육 활동이 어려운 특수학교 학생들을 대상으로<br>3년째 축구교실 프로그램을 진행하고 있습니다. 2018년 12월에는 부산맹학교를 찾아가 전문 코치들과 함께 시각 장애 학생들을 위한 맟춤형 축구교육을 제공하고 행복의 버거 100세트를 전달하기도 했습니다. 2019년부터는 특수학교 대상 축구교실을 연 2회로 확대함으로써 스포츠 사각지대에 놓인 학생들에게 운동의 즐거움을 알려주고 <br>소중한 추억을 선사하고자 합니다.</p>
									</li>
								</ul>
							</div>
							<div class="btnArea">
								<a href="../kor/story/society/list.do" role="button" class="btnList"><span>목록보기</span></a>
							</div>
						</div>
						<!-- //socialTab -->
					</div>
				</div>

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