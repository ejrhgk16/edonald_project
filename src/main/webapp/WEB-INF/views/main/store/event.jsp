<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>매장찾기</title>
	<meta name="description" id="description" contents="메뉴, 레스토랑, 프로모션 등 안내"/>
	<meta name="keywords" contents="McDonald's, McDrive, McDelivery, McMorning, Happy Meal, Signature Burger, McAllday, McCafe"/>
	<link rel="shortcut icon" type="image/x-icon" href="../images/favicon.ico">
	<link rel="stylesheet" href="../css/common.css?t=2022012502"> 
	<link rel="alternate" href="https://www.mcdonalds.co.kr">
	<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
</head>
<body>
<div class="wrapper ">
		<header class="header fixed" style="margin-top: 0px;"><!-- 상단 고정 fixed 클래스 추가, 메뉴의 depth1 오버시 open 클래스 추가 -->
			
    



	<div class="headArea">
				<strong class="hLogo"><a href="/" class="logo" title="메인으로 이동"><img src="../images/common/logo.png" alt="맥도날드"></a></strong>
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
								<a href="/kor/store/main.do" class="dth1 current">Store</a>
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
								<a href="/kor/story/main.do" class="dth1  ">Story</a>
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
				
<div class="visualArea bgStore01" data-title="이벤트 매장찾기" data-desc="매장찾기">
					<div class="inner">
						<h1 class="titDep1">매장찾기</h1>
						<ul class="navPath">
							<li><a href="/kor/main.do">Home</a></li>
							<li><a href="/kor/store/main.do">Store</a></li>
							<li><a href="/kor/store/main.do">매장찾기</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<ul class="tabType01">
							<li><a href="/kor/store/main.do" role="button">지역별</a></li>
							<li><a href="/kor/store/event.do" role="button" aria-selected="true">이벤트매장</a></li>
						</ul>
						<div class="eventStore2">
							<div class="topInfo">
								<h2>스트로베리 아이스크림 판매 매장입니다.</h2>
								<p>아래 매장 리스트를 확인해주세요!</p>
							</div>
							<ul class="storeList">
								<li style="">가산디지털</li>
								<li style="">강남2호점</li>
								<li style="">강남구청</li>
								<li style="">강남삼성DT</li>
								<li style="">강릉</li>
								<li style="">경성대점</li>
								<li style="">경주보문DT</li>
								<li style="">경주용강DT</li>
								<li style="">경주황남DT</li>
								<li style="">고양 DT</li>
								<li style="">고양삼송DT</li>
								<li style="">고양풍동DT</li>
								<li style="">과천뉴코아</li>
								<li style="">광명DT점</li>
								<li style="">광명 철산역</li>
								<li style="display:none">광명한신</li>
								<li style="display:none">광주동림</li>
								<li style="display:none">광주쌍촌DT</li>
								<li style="display:none">구로디지털  </li>
								<li style="display:none">구미옥계DT</li>
								<li style="display:none">구미인동DT</li>								
								<li style="display:none">군산나운DT</li>
								<li style="display:none">김천평화DT</li>
								<li style="display:none">김포장기DT</li>
								<li style="display:none">김해삼계DT</li>
								<li style="display:none">김해삼정</li>
								<li style="display:none">김해외동DT</li>
								<li style="display:none">김해장유DT</li>
								<li style="display:none">남양주진접 DT</li>
								<li style="display:none">남양주평내 DT</li>
								<li style="display:none">노원한신</li>
								<li style="display:none">달동점</li>
								<li style="display:none">달맞이점</li>
								<li style="display:none">당감점</li>
								<li style="display:none">대구다사DT</li>
								<li style="display:none">대구동호DT</li>
								<li style="display:none">대구복현DT</li>
								<li style="display:none">대구상인DT</li>
								<li style="display:none">대구수성DT</li>
								<li style="display:none">대구이곡DT</li>
								<li style="display:none">대구침산</li>
								<li style="display:none">대구태전DT</li>
								<li style="display:none">대전가수원DT</li>
								<li style="display:none">대전가장DT</li>
								<li style="display:none">대전부사DT</li>
								<li style="display:none">대전한신</li>
								<li style="display:none">대학로</li>
								<li style="display:none">동두천지행DT</li>
								<li style="display:none">동성로교보점</li>
								<li style="display:none">동성로점</li>
								<li style="display:none">동수원GS DT</li>
								<li style="display:none">동아대점</li>
								<li style="display:none">동판교</li>
								<li style="display:none">등촌DT</li>
								<li style="display:none">마리오아울렛</li>
								<li style="display:none">마산신포  </li>
								<li style="display:none">마석DT</li>
								<li style="display:none">망원</li>
								<li style="display:none">명동  </li>
								<li style="display:none">목동</li>
								<li style="display:none">목포남악DT</li>
								<li style="display:none">목포석현  </li>
								<li style="display:none">미아DT</li>
								<li style="display:none">밀양DT점</li>
								<li style="display:none">방배</li>
								<li style="display:none">범일 SK DT</li>
								<li style="display:none">보라매역점</li>
								<li style="display:none">부산구서DT</li>
								<li style="display:none">부산기장DT</li>
								<li style="display:none">부산남천DT</li>
								<li style="display:none">부산다대DT</li>
								<li style="display:none">부산대 2호점</li>
								<li style="display:none">부산덕천DT</li>
								<li style="display:none">부산범전DT</li>
								<li style="display:none">부산송정DT</li>
								<li style="display:none">부산엄궁DT</li>
								<li style="display:none">부산영동DT</li>
								<li style="display:none">부산온천 SK DT</li>
								<li style="display:none">부산정관DT</li>
								<li style="display:none">부산초량DT</li>
								<li style="display:none">부산하단DT</li>
								
								<li style="display:none">부천역곡역DT</li>
								<li style="display:none">부천원종DT</li>
								<li style="display:none">부평 SK DT</li>
								<li style="display:none">부평중앙역</li>
								<li style="display:none">사천 DT</li>
								<li style="display:none">산본이마트</li>
								<li style="display:none">삼성역</li>
								<li style="display:none">상계DT</li>
								<li style="display:none">상무대점</li>
								<li style="display:none">서귀포DT</li>
								<li style="display:none">서면 3호점</li>							
								<li style="display:none">서울둔촌DT</li>
								<li style="display:none">서울상암 DMC</li>
								<li style="display:none">서울시청</li>
								<li style="display:none">서울시흥DT</li>
								<li style="display:none">서초뱅뱅</li>
								<li style="display:none">석촌역</li>
								<li style="display:none">성균관대</li>
								<li style="display:none">속초DT  </li>
								<li style="display:none">송파잠실DT</li>
								<li style="display:none">수내역</li>
								<li style="display:none">수원GS DT</li>
								<li style="display:none">수원경희대점</li>
								<li style="display:none">수원망포DT</li>
								<li style="display:none">수원성</li>
								<li style="display:none">수원성균관대</li>
								<li style="display:none">수원세류DT</li>
								<li style="display:none">수원인계DT</li>
								<li style="display:none">수원정자DT</li>
								<li style="display:none">수유</li>
								<li style="display:none">순천조례DT</li>
								<li style="display:none">숭실대점</li>
								<li style="display:none">신내</li>
								<li style="display:none">신마산점</li>
								<li style="display:none">신사역점</li>
								<li style="display:none">신월DT점</li>
								<li style="display:none">안산고잔DT</li>
								<li style="display:none">안암</li>
								<li style="display:none">안양</li>
								<li style="display:none">압구정CGV</li>
								<li style="display:none">양재 SK DT</li>
								<li style="display:none">양재동</li>
								<li style="display:none">양평 SK DT</li>
								<li style="display:none">여수학동DT</li>
								<li style="display:none">연세대</li>
								<li style="display:none">연희DT</li>
								<li style="display:none">오산</li>
								<li style="display:none">외대점</li>
								<li style="display:none">용봉DT</li>
								<li style="display:none">용인동백DT</li>
								<li style="display:none">용인마북DT</li>
								<li style="display:none">용인보라DT</li>
								<li style="display:none">용인수지 DT</li>
								<li style="display:none">용인시청DT</li>
								<li style="display:none">용인신갈DT</li>
								<li style="display:none">울산병영</li>
								<li style="display:none">울산삼산DT</li>
								<li style="display:none">울산삼산로DT</li>
								<li style="display:none">울산옥동DT</li>
								<li style="display:none">울산옥현점</li>
								<li style="display:none">울산일산DT</li>
								<li style="display:none">울산호계 SK</li>
								<li style="display:none">웅상DT  </li>
								<li style="display:none">원동점</li>
								<li style="display:none">위례신도시</li>
								<li style="display:none">은평이마트</li>
								<li style="display:none">의왕오전DT</li>
								<li style="display:none">의정부역</li>
								<li style="display:none">이마트 창원점</li>
								<li style="display:none">이천DT</li>
								<li style="display:none">이태원</li>
								<li style="display:none">익산영등DT</li>
								<li style="display:none">인천계산DT</li>
								<li style="display:none">인천구산 DT</li>
								<li style="display:none">잠실역</li>
								<li style="display:none">전남대DT</li>
								<li style="display:none">전주덕진DT</li>
								<li style="display:none">전주송천DT</li>
								<li style="display:none">전주평화DT</li>
								<li style="display:none">전주효자DT</li>
								<li style="display:none">정발산</li>
								<li style="display:none">제주공항DT</li>
								<li style="display:none">제주노형  </li>
								<li style="display:none">제주시청DT</li>
								<li style="display:none">제주월드컵스타디움DT</li>
								<li style="display:none">제주일도 DT</li>
								<li style="display:none">제주탑동점</li>
								<li style="display:none">종암 SK</li>
								<li style="display:none">좌동점</li>
								<li style="display:none">중계</li>
								<li style="display:none">중계역</li>
								<li style="display:none">중동DT</li>
								<li style="display:none">진주가좌DT</li>
								<li style="display:none">진주칠암</li>
								<li style="display:none">진해용원DT</li>
								<li style="display:none">진해자은DT</li>
								<li style="display:none">창원내서DT</li>
								<li style="display:none">창원사파DT</li>
								<li style="display:none">창원상남</li>
								<li style="display:none">천안고속버스터미널</li>
								<li style="display:none">천안두정  </li>
								<li style="display:none">천안원성DT</li>
								<li style="display:none">청담 DT</li>
								<li style="display:none">청주금천DT</li>
								<li style="display:none">청주분평</li>
								<li style="display:none">청주비하DT</li>
								<li style="display:none">청주성화</li>
								<li style="display:none">청주율량DT</li>
								<li style="display:none">춘천퇴계DT</li>
								<li style="display:none">춘천후평DT</li>
								<li style="display:none">충남서산DT</li>
								<li style="display:none">충남논산DT</li>
								<li style="display:none">충남당진DT</li>
								<li style="display:none">충남보령DT</li>
								<li style="display:none">충주교현DT</li>
								<li style="display:none">코엑스점</li>
								<li style="display:none">통영죽림 DT</li>
								<li style="display:none">판교테크노벨리</li>
								<li style="display:none">평택 GS DT</li>
								<li style="display:none">평택 SK</li>
								<li style="display:none">포천</li>
								<li style="display:none">포항 장성DT</li>
								<li style="display:none">포항남부DT</li>
								<li style="display:none">포항북부DT</li>
								<li style="display:none">한티  </li>
								<li style="display:none">해운대DT</li>
								<li style="display:none">행신</li>
								<li style="display:none">홍제역</li>
								<li style="display:none">화명동점</li>
								<li style="display:none">화성향남DT</li>
								<li style="display:none">화정</li>
							</ul>
							<div class="btnMore">
								<button type="button" class="more" onclick="nextShow()">더보기</button>
							</div>

					</div>
				</div>
				<script>
				function nextShow(){
					$(".storeList > li:hidden").each(
							function(i,ob){ 
								if(i<15)
									$(ob).show();
								}
							);
					if($(".storeList > li:hidden").length == 0){$(".btnMore").hide()} 
					
				}
				$(document).ready(function(){
					nextShow();
				});
				</script>

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
	<!-- //wrapper -->
	





    
     
	<div class="dimmed"></div>
	<div id="materialPop" class="popLayer layerS">
		<div class="layCont" id="materialPopCon">
			
		</div>
		<button type="button" class="layClose">닫기</button>
	</div>
	<script id="materialPopText" type="text/templet">
	<div class="scroll ingrInfo">
	<div class="ingrTop">
		<div class="img"><img src="{pc_image_url}" alt="{pc_kor_alt}"></div>
		<h2 class="tit">{pc_kor_desc}</h2>
	</div>
	<div class="ingrCon">
		{pc_kor_desc}
	</div>
	</div>
	</script>
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
	<script>

	if($(location).attr('pathname') == "/kor/kitchen_step1.do"){//주방 공개의 날에서만 지도 호출 2019-12-18
		var mapPop;
		var marker;
	    var mapContainerPop = document.getElementById('storePopMap'),
		mapOptionPop = {
	         center: new daum.maps.LatLng(37.494879, 127.130762),
	         level: 3
		};
		mapPop = new daum.maps.Map(mapContainerPop, mapOptionPop); // 지도를 생성합니다
		$(window).on("load",function(){
			$("#store01").select(function(){ getGugunJsonp();});
		}); 
	}
	
	function showStorePopMaker(obj){
			if(marker!=undefined && marker!=null)marker.setMap(null);    
			
			var positions = 
				{
			        title: $(obj).data("a_company"), 
			        latlng: new daum.maps.LatLng($(obj).data("a_loc_x"),$(obj).data("a_loc_y"))
			    };
			var imageSize = new daum.maps.Size(54, 70); 
		    // 마커 이미지를 생성합니다    
		    var markerImage = new daum.maps.MarkerImage("/kor/images/whats/ico_marker.png", imageSize); 
		    
		    // 마커를 생성합니다
		     marker= new daum.maps.Marker({
		        map: mapPop, // 마커를 표시할 지도
		        position: positions.latlng, // 마커를 표시할 위치
		        title : positions.title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    });
		    marker.setMap(mapPop);  
		    var mLabel = new kakao.maps.InfoWindow({
		        position: positions.latlng, // 지도의 중심좌표에 올립니다.
		        content: positions.title // 인포윈도우 내부에 들어갈 컨텐츠 입니다.
		    });
		    mLabel.open(mapPop, marker)
		    mapPop.panTo(positions.latlng);
	}
	function getGugunJsonp(){
		if($("#store01").val()==""){
			$("#store02").html("<option value=\"\">전체</option>");
			commonJs.select.update($('#store02'));
		}else{
			$.support.cors = true;
			$.ajax({
			    url : "/kor/kitchen_getGugun.do",
			    data : {a_sido:$("#store01").val()},
			    dataType : "json",
			    success: function(data) {
			    	$("#store02").html("");
					var html="";
					for (var i=0;i<data.list.length;i++){
						html += "<option value='"+data.list[i].gugun+"'>"+data.list[i].gugun+"</option>";
					}
					$("#store02").append(html);
					commonJs.select.update($('#store02'));
			    }
			});
		}
	}
	function getStoreList(){
		if($.trim($("#store01").val()) =="" && $.trim($("#store02").val())=="" && $.trim($("#store03").val())==""){ 
			alert("매장명을 입력해주세요"); 
			$("#store03").focus();
		}else{
			$.post("/kor/kitchen_getStoreList.do",
					{a_sido:$("#store01").val(), a_gugun:$("#store02").val(), a_company:$("#store03").val() },
				   function(data){
						var html="";
						if(data.list.length > 0){
							$("#storePopListUl").html("");
							for (var i=0;i<data.list.length;i++){
								html += makeHtml("storeListPop",data.list[i]);
							}
							altEscapeTag();
							$("#storePopListUl").append(html);
							$("#storeS").show();
							$("#storePopMap").show();
							$("#storeN").hide();
						}else{
							$("#searchWordShow").html($("#store03").val());
							$("#storePopMap").hide();
							$("#storeS").hide();
							$("#storeN").show();
						}
						$(window).trigger('resize');
				   },
				   "json");
		}
	}
	function selectStorePop(){
		if(		$("input:radio[name='store_info']:checked").length>0  ){
			$("#scode").val($("input:radio[name='store_info']:checked").val());
			$("#store_name").val($("input:radio[name='store_info']:checked").data("a_company"));
			commonJs.popup.basic.hide($('#storeSearch'));
			getEvent();
		}else{
			alert("매장을 선택하셔야 합니다");
		}
	}
	</script>
	<script id="storeListPop" type="text/templet">
					<li>
						<span class="formWrap labelR">
							<input type="radio" name="store_info" id="ck_{a_scode}" data-a_loc_x="{a_loc_x}" data-a_loc_y="{a_loc_y}" data-a_scode="{a_scode}" data-a_company="{a_company}"  value="{a_scode}" onclick="showStorePopMaker(this)">
							<label for="ck_{a_scode}">{a_company}</label>	
						</span>
						<div class="addrArea">
							<p class="addr"><em class="hide">주소</em>{a_address_2}</p>
							<p class="phone"><em class="hide">연락처</em><span>{a_tel_1}</span><span>{a_tel_2}</span></p>
						</div>
					</li>
	</script>
	
			<!-- 크루 이야기 (L) -->
	<div class="popLayer layerS layerType03" id="crew_1">
		<div class="layCont">
			<div class="scroll crewDetail">
				<div class="contHead">
					<div class="img"><img src="/kor/images/story/img_crew_pop01.jpg" alt="목포 남악 DT점 김지웅 매니저"></div>
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
					<div class="img"><img src="/kor/images/story/img_crew_pop02.jpg" alt="경희대점 권영미 크루"></div>
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
					<div class="img"><img src="/kor/images/story/img_crew_pop03.jpg" alt="미아역점 이지혁 라이더"></div>
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
					<div class="img"><img src="/kor/images/story/img_crew_pop04.jpg" alt="석촌역점 이나라 크루"></div>
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
	
		<script type="text/javascript">
	$(function()
		{
		
		});
	</script>	


</div>
</body>
</html>