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
<script>
						$(document).ready(function(){
							
								$('.tabMn, .subtabMn').on('click', 'li>a', function(evt){
									evt.preventDefault(); /*일반적으로 브라우저의 구현에 의해 처리되는 기존의 액션이 진행 되지않고 결과적으로 해당 이벤트 발생 X*/
									
									var _this = $(this);	/*버튼 선택 했을때 다른 버튼들은 선택 안됨을 표시*/
									$(this).closest('li').siblings('li').find('a').attr('aria-selected', false);	// 버튼 색상 변경
									$(this).attr('aria-selected', true);
									
									var ul = _this.closest('ul', 'ol');
									
									
									if(ul.hasClass('foodTab')){  /* 푸트 탭을 누르면 배경 변경*/
										var name = $(this).closest('li').attr('class');
										
										$('.contArea').attr('data-background', name);
										
									} 
									if( ul.hasClass('tabMn')) {
								         /*메인 탭의 div를 모두 숨긴다*/  
										 $('.tabCont').hide();
								          /*지금 선택한 Mn탭의 subTap 선택된 보여준다*/
								           var _href = $( _this.attr('href')  ).find('>ul>li>a[aria-selected=true],>ol>li>a[aria-selected=true]').attr('href');
								           $( _href  ).show();
								           
								           var target = $(this).attr('href');	/*푸트 탭이 아닌 경우 배경 색을 하얀색으로*/
								           if(target !== '#tab01'){
								        	   $('.contArea').addClass('others');
								        	   
								           }else{
								        	   $('.contArea').removeClass('others');
								           }
								           
								          
								    } else if( ul.hasClass('subtabMn') ){
								           $('.subtabCont').hide();
								    }
								    $( _this.attr('href')  ).show();
								});
  	
							
						});
</script>
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
						<a href="../kor/store/rental.do" class="renter" title="임차문의로 이동">임차문의</a>					
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
				
				<div class="visualArea bgStory03" data-title="맥도날드 경쟁력" data-desc="농장에서 레스토랑까지">
					<div class="inner">
						<h1 class="titDep1">맥도날드 품질 이야기</h1>
						<p class="subCopy">우리가 엄격해질수록 버거는 더 맛있어지니까! <br>
							모두의 노력으로 엄격하고 꼼꼼하게 키워진 신선한 식재료가 모여, 마침내 맛있는 맥도날드 버거가 됩니다.</p>
						<ul class="navPath">
							<li><a href="../kor/main.do">Home</a></li>
							<li><a href="/story/main.do">Story</a></li>
							<li><a href="/story/competition/farmToRestaurant.do">맥도날드 품질 이야기</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea" data-background="food01">
					<div class="inner">
						<ul class="tabType01">
							<li><a href="/story/competition/farmToRestaurant.do" role="button" aria-selected="true">농장에서 레스토랑까지</a></li>
							<li><a href="/story/competition/faq.do" role="button">궁금한 모든 것을 알려드립니다</a></li>
						</ul>
						<h2 class="hide">농장에서 레스토랑까지</h2>
<!--  					<div class="img"><img src="../kor/images/story/img_competitive01.jpg" alt=""></div> -->
						<div class="competitive">
							<!-- 2022.1.12 비디오 추가 -->
							<div class="video">
								<div class="video_wrap">
        							<iframe src="https://www.youtube.com/embed/JIsLtkveKrA" title="100% 순 쇠고기, 더블 빅맥&amp;빅맥 BLT 출시 게시글" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
     							</div>
							</div>
						
							<div class="topArea">
								<ul class="farmTab tabMn totaltabMn">
									<li><a href="#tab01" role="button" aria-selected="true"><span class="step">STEP 01</span>원재료 준비와 가공</a></li>
									<li><a href="#tab02"><span class="step">STEP 02</span>재료 보관부터 배송까지</a></li>
									<li><a href="#tab03"><span class="step">STEP 03</span>레스토랑에서의 노력</a></li>
								</ul>
							</div>
							<div class="bottomArea">
								<div id="tab01" class="tabCont" style="display:block">
									<h3 class="hide">원재료 준비와 가공</h3>
