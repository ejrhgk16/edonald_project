<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>매장찾기</title>
	<meta name="description" id="description" contents="메뉴, 레스토랑, 프로모션 등 안내"/>
	<meta name="keywords" contents="McDonald's, McDrive, McDelivery, McMorning, Happy Meal, Signature Burger, McAllday, McCafe"/>
	<link rel="shortcut icon" type="image/x-icon" href="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/favicon.ico">
	<link rel="stylesheet" href="/resources/css/common.css"> 
	<link rel="alternate" href="https://www.mcdonalds.co.kr">
	<script type="text/javcascript" src="../css/jquery-3.6.0.js"></script>
	<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
	<script>
	
                  $(document).ready(function(){
                     
                        $('.tabMn, .subtabMn').on('click', 'li>a', function(evt){
                           evt.preventDefault(); /*일반적으로 브라우저의 구현에 의해 처리되는 기존의 액션이 진행 되지않고 결과적으로 해당 이벤트 발생 X*/
                           
                           var _this = $(this);   /*버튼 선택 했을때 다른 버튼들은 선택 안됨을 표시*/
                           $(this).closest('li').siblings('li').find('a').attr('aria-selected', false);   // 버튼 색상 변경
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
                                   
                                   var target = $(this).attr('href');   /*푸트 탭이 아닌 경우 배경 색을 하얀색으로*/
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
	
</head>
<body>
<div class="wrapper ">
		<header class="header"><!-- 상단 고정 fixed 클래스 추가, 메뉴의 depth1 오버시 open 클래스 추가 -->
			
    



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
				







   
<div class="visualArea bgStore01" data-title="지역별 매장찾기" data-desc="매장찾기">
					<div class="inner">
						<h1 class="titDep1">매장찾기</h1>
						<ul class="navPath">
							<li><a href="../main.do">Home</a></li>
							<li><a href="../store/main.do">Store</a></li>
							<li><a href="../store/main.do">매장찾기</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<ul class="tabType01">
							<li><a href="../store/main.do" role="button" aria-selected="true">지역별</a></li>
							<li><a href="../store/event.do" role="button">이벤트매장</a></li>
						</ul>
						<form id="searchForm" method="post">
							<input type="hidden" name="page" id="page" value="1">
							<input type="hidden" name="lat" id="lat" value="NO">
							<input type="hidden" name="lng" id="lng" value="NO">
							<input type="hidden" name="search_options" id="search_options" value="">
						<!-- 20191112 수정 yjs -->
						<div class="storeFind">
					   		<span class="storeFind_bg" style=""></span>
							<div class="srvcFilter">
								<strong class="titDep4">이용가능 서비스</strong>
								<div class="service">
								
									<span class="srvc">
									    <input type="checkbox" id="1" value="Y">
									    <label for="1">
									        24시간
									        <span class="icon">
									            <img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887217994.png" alt="24시간" data-off="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887217994.png" data-on="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887222493.png">
									        </span>
									    </label>
									</span>
								
									<span class="srvc">
									    <input type="checkbox" id="6" value="Y">
									    <label for="6">
									        맥드라이브
									        <span class="icon">
									            <img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887501964.png" alt="맥드라이브" data-off="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887501964.png" data-on="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887505434.png">
									        </span>
									    </label>
									</span>
								
									<span class="srvc">
									    <input type="checkbox" id="2" value="Y">
									    <label for="2">
									        맥딜리버리
									        <span class="icon">
									            <img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887371824.png" alt="맥딜리버리" data-off="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887371824.png" data-on="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887378094.png">
									        </span>
									    </label>
									</span>
								
									<span class="srvc">
									    <input type="checkbox" id="4" value="Y">
									    <label for="4">
									        맥모닝
									        <span class="icon">
									            <img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887410227.png" alt="맥모닝" data-off="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887410227.png" data-on="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887415001.png">
									        </span>
									    </label>
									</span>
								
									<span class="srvc">
									    <input type="checkbox" id="3" value="Y">
									    <label for="3">
									        주차
									        <span class="icon">
									            <img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887307761.png" alt="주차" data-off="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887307761.png" data-on="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887311487.png">
									        </span>
									    </label>
									</span>
								
									<span class="srvc">
									    <input type="checkbox" id="9" value="Y">
									    <label for="9">
									        디카페인 커피
									        <span class="icon">
									            <img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887849368.png" alt="디카페인 커피" data-off="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887849368.png" data-on="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/menu/store/1580887855311.png">
									        </span>
									    </label>
									</span>
								
								</div>
							</div>
							<fieldset class="srchBox">
								<legend>매장검색</legend>
								<div class="form">
									<input type="text" placeholder="매장명, 동명, 도로명을 검색해 주세요." title="검색어 입력" id="searchWord" name="searchWord" value="">
									<button type="button" class="btnMC btnM" onclick="search()">검색하기</button>
								</div>
							</fieldset>							
						</div>
						<!-- //20191112 수정 yjs --> 
						</form>
						<!-- //storeFind -->
						<div class="storeResult">
							<div id="map" class="map" style="height: 600px; position: relative; overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/bg_tile.png&quot;);"><!-- 지도 마커용 태그, A~Z까지 순차적으로 사용 --><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://t1.daumcdn.net/mapjsapi/images/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://t1.daumcdn.net/mapjsapi/images/cursor/openhand.cur.ico&quot;), default;"><div style="position: absolute; left: -1px; top: 0px;"><div style="position: absolute; z-index: 0;"></div><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map2.daumcdn.net/map_2d/2203tof/L3/2000/890.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -122px; top: 394px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/2203tof/L3/2000/891.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 134px; top: 394px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/2203tof/L3/2000/892.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 390px; top: 394px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/2203tof/L3/2000/893.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 646px; top: 394px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2203tof/L3/2000/894.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 902px; top: 394px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/2203tof/L3/2000/895.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1158px; top: 394px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2203tof/L3/2001/890.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -122px; top: 138px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/2203tof/L3/2001/891.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 134px; top: 138px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/2203tof/L3/2001/892.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 390px; top: 138px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/2203tof/L3/2001/893.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 646px; top: 138px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2203tof/L3/2001/894.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 902px; top: 138px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/2203tof/L3/2001/895.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1158px; top: 138px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2203tof/L3/2002/890.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -122px; top: -118px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/2203tof/L3/2002/891.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 134px; top: -118px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/2203tof/L3/2002/892.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 390px; top: -118px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/2203tof/L3/2002/893.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 646px; top: -118px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2203tof/L3/2002/894.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 902px; top: -118px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/2203tof/L3/2002/895.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1158px; top: -118px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2203tof/L3/2003/890.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -122px; top: -374px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/2203tof/L3/2003/891.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 134px; top: -374px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/2203tof/L3/2003/892.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 390px; top: -374px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/2203tof/L3/2003/893.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 646px; top: -374px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2203tof/L3/2003/894.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 902px; top: -374px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map3.daumcdn.net/map_2d/2203tof/L3/2003/895.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1158px; top: -374px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 1;"></div><div style="width: 1169px; height: 600px; position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -2337px; top: -1200px; width: 5845px; height: 3000px;" viewBox="0 0 5845 3000"><defs></defs></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);"><div style="position: absolute; margin: -69px 0px 0px -26px; z-index: 0; left: 585px; top: 300px;"><img draggable="false" src="/kor/images/store/ico_marker.png" alt="" title="한국맥도날드(유)" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 54px, 70px, 0px); top: 0px; left: 0px; width: 54px; height: 70px;"></div></div></div></div><div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);"><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;"><div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 46px;"></div><div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">50m</div></div><div style="margin: 0px 4px; float: left;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="https://t1.daumcdn.net/mapjsapi/images/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a><div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"><div style="width: 32px; border-radius: 3px; box-shadow: rgba(0, 0, 0, 0.15) 0px 2px 2px 0px; position: absolute; left: 1134px; top: 42px;"><button draggable="false" title="확대" type="button" style="float: left; cursor: pointer; width: 32px; height: 32px; user-select: none; -webkit-user-drag: none; border-top: none; border-right: none; border-bottom: 1px solid rgb(226, 226, 226); border-left: none; border-image: initial; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/control.png&quot;) -40px 0px / 116px 264px no-repeat rgb(255, 255, 255); border-radius: 3px 3px 0px 0px;"></button><div style="float: left; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/bg_zoom_control.png&quot;) repeat; padding: 7px 0px; transition: height 0s ease 0s, margin 0.1s ease 0s;"><div style="cursor: pointer; position: relative; background-size: 116px 264px; transition: height 0.1s ease 0s; margin: 2px 0px; display: block; width: 32px; height: 104px;"><div style="position: absolute; width: 4px; height: 100%; background-color: rgb(51, 150, 255); left: 50%; margin: 0px 0px 0px -2px;"><div style="width: 4px; height: 2px; margin-bottom: -2px; bottom: 0px; position: absolute; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/control.png&quot;) -50px -127px / 116px 264px;"></div><div style="width: 4px; height: 2px; margin-top: -2px; top: 0px; position: absolute; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/control.png&quot;) -40px -100px / 116px 264px;"></div></div><div style="position: absolute; background-color: rgb(204, 204, 204); transition: height 0.1s ease 0s; left: 50%; margin: 0px 0px 0px -2px; width: 4px; height: 16px;"></div><div style="cursor: row-resize; position: absolute; width: 20px; height: 10px; margin: -4px 0px 0px -10px; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/control.png&quot;) -40px -80px / 116px 264px; left: 50%; transition: top 0.1s ease 0s; top: 16px;"></div></div></div><button draggable="false" title="축소" type="button" style="float: left; cursor: pointer; width: 32px; height: 32px; user-select: none; -webkit-user-drag: none; border-top: 1px solid rgb(226, 226, 226); border-right: none; border-bottom: none; border-left: none; border-image: initial; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/control.png&quot;) -40px -32px / 116px 264px no-repeat rgb(255, 255, 255); border-radius: 0px 0px 3px 3px; margin: 0px;"></button><div style="display: none; position: absolute; margin: 41px 0px 0px -30px; background-size: 116px 264px; width: 30px; height: 104px;"><div style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/control.png&quot;) 0px -80px / 116px 264px; left: 0px; top: 8px;"></div><div style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/control.png&quot;) 0px -100px / 116px 264px; left: 0px; top: 32px;"></div><div style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/control.png&quot;) 0px -120px / 116px 264px; left: 0px; top: 64px;"></div><div style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/control.png&quot;) 0px -140px / 116px 264px; left: 0px; top: 80px;"></div><div style="position: absolute; width: 29px; height: 15px; margin: -6px 0px 0px; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/control.png&quot;) 0px -160px / 116px 264px; left: 0px; top: 96px;"></div></div></div><div style="width: 106px; height: 32px; box-sizing: content-box; background-color: rgb(255, 255, 255); padding: 2px; border-radius: 3px; box-shadow: rgba(0, 0, 0, 0.15) 0px 2px 2px 0px; position: absolute; left: 1056px; top: 3px;"><button draggable="false" title="지도" type="button" style="float: left; cursor: default; width: 43px; height: 32px; user-select: none; -webkit-user-drag: none; border: none; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/control.png&quot;) -5px -183px / 116px 264px no-repeat; color: rgb(255, 255, 255); font-weight: bold;"></button><button draggable="false" title="스카이뷰" type="button" style="float: left; cursor: pointer; width: 63px; height: 32px; user-select: none; -webkit-user-drag: none; border: none; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/control.png&quot;) -48px -183px / 116px 264px no-repeat; color: rgb(0, 0, 0); font-weight: normal;"></button></div></div></div>
							<button type="button" class="mc_current" onclick="locate();">
								<span>내 위치 중심으로 지도보기</span>
							</button>
							<div class="mcStore">
								<table class="tableType01">
									<caption>매장목록 - 매장명/주소, 전화번호, 영업시간, 이용가능 서비스 정보표</caption>
									<colgroup><col style="width:16%"><col style="width:16%"><col style="width:34%"></colgroup>
									<thead>
										<tr>
											<th scope="col">매장명 / 주소</th>
											<th scope="col">전화번호</th>
											<th scope="col">영업시간</th>
											<th scope="col">이용가능 서비스</th>
										</tr>
									</thead>
									<tbody>
											<tr>
												<td class="tdName">
													<dl class="name">
														<dt><strong class="tit"><a href="javascript:moveMap(37.570698,126.983558);" title="지도보기">한국맥도날드(유)</a></strong>
														</dt><dd>서울 종로구 공평동 70</dd>
														<dd class="road">서울특별시 종로구  종로 51(종로타워)</dd>
													</dl>
												</td>
												<td>1600-5252</td>
												<td></td>
												<td class="tdService">
													<div class="service">
													
													</div>
												</td>
											</tr>
								</tbody></table>
							</div>
								<p class="noResult nobg">검색어를 입력해 주세요.</p>
						</div>
						<!-- //storeResult -->
					</div>
				</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=960481bef820d94c68b224375c9e3cd1"></script><script charset="UTF-8" src="https://t1.daumcdn.net/mapjsapi/js/main/4.4.3/kakao.js"></script>
<script type="text/javascript">

$(document).ready(function () {
    function storeFindBg(){
        var winWidth = window.innerWidth;
        var $storeFind = $('.storeFind');
        var $storeFindBg = $storeFind.find('.storeFind_bg');
        var storeFindWidth = $storeFind.innerWidth();
        if(winWidth >=1168){
            $storeFindBg.css({'width':winWidth, 'margin-left':-(winWidth-storeFindWidth)/2});
        }else{
            $storeFindBg.attr({'style':''});
        }
    };
    function clickItem(){
        $('.storeFind .srvcFilter .service>span input').each(function(){
            $(this).click(function(){
                var chk = $(this).is(':checked');
                var dataOff = $(this).siblings('label').find('img').attr('data-off');
                var dataOn = $(this).siblings('label').find('img').attr('data-on');
                if(chk){
                    $(this).prop('checked', true);
                    $(this).parent('span').addClass('on');
                    $(this).siblings('label').find('img').attr({'src': dataOn});
                }else{
                    $(this).prop('checked', false);
                    $(this).parent('span').removeClass('on');
                    $(this).siblings('label').find('img').attr({'src': dataOff});
                }
                
            });
        });
    };
    storeFindBg();
    clickItem();
    $(window).resize(function(){
        storeFindBg();
    });
    
    $("#searchWord").on("keydown", function(){
    	if(event.keyCode == 13) {
    		search();
    	}
    });
});

var map;
var mapContainer = document.getElementById('map'),
	mapOption = {
         center: new daum.maps.LatLng(37.570698,126.983558),
         level: 3
    };
	map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
 	var zoomControl = new daum.maps.ZoomControl();
	map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
	var mapTypeControl = new daum.maps.MapTypeControl();
	map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);
	var positions = [
	{
        title: '한국맥도날드(유)', 
        latlng: new daum.maps.LatLng(37.570698,126.983558)
    }
	];
	for (var i = 0; i < positions.length; i ++) {
	    
	    // 마커 이미지의 이미지 크기 입니다
	    var imageSize = new daum.maps.Size(54, 70); 
	    
	    // 마커 이미지를 생성합니다    
	    var markerImage = new daum.maps.MarkerImage("../images/store/ico_marker.png", imageSize); 
	    
	    // 마커를 생성합니다
	    var marker = new daum.maps.Marker({
	        map: map, // 마커를 표시할 지도
	        position: positions[i].latlng, // 마커를 표시할 위치
	        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
	        image : markerImage // 마커 이미지 
	    });
	    marker.setMap(map);  
	}
	moveMap(37.570698, 126.983558);
function moveMap(xx,yy){
    var po = new daum.maps.LatLng(xx, yy);
    map.panTo(po);
}
function locate(){
	
	if(confirm("위치정보의 사용시 보안된 페이지에서 위치정보을 요청합니다.\n이동하시겠습니까?")){
	    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
	    navigator.geolocation.getCurrentPosition(function(position) {
	       var lat = position.coords.latitude, // 위도
	           lon = position.coords.longitude; // 경도
	       var locPosition = new kakao.maps.LatLng(lat, lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
	       map.panTo(locPosition);
	         $("#lat").val(lat);
		     $("#lng").val(lon);
		     page(1);
	      });
		//gohttps();
	}else{
	
	if(getCookie("locate_info")=="Y"){
		if (navigator.geolocation) {
		    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
		    navigator.geolocation.getCurrentPosition(function(position) {
		        var lat = position.coords.latitude, // 위도
		         lon = position.coords.longitude; // 경도
		       //var locPosition = new kakao.maps.LatLng(lat, lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
		       //map.panTo(locPosition);
		         $("#lat").val(lat);
			     $("#lng").val(lon);
			     page(1);
		      });
		}else{
			alert("위치정보을 사용할수 없습니다");
		}
	}else{
		if(confirm("[위치정보 사용 동의]\n이 페이지에서\n현재 위치 정보를 사용하고자 합니다.\n동의하시겠습니까?")){
			setCookie("locate_info","Y",36500);
			if (navigator.geolocation) {
			    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
			    navigator.geolocation.getCurrentPosition(function(position) {
			        var lat = position.coords.latitude, // 위도
			         lon = position.coords.longitude; // 경도
			        //var locPosition = new kakao.maps.LatLng(lat, lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
			        //map.panTo(locPosition);
			        $("#lat").val(lat);
			        $("#lng").val(lon);
			        page(1);
			      });
			}else{
				alert("위치정보을 사용할수 없습니다");
			} 
		}
	}
	
	}
	
}

function setCookie( name, value, expiredays) { 
	var todayDate = new Date(); 
	todayDate.setDate( todayDate.getDate() + expiredays ); 
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";" 
}
function getCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for(var i = 0; i <ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}
function altEscapeTag(){
	$("img").each(function (i,ob){
		$(ob).attr("alt",$(ob).attr("alt").replace(/(<([^>]+)>)/ig,""));
	});
}

$("#searchWord").on("keydown", function(event) {
	if (event.keyCode == 13) {
		search();
	}
});

function search(){
	var searchWord = $("#searchWord").val();
	if(searchWord == "") {
		alert("검색어를 입력해주세요");
		return;
	}
	
	$('#store').html("");
	
	$.ajax({
		type : 'post',
		url : 'searchStore.do',
		data : {searchWord : searchWord},
		dataType : 'json',
		success : function(data) {
			console.log(data);
			
			var content = "";
			
			if(data.length > 0) {
				$('#noResult').attr("style", "display:none");
			} else {
				$('#noResult').attr("style", "display:block");
			}
			
			for(var i = 0; i < data.length; i++) {
				var title = data[i].store_name;
				var lon = data[i].store_lon;
				var lat = data[i].store_lat;
				var latlng = new kakao.maps.LatLng(lat,lon);
				var address = data[i].store_address;
				var phone = data[i].store_phone;
				
				map.panTo(latlng);
				
				content += "<tr>";
				content += "<td class='tdName'>";
				content += "<dl class='name'>";
				content += "<dt><strong class='tit'><a href='javascript:moveMap("+lat+","+lon+")'; title='지도보기'>"+title+"</a></strong></dt>";
				content += "<dd>"+address+"</dd>";
				content += "</dl>";
				content += "</td>";
				content += "<td>"+phone+"</td>";
				content += "<td>24시간</td>";
				content += "<td class='tdService'><div class='service'  style='text-align:right'>배달</div></td>";
				content += "</tr>";
			}
			$('#store').append(content);
			
		},
		
	});
};

$("#storeSearch").click(function(){
	/* $("#page").val(1);
	$("#lat").val("NO");
	$("#lng").val("NO");
	go(); */
	search();
});
	
function page(page){
	$("#page").val(page);
	go();
}
function go(){
    var search_options= [];
    $('.storeFind .srvcFilter .service>span input:checked').each(function(index, item){
    	search_options[index] = this.id;
    });
	$("#search_options").val(search_options.join(","));
	$("#searchForm").attr("action","/kor/store/list.do");
	$("#searchForm").submit();
}
function gohttps(){
	$("#searchForm").attr("action","https://www.mcdonalds.co.kr/kor/store/list.do");
	$("#searchForm").submit();
}
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
</body>
</html>