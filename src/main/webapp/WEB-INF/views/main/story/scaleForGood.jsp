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
		<header class="header" style="margin-top: 0px;"><!-- 상단 고정 fixed 클래스 추가, 메뉴의 depth1 오버시 open 클래스 추가 -->
			
    



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
		
			<!-- 히스토리 탭 처리 스크립트 -->
					<script>
						$(document).ready(function(){
							
								$('.tabMn, .subtabMn').on('click', 'li>a', function(evt){
									evt.preventDefault(); /*일반적으로 브라우저의 구현에 의해 처리되는 기존의 액션이 진행 되지않고 결과적으로 해당 이벤트 발생 X*/
									
									var _this = $(this);
									$(this).closest('li').siblings('li').find('a').attr('aria-selected', false);	// 버튼 색상 변경
									$(this).attr('aria-selected', true);
									
									var ul = _this.closest('ul', 'ol');
									
									 if( ul.hasClass('tabMn')) {
								         /*메인 탭의 div를 모두 숨긴다*/  
										 $('.tabCont').hide();
								          /*지금 선택한 Mn탭의 subTap 선택된 보여준다*/
								           var _href = $( _this.attr('href')  ).find('>ul>li>a[aria-selected=true],>ol>li>a[aria-selected=true]').attr('href');
								           $( _href  ).show();
								           
								           
								          
								        } else if( ul.hasClass('subtabMn') ){
								           $('.subtabCont').hide();
								        }
								        $( _this.attr('href')  ).show();
								});
						
							
							
								
							  	
							
						});
					</script>
		
		<div id="container">
			<div class="content">
				 