<!-- 								<h4 class="titDep3">건강한 식재료가 만들어지는 원재료부터 알아볼까요?</h4> -->
									<p class="bottom_area_txtinfo">원재료 공급사에서는 좋은 재료를 준비하기 위해 엄격한 기준으로<br>원재료 수급 및 가공 과정을 관리하고 있습니다.</p>
									<ul class="foodTab subtabMn">
										<li class="food01"><a href="#subTab01" role="button" aria-selected="true">쇠고기 패티</a></li>
										<li class="food02"><a href="#subTab02">치킨패티</a></li>
										<li class="food03"><a href="#subTab03">빵</a></li>
										<li class="food04"><a href="#subTab04">양상추</a></li>
										<li class="food05"><a href="#subTab05">토마토</a></li>
										<li class="food06"><a href="#subTab06">달걀</a></li>
										<li class="food07"><a href="#subTab07">치즈</a></li>
										<li class="food08"><a href="#subTab08">양파</a></li>
									</ul>
									<div id="subTab01" class="subtabCont" style="display:block">
										<h5 class="hide">쇠고기</h5>
										<div class="foodCont">
											<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive01.png" alt=""></div>
											<div class="txt">
												<h6 class="titDep4">호주 청정 지역에서 키운 무방부제 &amp; 무첨가제 <br>100% 순 쇠고기 패티</h6>
												<p class="txtInfo">맥도날드 쇠고기 패티는 청정한 호주 대자연에서 깨끗함을 먹고 자란 100%
																   순 쇠고기로만 제조되며, 어떠한 첨가물이나 방부제도 사용되지 않았습니다.</p>
												<p class="txtInfo">‘쇠고기 이력번호’를 통해 생산부터 유통과정까지 철저하게 확인하고 있으며, 
												                   식품 안전 기준에 맞는 쇠고기만을 사용하기 위하여 만전을 기하고 있습니다.</p>
												<p class="notiTxt fBlack">쇠고기 이력번호 : 수입쇠고기유통이력관리시스템 사이트에서 조회 시 쇠고기의 세부 정보
																		(수출국 도축장, 가공장, 수출업체 및 도축, 수입일자 등)를 확인할 수 있는 번호</p>
											</div>
										</div>
									</div>
									<div id="subTab02" class="subtabCont">
										<h5 class="hide">치킨, 돼지고기</h5>
										<div class="foodCont">
											<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive02.png" alt=""></div>
											<div class="txt">
												<h6 class="titDep4">신선하고 안전한 재료로<br>엄선하여 만든 치킨 패티</h6>
												<p class="txtInfo">맥도날드 치킨 패티는 세계보건기구(WHO)에서 공표한 ‘주요항생제리스트(HPCIA)’ 에 포함된 항생제 및 방부제를 사용하지 않으며, 
																   식약처 등 정부에서 인증한 안전한 재료를 사용합니다.</p>
												<p class="txtInfo">또한, 맥도날드의 동물 복지 기준 (McDonald’s Animal Health &amp; Welfare)을 준수하는 도축장,
																   HACCP &amp; FSSC22000 인증 시설에서 생산됩니다. </p>
												<p class="txtInfo">맥스파이시 상하이 버거에는 국내산 통 닭가슴살을 사용합니다.</p>
												<p class="notiTxt fBlack">HPCIA(High Priority Critically Important Antimicrobials) : 사람에게 처방되는 항생제로 동물에게 사용될 경우, 
																		  이를 취식하는 사람에게도 영향을 줄 수 있는 항생제</p>
											</div>
										</div>
									</div>
									<div id="subTab03" class="subtabCont">
										<h5 class="hide">빵</h5>
										<div class="foodCont">
											<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive03.png" alt=""></div>
											<div class="txt">
												<h6 class="titDep4">매일 구워 배송 받는 햄버거 빵</h6>
												<p class="txtInfo">맥도날드에서 사용하는 햄버거 빵은 국제식품안전협회(GFSI*)의 식품안전시스템 규격 인증을 받은 공장에서, 60년 이상의 햄버거 빵 제조 기술을 바탕으로 생산된 우수한 품질의 제품입니다.</p>
												<p class="txtInfo">신선한 햄버거 빵을 고객들께 제공하게 위해, 하루 수요량에 맞춰 국내에서 직접 구운 햄버거 빵을 사용합니다. 레스토랑으로 배송을 받을 때는 외부 오염을 차단한 전용 탑차를 이용하여 신선도를 유지합니다.</p>
												<p class="notiTxt fBlack">GFSI (Global Food Safety Initiative) : 소비자에게 안전한 식품의 공급을 보장하기 위해, 식품 안전 관리 시스템의 지속적인 개선을 목표로 설립된 국제식품안전협회</p>
											    <p class="notiTxt">맥도날드에서 사용하는 햄버거 빵은 GFSI가 공인하는 식품안전경영시스템 (FSSC-22000)을 인증 받은 공장에서 생산되고 있습니다.</p>		
											</div>
										</div>
									</div>
									<div id="subTab04" class="subtabCont">
										<h5 class="hide">양상추</h5>
										<div class="foodCont">
											<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive04.png" alt=""></div>
											<div class="txt">
												<h6 class="titDep4">국제적인 우수 농산물 품질 관리 인증 제조사에서 공급하는 신선한 양상추</h6>
												<p class="txtInfo">농지의 물은 깨끗한지, 토양의 영양분은 풍부한지 농지 주위에 오염 요소는 없는지, 양상추가 자라는 농장부터 꼼꼼히 확인합니다.</p>
												<p class="txtInfo">수확된 양상추는 3번 이상 꼼꼼하게 세척하며, 신선함을 유지하기 위해 진공으로 포장하여, 가공한 지 2일 이내 배송센터로 배송됩니다.</p>
												<p class="notiTxt fBlack">국제적인 우수 농산물 품질 관리 시스템 인증  : 농산물의 생산단계부터 수확 후 포장단계까지 물과 토양관리에서부터
																		 농약,비료,중금속,미생물 등 신선농산물의 위해요소를 일정 허용수준 이하로 관리하는 제도이며, 농산물의 안전성 확보를 위한 기준</p>
												
												<p class="notiTxt">자연 재해 등 불가피한 경우가 발생될 경우, 수급 업체가 변동될 수 있습니다.</p>
											</div>
										</div>
									</div>
									<div id="subTab05" class="subtabCont">
										<h5 class="hide">토마토</h5>
										<div class="foodCont">
											<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive05.png" alt=""></div>
											<div class="txt">
												<!-- 2021.01.05 문구 수정 -->
												<h6 class="titDep4">우리 땅에서 건강하게 키운 100% 국내산 토마토</h6>
												<p class="txtInfo">맥도날드에서는 우리 땅, 좋은 흙에서 정성껏 재배하여 수확한 100% 국내산<br> 토마토만을 사용합니다.
													
												</p>
												<p class="txtInfo">
													모든 토마토는 수확 후 식품 안전을 위해 2회 이상을 거쳐 꼼꼼하게 세척되며, 이후 살균 공정 과정까지  거쳐 신선하게 공급됩니다.
												</p>
											</div>
										</div>
									</div>
									
									<div id="subTab06" class="subtabCont">
										<h5 class="hide">계란</h5>
										<div class="foodCont">
											<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive06.png" alt=""></div>
											<div class="txt">
												<h6 class="titDep4">우수한 품질의 국내산 1+ 등급 계란</h6>
												<p class="txtInfo">표면 세척과 UV 살균 등 꼼꼼한 위생 처리를 거친 뒤, 레스토랑에서 조리될 때까지 7°C 이하로 냉장 보관되어 최상의 신선함을 자랑합니다. </p>
												<p class="notiTxt">자연 재해 등 불가피한 경우가 발생될 경우, 수급 업체가 변동될 수 있습니다.</p>
											</div>
										</div>
									</div>
									<div id="subTab07" class="subtabCont">
										<h5 class="hide">치즈</h5>
										<div class="foodCont">
											<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive07.png" alt=""></div>
											<div class="txt">
												<!-- 2021.01.05 문구 수정 -->
												<h6 class="titDep4">치즈 본연의 풍미가 가득한 뉴질랜드 방목 치즈</h6>
												<p class="txtInfo">청정 뉴질랜드의 목초지에서 자연 방목으로 풀을 먹인
													젖소의 원류로 제조하여<br> 치즈 본연의 풍미가 가득하며,고소하고 풍부한 맛을 자랑합니다.</p>
											</div>
										</div>
									</div>
									<div id="subTab08" class="subtabCont">
										<h5 class="hide">양파</h5>
										<div class="foodCont">
											<div class="img"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive08.png" alt=""></div>
											<div class="txt">
												<!-- 2021.01.05 문구 수정 -->
												<h6 class="titDep4">HACCP 인증 완료한 시설에서 공급하는 신선한 양파</h6>
												<p class="txtInfo">맥도날드에서 사용되는 모든 양파는 최고의 위생 시설과 관리 하에 꼼꼼한 살균과 세척 과정을 거친 후, 진공포장을 통해 더욱 더 안전하고 신선하게 공급됩니다.
												</p>
											</div>
										</div>
									</div>

								</div>
								<!-- //원재료 준비와 가공 -->
								<div id="tab02" class="tabCont">
									<h3 class="hide">재료 보관부터 배송까지</h3>
									<h4 class="titDep3">깐깐한 원재료 준비 및 가공 과정만큼 보관과 배송도 중요하겠죠?</h4>
									<p class="txtInfo">GFSI (FSSC22000) 인증을 받은 배송 업체에서는 재료의 신선도와 안전성을 유지하기 위해<br>철저하게 품질을 검사하여 보관하고 배송합니다.</p>
									<div class="socialList">
										<ul>
											<li>
												<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive02_01.jpg" alt=""></span>
												<strong>최적의 온도와 보안 상태를 확인하는<br>검수 및 하역 단계</strong>
												<p>깐깐한 관리를 통해 선별되고 가공된 원재료는 최적화된 온도에서 보관된 상태로 원재료 컨테이너에 봉인되어 물류 창고에 도착합니다. 물류업체에서 보안 확인을 마친 후, 트럭과 공장 사이의 공간이 한치의 틈도 없이 맞물리도록 도킹 작업을 수행, 최적의 온도를 유지하도록 한 후 재료를 하역합니다. 하역과정에서 재료의 온도를 확인하고 검수하는 과정을 거친 후에, 품질 검사증을 붙여 최적의 상태로 보관될 수 있도록 합니다.</p>
											</li>
											<li>
												<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive02_02_1.jpg" style="border-radius:8px" alt=""></span>
												<strong>안전과 청결은 기본, VeroFresh program 관리를 통한 배송단계</strong>
												<p>검수가 완료된 재료들은 레스토랑으로 이동되기 전까지 재료의 종류, 레스토랑 배송 날짜 등에 따라 분류하여 안전하고 깨끗하게 보관됩니다. 
												이 때, 재료들의 신선한 보관을 위해 최적의 온도 상태를 유지합니다. 재료의 유효기간과 상태를 다시 한 번 점검 후, 배송 차량이 
												보관 창고에 한 치의 틈도 없이 도킹되면, 재료들을 차량에 실어 목적지 레스토랑으로 출발하게 됩니다. 
												VeroFresh program 으로 실시간 제품과 차량의 온도를 확인이 가능하여 배송 전까지 온도이탈을 최소화 합니다.</p>
											</li>
										</ul>
									</div>
								</div>
								<!-- //재료 보관부터 배송까지 -->
								<div id="tab03" class="tabCont">
									<h3 class="hide">레스토랑에서의 노력</h3>
									<h4 class="titDep3">레스토랑에 도착한 식재료는 어떻게 관리될까요?</h4>
									<p class="txtInfo">레스토랑으로 배송된 식재료가 음식으로 조리되어 고객에게 전달되는 순간까지<br>맥도날드의 노력은 멈추지 않습니다.</p>
									<div class="division">
										<h5 class="titDep4">철저한 재료관리</h5>
										<div class="yellowBox">철저한 식재료 관리는 농장에서부터 배송센터 뿐만 아니라 레스토랑에서도 계속 되어야겠죠?<br>재료가 레스토랑으로 배송되면 매뉴얼을 준수, 신선한 상태로 유지하도록 최선을 다합니다.</div>
										<div class="socialList">
											<ul>
												<li>
													<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive03_01_01.jpg" alt=""></span>
													<strong>냉장/냉동고로 식재료를 입고할 때<br>적정 온도 유지는 필수</strong>
													<p>배송된 재료가 바로 냉장/냉동실로 이동될 수 있도록 사전에 필요한 공간을 확보해 둡니다. 그리고 항온 담요와 방수포를 덮어 식재료 온도를 유지하며, 바닥에 닿지 않도록 트레이를 사용하여 냉장/냉동고로 입고시킵니다.</p>
												</li>
												<li>
													<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive03_01_02.jpg" alt=""></span>
													<strong>샘플 검수를 통해 식재료의 신선한 상태를 점검</strong>
													<p>식재료가 배송되면 기준에 미달하는 식재료는 없는지 냉동/냉장 각 재료 중 일부 박스를 샘플로 뜯어 확인하고, 문제가 있을 경우 폐기를 위해 반품 처리 합니다.</p>
												</li>
												<li>
													<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive03_01_03.jpg" alt=""></span>
													<strong>먼저 들어온 제품을 먼저 사용하고<br>냉장/냉동고의 온도를 철저히 유지</strong>
													<p>선입선출이라는 말을 아시나요? 먼저 들어온 식재료부터 들어온 순서에 맞게 사용될 수 있도록 보관·관리하며, 재료 박스간의 적정 간격을 유지하여 온도가 잘 유지될 수 있도록 보관합니다.</p>
												</li>
											</ul>
										</div>
									</div>
									<div class="division">
										<h5 class="titDep4">조리환경 관리</h5>
										<div class="yellowBox">본격적인 조리를 시작하기 전 조리를 준비하는 과정에서도 식품 안전을 위한 점검은 계속됩니다.</div>
										<div class="socialList">
											<ul>
												<li>
													<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive03_02_01.jpg" alt=""></span>
													<strong>매일 첫 제품이 제공되기 전에<br>조리된 제품의 온도를 체크</strong>
													<p>매일 첫 제품이 제공되기 전 패티의 온도를 체크하여 식품 안전 온도를 유지하는지 확인합니다.</p>
												</li>
												<li>
													<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive03_02_02.jpg" alt=""></span>
													<strong>식약처 기준보다 더 염격한 산가기준 적용</strong>
													<p>매일 레스토랑 기름의 산가를 측정하여 기준을 초과하는 경우 즉시 교체하고 있습니다. 국내 식품 위생 법률에서 정한 3.0의 산가 기준보다 더 엄격한 2.5의 산가 기준을 적용합니다.</p>
												</li>
												<li>
													<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive03_02_03.jpg" alt=""></span>
													<strong>매일 식품 안전사항을 체크하고 관리</strong>
													<p>모든 레스토랑에서는 매일 식품 안전사항을 체크하여 철저히 품질 관리를 하며, 
													맥도날드 글로벌 공통의 레스토랑 식품안전 기준이 상시 유지 중인지 제 3자 점검기관을 통해 전 매장을 점검합니다.</p>
												</li>
											</ul>
										</div>
									</div>
									<div class="division">
										<h5 class="titDep4">조리과정 관리</h5>
										<div class="yellowBox">조리 과정에도 안전과 위생과 만전을 기하고 있습니다.</div>
										<div class="socialList">
											<ul>
												<li>
													<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive03_03_01.jpg" alt=""></span>
													<strong>패티의 종류에 따라 적정 온도로<br>조리되는 오토 쿠킹 모드</strong>
													<p>패티는 그릴이라는 장비를 통해 자동으로 구워집니다. 오토 쿠킹 모드를 누르면 정해진 조리 시간에 따라 자동으로 조리되며, 정해진 시간이 종료되면 자동으로 상판이 올라가며 조리가 완료됩니다.</p>
												</li>
												<li>
													<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive03_03_02.jpg" alt=""></span>
													<strong>교차 오염 방지를 위한 일회용 장갑 사용</strong>
													<p>교차 오염을 방지하기 위해 조리되지 않은 식품을 만질 때는 파란 장갑을, 조리된 식품이나 조리 도구를 만질 때는 흰 장갑을 사용합니다. 한번 사용한 장갑은 바로 폐기하고, 새 장갑으로 교체하여 사용합니다.</p>
												</li>
												<li>
													<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive03_03_03.jpg" alt=""></span>
													<strong>깨끗하고 안전한 제품을<br>제공하기 위해 준비하는 크루</strong>
													<p>레스토랑 주방에서는 30분마다 한번씩 손 씻기 타이머가 울립니다. 주방에서 근무하는 모든 직원들은 30분마다 한 번씩 손부터 아래팔까지 손을 씻습니다. 청결한 유니폼 착용 등 개인 위생에도 만전을 기합니다.</p>
												</li>
												<li>
													<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive03_03_04.jpg" alt=""></span>
													<strong>4시간 경마다 세척하여 사용하는 조리 도구</strong>
													<p>깨끗한 조리 환경을 위해, 레스토랑 직원들은 4시간 경마다 한 번씩 조리 도구를 세척하여 청결하게 사용하고 있습니다.</p>
												</li>
											</ul>
										</div>
									</div>
									<div class="division">
										<h5 class="titDep4">고객만족을 위한 노력</h5>
										<div class="yellowBox">정성을 다해 만든 제품을 제공하기 위해 보이지 않는 곳까지 점검합니다.</div>
										<div class="socialList">
											<ul>
												<li>
													<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive03_04_01.jpg" alt=""></span>
													<strong>주문이 들어옴과 동시에 음식을<br>만드는 ‘메이드 포 유’ 시스템</strong>
													<p>맥도날드는 음식을 미리 만들어 놓지 않고, 고객 주문 접수와 동시에 음식을 만들어 갓 조리된 신선한 음식만을 제공하는 ‘메이드 포 유(Made for You)’ 시스템을 적용하고 있습니다.</p>
												</li>
												<li>
													<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive03_04_02.jpg" alt=""></span>
													<strong>고객의견을 반영한 제품 구성 및 함량 변경</strong>
													<p>위생을 위해 슈레더로 변경한 양상추의 함량이 적게 느껴진다는 고객 의견을 반영하여 일부 메뉴의 슈레더 양상추 함량이 30g씩 늘어났습니다.</p>
												</li>
												<li>
													<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive03_04_03.jpg" alt=""></span>
													<strong>고객이 주문하는 공간도 언제나 깨끗하게 유지</strong>
													<p>고객이 주문을 하는 카운터와 디지털 키오스크 공간도 언제나 기분 좋게 사용하실 수 있도록 깨끗이 유지합니다.</p>
												</li>
												<li>
													<span class="thum"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/img_competitive03_04_04.jpg" alt=""></span>
													<strong>고객이 레스토랑을 나가는 순간까지 깨끗하게</strong>
													<p>고객이 음식을 드시는 테이블은 물론, 휴지통과 화장실까지 청결하게 유지될 수 있도록 노력합니다.</p>
												</li>
											</ul>
										</div>
									</div>
									<div class="btnArea">
										<a href="/story/competition/faq.do" class="btnMC btnL action">맥도날드의 음식과 재료에 대해 더 궁금한 점이 있다면?</a>
									</div>
								</div>
								<!-- //레스토랑에서의 노력 -->
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
					<li class="privacy"><a href="../kor/etc/private.do">개인정보 처리방침</a></li>
					<li><a href="../kor/etc/location.do">위치정보 이용약관</a></li><!-- 추가 -->
					<li><a href="../kor/etc/sitemap.do">사이트맵</a></li>
					<li><a href="../kor/store/rental.do">임차문의</a></li>
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