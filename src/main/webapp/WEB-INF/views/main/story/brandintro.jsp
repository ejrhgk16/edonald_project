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
						<ul class="tabType01">
							<li><a href="../kor/story/intro/brandintro.do" role="button" aria-selected="true">맥도날드 소개</a></li>
							<li><a href="../kor/story/intro/brandhistory.do" role="button">맥도날드 철학 및 역사</a></li>
						</ul>
						<div class="brnadCont01">
							<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_brand_cont01.jpg" alt="1955 맥도날드 매장 이미지"></div>
							<h2 class="titDep2 mt50">세계 1위의 푸드서비스 기업, 맥도날드</h2>
							<p class="txtInfo">전세계 120개국 3만 7천여 개의 매장에서 매일 6,900만명의 고객들에게 제품과 서비스를 제공하고 있는 맥도날드는 전세계인들이 사랑하는<br>
							퀵 서비스 레스토랑(QSR, Quick Service Restaurant)이자 세계 1위의 푸드서비스 기업으로, 고객에게 더 나은 경험을 제공함으로써<br>
							'고객이 가장 좋아하는 장소이자 음식을 즐기는 최고의 방법(Our Customer’s Favorite Place and Way to Eat)'이 되기 위해 노력하고 있습니다. 
						</p></div>
						<div class="brnadCont02">
							<h3 class="titDep3">한국 맥도날드의 첫 걸음</h3>
							<div class="socialList">
								<ul>
									<li>
										<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_brand_cont02_01.jpg" alt="서울올림픽 이미지"></span>
										<strong>1988 서울 올림픽을 개최하며 서울이 세계 속에<br>우뚝 섰던 그때의 감동을 기억하십니까?</strong>
										<p>159개국의 83,190명의 선수가 참가한 1988 서울 올림픽과 함께 맥도날드가<br>한국을 찾아왔습니다. 이후 맥도날드는 빅맥, 후렌치 후라이 그리고 해피밀과 같이<br>세계적으로 유명한 메뉴를 선보이며 한국 소비자들이 선호하는 즐거운 외식 공간으로<br>사랑을 받고 있습니다.</p>
									</li>
									<li>
										<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_brand_cont02_02.jpg" alt="맥도날드 압구정점 이미지"></span>
										<strong>한국 첫 맥도날드 매장, 압구정점 그랜드 오프닝</strong>
										<p>맥도날드는 가장 트렌디한 장소로 떠오르는 압구정동에 첫 레스토랑을 열었습니다.<br>수백 명의 고객들이 레스토랑 앞에 길게 줄을 늘어서며 맥도날드의 성공적인 시작을<br>함께 축하했고 이를 통해 맥도날드가 한국 시장에서 지속적으로 성장할 수 있다는<br>잠재력을 보여 주었습니다.</p>
									</li>
									<li>
										<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_brand_cont02_03.jpg" alt="맥도날드의 미래 이미지"></span>
										<strong>우리는 계속해서 나아갑니다.</strong>
										<p>맥도날드는 지난 31년 동안 국내 협력 업체와 긴밀하게 일하고, 현재 15,000여명의<br>직원이 근무하는 등 한국 사회의 고용 창출에 기여하고 있습니다. 또한, 30여개 이상의<br>국내외 비즈니스를 지원해 왔습니다. 맥도날드는 좋은 품질의 제품을 합리적인 가격과<br>최상의 서비스 제공을 통해 고객이 가장 선호하는 장소로 거듭나기 위해 지속적으로<br>노력할 것입니다.</p>
									</li>
								</ul>
							</div>
						</div>
					</div>
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
					<div class="history">
						<div class="inner">
							<h4>맥도날드가 걸어온 길</h4>
							<ul class="tabType01 tabMn totalTabMn">
								<li><a href="#tab02_01" role="button" aria-selected="true">한국</a></li>
								<li><a href="#tab02_02" role="button">글로벌</a></li>
							</ul>
							<div class="tabCont" id="tab02_01" style="display:block">
								<ul class="historyTab subtabMn">
									<li><a href="#tab02_01_01" role="button" aria-selected="true">2010<span class="hide">년도</span></a></li>
									<li><a href="#tab02_01_02" role="button">2000<span class="hide">년도</span></a></li>
									<li><a href="#tab02_01_03" role="button">1990<span class="hide">년도</span></a></li>
								</ul>
								
								
								<div class="subtabCont" id="tab02_01_01" style="display:block">
									<ul class="historyList">
										<li class="year2019">
											<strong>2019<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>제주, 광주 지역 맥딜리버리 바이크를 친환경 전기 바이크로 전면 교체</span>
													<span>서울시와 전기바이크 교체 업무협약(MOU) 체결</span>
												</div>
												<div class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_histoy_kor_2019.png" alt="전기바이크 이미지"></div>
											</div>
										</li>
										<li class="year2018">
											<strong>2018<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt"><span>2018 평창 동계올림픽 공식 후원</span></div>
												<div class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_histoy_kor_2018.png" alt="평창동계올림픽 이미지"></div>
											</div>
										</li>
										<li class="year2017">
											<strong>2017<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt"><span>프리미엄 수제 버거 '시그니처 버거' 전국 런칭</span></div>
											</div>
										</li>
										<li class="year2016">
											<strong>2016<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>국내 첫 미래형 매장 상암 DMC점 오픈</span>
													<span>슈비버거 슈슈버거 출시</span>
													<span>조주연 대표이사 부임</span>
												</div>												
											</div>
										</li>
										<li class="year2015">
											<strong>2015<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt"><span>프리미엄 수제 버거 '시그니처 버거' 첫 출시</span></div>
											</div>
										</li>
										<li class="year2014">
											<strong>2014<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt"><span>1955 버거 출시</span></div>
											</div>
										</li>
										<li class="year2013">
											<strong>2013<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>한국 진출 25주년</span>
													<span>조 엘린저(Joe Erlinger) 대표이사 부임</span>
													<span>‘행복의 버거’ 캠페인 시작</span>
													<span>‘아빠와 함께하는 축구교실’ 및 ‘다문화 가정 어린이 축구교실’ 프로그램 시작</span>
												</div>
											</div>
										</li>
										<li class="year2012">
											<strong>2012<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>새로운 메뉴 플랫폼 행복의 나라 메뉴 출시</span>
													<span>새로운 서비스 플랫폼 맥카페(McCafé) 도입</span>
												</div>
											</div>
										</li>
										<li class="year2011">
											<strong>2011<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>온라인 축구 매뉴얼 사커 툴킷(Soccer Toolkit) 런칭</span>
												</div>
											</div>
										</li>
										<li class="year2010">
											<strong>2010<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>NCSI(국가 고객 만족도 지수) QSR(퀵 서비스 레스토랑) 분야 1위 수상</span>
													<span>쿼터 파운더 치즈 버거 국내 소개</span>
													<span>전국 매장에서 무료 와이파이(Wi-fi) 서비스 시작</span>
													<span>션 뉴튼(Sean Newton) 대표이사 부임</span>
												</div>
											</div>
										</li>
									</ul>
								</div>
								<div class="subtabCont" id="tab02_01_02">
									<ul class="historyList">
										<li class="year2009">
											<strong>2009<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>프리미엄 커피 브랜드 맥카페(McCafé) 출시</span>
												</div>
											</div>
										</li>
										<li class="year2008">
											<strong>2008<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>한국 진출 20주년</span>
												</div>
											</div>
										</li>
										<li class="year2007">
											<strong>2007<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>맥딜리버리(McDelivery) 서비스 시작</span>
													<span>트랜스 지방(TFA)을 낮춘 후렌치 후라이로 전면 교체</span>
													<span>로날드 맥도날드 어린이 축구 교실 ‘방과후 프로그램’ 시작</span>
													<span>한국RMHC, 양산 부산대학교 어린이 병원에 어린이 병원 학교 설립</span>
													<span>한국RMHC, 소아암 아동의 ‘학교 복귀 및 적응을 위한 통합 프로그램’ 개발</span>
													<span>재단법인 로날드맥도날드하우스 출범</span>
												</div>
											</div>
										</li>
										<li class="year2006">
											<strong>2006<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>아침 메뉴 맥모닝(McMorning) 국내 소개</span>
													<span>‘로날드 맥도날드 어린이 축구 교실’ 출범</span>
												</div>
											</div>
										</li>
										<li class="year2005">
											<strong>2005<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>24시간 매장 오픈 서비스 시작</span>
													<span>연대 세브란스 어린이 병원에 ‘어린이 병원 학교’ 설립</span>
													<span>맥런치(McLunch) 메뉴 국내 소개</span>
												</div>
											</div>
										</li>
										<li class="year2003">
											<strong>2003<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>맥스파이시 상하이 버거(구 상하이 스파이스 치킨 버거) 출시</span>
												</div>
											</div>
										</li>
									</ul>
								</div>
								<div class="subtabCont" id="tab02_01_03">
									<ul class="historyList">
										<li class="year1997">
											<strong>1997<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>불고기 버거 출시</span>
												</div>
											</div>
										</li>
										<li class="year1995">
											<strong>1995<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>100호점, 영동점 오픈</span>
												</div>
											</div>
										</li>
										<li class="year1992">
											<strong>1992</strong>
											<div class="yearCont">
												<div class="txt">
													<span>업계 최초로 드라이브 스루(Drive-Thru) 국내 도입</span>
												</div>
											</div>
										</li>
										<li class="year1988">
											<strong>1988<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_histoy_kor_1988.png" alt="맥도날드 압구정점 이미지"></div>
												<div class="txt">
													<span>맥도날드 1호점, 압구정점 오픈</span>
												</div>
											</div>
										</li>
										
									</ul>
								</div>
							</div>
							<!-- //한국 -->
							<div class="tabCont" id="tab02_02">
								<ul class="historyTab subtabMn">
									<li><a href="#tab02_02_01" role="button" aria-selected="true">2000</a></li>
									<li><a href="#tab02_02_02" role="button">1900</a></li>
								</ul>
								<div class="subtabCont" id="tab02_02_01" style="display:block">
									<ul class="historyList">
										<li class="yearG2017">
											<strong>2017<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>우버이츠(UberEATS)와의 맥딜리버리의 글로벌 런칭을 기념하며<br>7월 26일을 맥딜리버리 데이로 선정</span>
												</div>
											</div>
										</li>
										<li class="yearG2015">
											<strong>2015<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>미국 맥도날드 올데이 브랙퍼스트(All Day Breakfast) 론칭</span>
												</div>
											</div>
										</li>
										<li class="yearG2003">
											<strong>2003<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>9월 2일 맥도날드의 첫 글로벌 광고 캠페인 ‘I’m lovin’ it’독일 뮌헨에서 론칭</span>
												</div>
											</div>
										</li>
										<li class="yearG2002">
											<strong>2002<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>맥플러리가 캐나다 맥도날드 메뉴에 추가됨</span>
												</div>
											</div>
										</li>
									</ul>
								</div>

								<div class="subtabCont" id="tab02_02_02">
									<ul class="historyList">
										<li class="yearG1993">
											<strong>1993<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>호주 빅토리아에 세계 최초로 맥카페 오픈</span>
												</div>
											</div>
										</li>
										<li class="yearG1990">
											<strong>1990<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>1월 31일 러시아 모스크바 최초 맥도날드 레스토랑 오픈</span>
													<span>오픈일 30,000명 이상 방문</span>
												</div>
											</div>
										</li>
										<li class="yearG1984">
											<strong>1984<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>1월 14일 창업자 레이 크록 (Ray Kroc) 사망</span>
												</div>
											</div>
										</li>
										<li class="yearG1983">
											<strong>1983<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>미국 맥도날드 전체 레스토랑 메뉴에 치킨 맥너겟 추가</span>
												</div>
											</div>
										</li>
										<li class="yearG1975">
											<strong>1975<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>에그 맥머핀 메뉴에 추가</span>
												</div>
											</div>
										</li>
										<li class="yearG1974">
											<strong>1974</strong>
											<div class="yearCont">
												<div class="txt">
													<span>필라델피아에 로널드맥도날드 하우스 최초 개원</span>
												</div>
											</div>
										</li>
										<li class="yearG1973">
											<strong>1973<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>쿼터 파운더 및 쿼터 파운더 치즈 메뉴에 추가</span>
												</div>
											</div>
										</li>
										<li class="yearG1968">
											<strong>1968<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>빅맥 메뉴에 추가</span>
												</div>
											</div>
										</li>
										<li class="yearG1965">
											<strong>1965<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>피쉬버거 (Filet-O-Fish sandwich) 메뉴에 추가</span>
												</div>
											</div>
										</li>
										<li class="yearG1961">
											<strong>1961<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>주식회사 맥도날드 시스템(McDonald’s System, Inc.),</span>
													<span>270만 달러에 맥도날드 운영권 인수</span>
													<span>일리노이 주에 햄버거 대학 설립</span>
												</div>
											</div>
										</li>
										<li class="yearG1956">
											<strong class="fGrey">1956<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>프레드 터너(Fred Turner) 사장, 카운터 직으로 맥도날드에 입사</span>
												</div>
											</div>
										</li>
										<li class="yearG1955">
											<strong class="fGrey">1955<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>레이 크록, 최초의 맥도날드 매장 오픈</span>
												</div>
											</div>
										</li>
										<li class="yearG1954">
											<strong class="fGrey">1954<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_histoy_global_1954.png" alt="레이크록과 맥도날드 형제 이미지"></div>
												<div class="txt">
													<span>레이 크록, 맥도날드 형제 방문</span>
												</div>												
											</div>
										</li>
										<li class="yearG1949">
											<strong class="fGrey">1949</strong>
											<div class="yearCont">
												<div class="txt">
													<span>프렌치 프라이로 포테이토 칩 대체<br>밀크셰이크 (Triple Thick Milkshake) 메뉴 추가</span>
												</div>
											</div>
										</li>
										<li class="yearG1948">
											<strong class="fGrey">1948<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>메뉴를 9개로 줄이며 레스토랑 재오픈</span>
												</div>
											</div>
										</li>
										<li class="yearG1940">
											<strong class="fGrey">1940<span class="hide">년도</span></strong>
											<div class="yearCont">
												<div class="txt">
													<span>맥도날드 형제, McDonald’s Bar-B-Q 레스토랑 오픈</span>
												</div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<!-- //글로벌 -->
						</div>
					</div>
				</div>

			</div>
			<div class="aside fixedB">
				<a href="../kor/story/competition/farmToRestaurant.do" class="go_story" title="품질 이야기로 이동">품질 이야기</a>
				<a href="https://www.mcdelivery.co.kr/kr/" class="goDelivery" target="_blank" title="새창 열림">Mcdelivery</a>
			</div>
			<button type="button" class="btnTop fixedB">맨 위로 가기</button>
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