<div class="visualArea bgStory02" data-title="맥도날드 사회적 책임" data-desc="스케일포굿">
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
				<div class="contArea others">
					<div class="inner">
						<div class="scaleforgood">
							<h2 class="titDep2">‘스케일 포 굿(Scale for Good) 캠페인’은 무엇인가요?</h2>
							<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_scalefogood.jpg" alt="스케일 포 굿(Scale for Good) 캠페인"></div>
							<h3 class="titDep4">스케일 포 굿 캠페인은 맥도날드가 책임 있는 글로벌 기업으로<br>전 세계적으로 발생하고 있는 사회, 환경적 문제해결에 기여하고자 시작한 글로벌 캠페인입니다.</h3>
							<p role="text" class="txtInfo">맥도날드는 전 세계 120개 마켓에서 37,000여개 레스토랑을 운영하며 매일 6,900만명의 고객이 찾는<br>책임 있는 글로벌 기업입니다. 맥도날드의 작은 변화는 전 세계에 아주 큰 변화를 만들어 낼 수 있습니다.</p>
						</div>
						<div class="globalMc">
							<h2 class="titDep2">글로벌 맥도날드 5대 과제</h2>
							<ul class="tabType01 tabMn">
								<li><a href="#tab01" role="button" aria-selected="false" class="tabTit">온실가스 감축</a><!-- 클릭시 li class="on"추가,삭제 --></li>
								<li class=""><a href="#tab02" role="button" class="tabTit" aria-selected="false">지속가능한 공급</a>
								</li>
								<li class=""><a href="#tab03" role="button" class="tabTit" aria-selected="false">친환경 포장재 사용 및 재활용</a></li>
								<li class=""><a href="#tab04" role="button" class="tabTit" aria-selected="false">가족 고객을 위한 약속</a></li>
								<li class="on"><a href="#tab05" role="button" class="tabTit" aria-selected="true">사람에 대한 투자</a></li>
							</ul>
							<!-- 온실가스 감축 -->
							<div class="tabCont" id="tab01" style="display: none;">
								<h3 class="hide">온실가스 감축</h3>
								<ul class="assignList item01">
									<li><span>전국 레스토랑에<br>친환경 고효율 LED 조명 설치</span>
									</li>
									<li><span>태양광 발전 레스토랑 시범 운영<br>(부산 및 제주 지역 5개 레스토랑)</span>
									</li>
									<li><span>맥딜리버리에 친환경 전기바이크 사용<br>(일부 지역 운영 중)</span>
									</li>
									<li><span>폐식용유를 친환경<br>바이오디젤 원료로 재활용</span>
									</li>
								</ul>
								<p class="pointTxt">전 세계 레스토랑 및 사무실, 원재료 공급 및 유통 과정에서 발생하는 온실가스 배출량을 줄이겠습니다.</p>
							</div>
							<!-- //온실가스 감축 -->
							<!-- 지속가능한 공급 -->
							<div class="tabCont" id="tab02" style="display: none;">
								<h3 class="hide">지속가능한 공급</h3>
								<ul class="assignList item02">
									<li><span>‘세계보건가구(WHO)’가 규정한<br>유해 항생제를 사용하지 않은<br>건강한 닭고기만을 사용</span>
									</li>
									<li><span>맥카페 커피 원두는<br>‘열대우림동맹’ 인증 받은<br>친환경 원두로 100% 교체</span>
									</li>
									<li><span>2025년까지 공급 받는 계란을<br>‘동물복지란’으로 교체예정</span>
									</li>
								</ul>
								<p class="pointTxt">농장에서 레스토랑에 이르기까지 지속 가능한 원재료 도입을 위해 힘쓰겠습니다.</p>
							</div>
							<!-- //지속가능한 공급 -->
							<!-- 친환경 포장재 사용 및 재활용 -->
							<div class="tabCont" id="tab03" style="display: none;">
								<h3 class="hide">친환경 포장재 사용 및 재활용</h3>
								<ul class="assignList item03">
									<li><span>국내 외식업계 최초 ‘산림관리협의회’ 인증<br>친환경 포장재 사용 (2019년 상반기부터)</span>
									</li>
									<li><span>레스토랑에서 제공하는 종이봉투에<br>친환경 재생용지 사용</span>
									</li>
									<li><span>레스토랑 내 다회용 컵 사용하여<br>1회 용품 감소 노력</span>
									</li>
								</ul>
								<p class="pointTxt">친환경 포장재를 사용하고 더 많이 재활용해 지구를 살기 좋은 곳으로 만들겠습니다.</p>
							</div>
							<!-- //친환경 포장재 사용 및 재활용 -->
							<!-- 가족 고객을 위한 약속 -->
							<div class="tabCont" id="tab04" style="display: none;">
								<h3 class="hide">가족 고객을 위한 약속</h3>
								<ul class="assignList item04">
									<li><span>해피밀 등 가족 고객을 위한<br>메뉴에 보다 건강한 옵션 제공<br>(2019년 하반기부터)</span>
									</li>
									<li><span>해피밀에 책을 제공하는<br>‘해피밀 리더스 프로그램’ 도입<br>(2019년 하반기부터)</span>
									</li>
									<li><span>부산대학교 어린이 병원에 중증 어린이 환자와<br>가족들이 병원 근처에 머물며 치료를 받을 수 있는<br>‘로널드 맥도날드 하우스’ 건립 후원<br>(2018년 하반기 완공 예정)</span>
									</li>
								</ul>
								<p class="pointTxt">어린이를 동반한 가족 고객에게 더욱 건강한 메뉴 옵션과 즐거운 경험을 제공하겠습니다.</p>
							</div>
							<!-- //가족 고객을 위한 약속 -->
							<!-- 사람에 대한 투자 -->
							<div class="tabCont" id="tab05" style="display: block;">
								<h3 class="hide">사람에 대한 투자</h3>
								<ul class="assignList item05">
									<li><span>‘단독기업형’ 프로그램<br>전 세계 퀵서비스레스토랑 업계 리더로써<br>쌓아온 노하우를 활용해 직원들이<br>외식산업 전문가로 성장할 수 있도록<br>본사교육 및 현장 훈련 진행</span>
									</li>
									<li><span>고용노동부와 함께 ‘일학습병행제’<br>시행하여 직원들이 일과 학업을 병행하며<br>전문가로 성장할 수 있도록 지원</span>
									</li>
									<li><span>‘대학연계형’ 프로그램<br>일을 하면서 학업을 지속하고자 하는<br>직원들에게 대학교육 및 학사학위<br>취득기회 제공</span>
									</li>
								</ul>
								<p class="pointTxt">매년 100만명 이상의 직원들이 맥도날드에서 일하며 업무 역량을 키우는 동시에 학업을 병행하고 있습니다.</p>
							</div>
							<!-- //사람에 대한 투자 -->
							<div class="btnArea">
								<a href="/story/society/list.do" role="button" class="btnList"><span>목록보기</span></a>
							</div>
						</div>
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