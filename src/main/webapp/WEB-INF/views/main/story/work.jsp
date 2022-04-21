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

<style>

</style>

</head>
<body>
<div class="wrapper ">
		<header class="header" style="margin-top: 0px;"><!-- 상단 고정 fixed 클래스 추가, 메뉴의 depth1 오버시 open 클래스 추가 -->
			
    



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
								<a href="/story/main.do" class="dth1  current">Story</a>
								<ul class="depth2">
									<li><a href="/story/intro/brandintro.do" class="dth2">브랜드 소개</a></li>
									<li><a href="/story/society/list.do" class="dth2">사회적 책임과 지원</a></li>
									<li><a href="/story/competition/farmToRestaurant.do" class="dth2">맥도날드 품질 이야기</a></li>
									<li><a href="/story/people/crew.do" class="dth2">맥도날드 사람들</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- //menu -->
					<form id="commonSearchForm" method="post">
					<div class="util">
						<a href="/kor/store/rental.do" class="renter" title="임차문의로 이동">임차문의</a>					
						<a href="/story/people/recruit.do" class="recruit" title="인재채용으로 이동">RECRUIT</a>
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
				
<div class="visualArea bgStory04" data-title="맥도날드 사람들" data-desc="업무 소개">
					<div class="inner">
						<h1 class="titDep1">맥도날드 사람들</h1>
						<p class="subCopy">끊임없는 변화와 도전을 통해 성장해온 맥도날드<br>이 변화의 중심에는 맥도날드와 함께 변화하며 성장하는 ‘맥도날드 사람들’이 있습니다.</p>
						<ul class="navPath">
							<li><a href="/kor/main.do">Home</a></li>
							<li><a href="/story/main.do">Story</a></li>
							<li><a href="/story/people/crew.do">맥도날드 사람들</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<ul class="tabType01">
							<li><a href="/story/people/crew.do" role="button">크루이야기</a></li>
							<li><a href="/story/people/work.do" role="button" aria-selected="true">업무소개</a></li>
							<li><a href="/story/people/recruit.do" role="button">인재채용</a></li>
						</ul>
						<h2 class="titDep2">업무 소개 (Restaurant Department Management)</h2>
						<p role="text" class="txtInfo">맥도날드에서는 각 레스토랑에서 근무하는 정규 직원을 Manager 라고 부릅니다.<br>Manager는 업무와 교육 과정 수료 여부에 따라 다양한 단계로 나누어집니다.</p>
						<div class="managerTbl">
							<table class="tableType01">
								<caption>업무 소개 - 레스토랑 제너럴 매니저, 피플 디벨롭먼트 매니저, 푸드 퀄리티 매니저, 고객 경험 매니저, 매니저 트레이니</caption>
								<colgroup><col style="width:25%"><col></colgroup>
								<tbody>
									<tr>
										<th scope="row">레스토랑 제너럴 매니저<br>(Restaurant General Manager)</th>
										<td>레스토랑에서 품질, 서비스 및 청결에 관한 스탠다드가 준수되도록 운영합니다.<br>레스토랑에서 구체적인 책임을 가진 디파트먼트 매니저 팀을 이끌고 있으며,<br>레스토랑의 중요한 여러 가지 기능과 시스템을 관리합니다.</td>
									</tr>
									<tr>
										<th scope="row">피플 디벨롭먼트 매니저<br>(People Development Manager)</th>
										<td>적합한 크루를 채용, 교육 및 스케줄링 할 책임이 있습니다.<br>크루의 레스토랑 입사 시부터 잘 정착하게 하고 근무하는 동안 관리합니다.</td>
									</tr>
									<tr>
										<th scope="row">푸드 퀄리티 매니저<br>(Food Quality Manager)</th>
										<td>레스토랑 내의 프로덕션 시스템을 관리합니다.<br>이 책임은 고객에게 최고 품질의 제품 제공을 위한  인벤토리와 프로덕션 시스템을 관리합니다.</td>
									</tr>
									<tr>
										<th scope="row">고객 경험 매니저<br>(Customer Experience Manager)</th>
										<td>고객에게 탁월한 고객 서비스 경험을 제공할 책임이 있으며, 세일즈 촉진 활동  및 서비스 프로그램을 관리합니다.</td>
									</tr>
									<tr>
										<th scope="row">매니저 트레이니 (Manager Trainee)</th>
										<td>공개 채용 절차를 통해 입사하는 직급으로, 체계적인 매니저 교육을 통하여 성장의 기회를 갖게 됩니다.</td>
									</tr>
								</tbody>
							</table>
						</div>
						<h2 class="titDep3">맥도날드 교육의 힘</h2>
						<div class="txtCont01">
							<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_manager01.jpg" alt=""></div>
							<h3 class="titDep4 color01">햄버거 철학을 배우다.</h3>
							<div class="col2">
								<p>맥도날드 Learning &amp; Development 센터는 각 직무와 직급에 맞는 교육을  현장 경험이<br>풍부한 강사진을 토대로 실무 중심의 교육을 실현하고 있습니다.  <br>교육 과정은 각 직무 및 직급에 맞도록 다양한 커리큘럼으로 구성되어 있습니다.<br>특히 개인의 성장과 팀 발전을 도울 수 있도록  글로벌과 동일한 커리큘럼을 통해 동일한<br>교육 과정으로 진행되고 있습니다. </p>
								<p>맥도날드 정직원의 50% 이상이 크루(파트타이머) 출신이라는 사실만 봐도 맥도날드 교육의 힘을 느낄 수 있습니다. 맥도날드에 첫발을 디딘 여러분들은 크루 시절부터 레스토랑 매니저가 되기까지 매장 운영 방식, QSC&amp;V의 서비스 정신, 그리고 장비 관리 기술은 물론 리더십, 경영 기획에 이르기까지 각 단계별로 다양하고 완벽한 교육을 받게 됩니다.<br>세계 어디서나 똑같은 맥도날드의 음식과 서비스를 제공할 수 있는 것, 그리고 세계 어디서나 똑같이 직원 한 사람, 한 사람에게 무한한 자기 성장의 기회를 제공할 수 있는 것, <br>이것이 바로 맥도날드 교육의 힘입니다.</p>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="aside">
				<a href="/story/competition/farmToRestaurant.do" class="go_story" title="품질 이야기로 이동">품질 이야기</a>
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
				    <li><a href="/story/people/recruit.do">인재채용</a></li> 
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
</body>
</html>