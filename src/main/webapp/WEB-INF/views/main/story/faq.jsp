<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/common.css">
<script type="text/javascript" src="../js/jquery-3.6.0.js"></script>


<script>
	<!-- 버튼을 누르면 아래 설명이 나온다 -->
	$(document).ready(function(){
		$('.toggle').find('>button').each(function()
				{
					var t	= $(this);
					var b	= t.closest('.toggle');
					var con	= $(b).find('#'+t.attr('aria-controls'));
					var arr = [];
					if( t.attr('text') ){
						arr = t.attr('text').split('|');
					}

					$(this).on('click',function(evt)
					{
						var s , n;
						evt.preventDefault();
						if( t.attr('aria-selected') == 'true' ) // 버튼 선택 꺼짐, 확장된 것도 사라짐
						{
							t.attr({
								'aria-selected':false,
								'aria-expanded':false
							});
							b.removeClass('open');
							con.stop().show();
							n = con.outerHeight();
							s = 200 * (n/400 )
							con.slideUp(s);
							if( arr.length ){
								t.text(arr[0]);
							}
						}else{
							t.attr({
								'aria-selected':true,
								'aria-expanded':true
							});
							b.addClass('open');
							n = con.outerHeight();
							s = 100 * (n/400 )
							// console.log( s )
							con.stop().hide().slideDown(s);
							if( arr.length ){
								t.text(arr[1]);
							}
						}

					});
				});
		<!-- 옵션 보여주기 -->
		$('.selectWrap').on("click",function(){
			var selWrap = $(this);
			var btn = $(this).find('>button');
			var div = $(this).find('>div');
			var temp =$('#category-button').attr('aria-activedescendant-m');
			$('#' + temp).addClass('ui-state-active');
			
			if(btn.attr('aria-expanded') == 'false'){
				btn.attr('aria-expanded', 'true');
				selWrap.attr('style','z-index:11 !important');
				btn.removeClass('ui-selectmenu-button-close ui-corner-all');
				btn.addClass('ui-selectmenu-button-open ui-corner-top');
				div.addClass('ui-selectmenu-open');
				div.find('ui').attr('aria-hidden', 'false');
			}
			else if(btn.attr('aria-expanded') == 'true'){
				btn.attr('aria-expanded', 'false');
				selWrap.attr('style','z-index:10 !important');
				btn.removeClass('ui-selectmenu-button-open ui-corner-top');
				btn.addClass('ui-selectmenu-button-close ui-corner-all');
				div.removeClass('ui-selectmenu-open');
				div.find('ui').attr('aria-hidden', 'true');
				
			}
	
		});
		
		<!-- 옵션에 마우스를 가져다 되면 색 바뀌기
		$('.ui-menu-item').mouseenter(function(){
			
			
			$('.ui-state-active').removeClass('ui-state-active');
			$(this).addClass('ui-state-active');
		});
		
		
		
		
		$('.ui-menu-item').on('click',function(){
			//alert($(this).text());
			//$(this).closest('.selectWrap').find('.ui-selectmenu-text').text($(this.text()));
			$("#category-button>span").text($(this).text());
			
			var info = $(this).find('>a').attr('id');
			$(this).closest('ul').attr('aria-activedescendant-m',info);
			$('#category-button').attr('aria-labelledby',info);
			$('#category-button').attr('aria-activedescendant-m',info);
			$('.ui-state-active').removeClass('ui-state-active');
		});
		
		
	});


</script>
</head>
<body>
	<div class="wrapper ">
		<header class="header" style="margin-top: 0px;">
			<!-- 상단 고정 fixed 클래스 추가, 메뉴의 depth1 오버시 open 클래스 추가 -->





			<div class="headArea">
				<strong class="hLogo"><a href="/" class="logo"
					title="메인으로 이동"><img src="kor/images/common/logo.png"
						alt="맥도날드"></a></strong>
				<nav class="hMenu">
					<div class="menu">
						<ul class="depth1">
							<li>
								<!-- li 오버시 on 클래스 추가 --> <a href="javascript:gotoMenu(1);"
								class="dth1 ">Menu</a> <!-- 현재페이지 메뉴에 current 클래스 추가 -->
								<ul class="depth2">
									<li><a href="javascript:gotoMenu(1);" class="dth2">버거</a></li>
									<li><a href="javascript:gotoMenu(14);" role="button">맥런치</a></li>
									<li><a href="javascript:gotoMenu(3);" class="dth2">맥모닝</a></li>
									<li><a href="javascript:gotoMenu(15);" role="button">해피
											스낵</a></li>
									<li><a href="javascript:gotoMenu(7);" class="dth2">사이드
											&amp; 디저트</a></li>
									<li><a href="javascript:gotoMenu(9);" class="dth2">맥카페
											&amp; 음료</a></li>
									<li><a href="javascript:gotoMenu(5);" class="dth2">해피밀</a></li>
									<!-- <li><a href="javascript:gotoMenu(11);" class="dth2">365일 즐거운 혜택</a></li> -->
								</ul>
							</li>
							<li><a href="kor/store/main.do" class="dth1 ">Store</a>
								<ul class="depth2">
									<li><a href="kor/store/main.do" class="dth2">매장찾기</a></li>
									<li><a href="kor/store/mcdelivery.do" class="dth2">맥딜리버리</a></li>
									<li><a href="kor/store/mcdrive.do" class="dth2">맥드라이브</a></li>
									<li><a href="kor/store/rental.do" class="dth2">임차문의</a></li>
								</ul></li>
							<li><a href="kor/promotion/list.do" class="dth1  ">What’s
									New</a>
								<ul class="depth2">
									<li><a href="kor/promotion/list.do" class="dth2">프로모션</a></li>
									<li><a href="kor/news/list.do" class="dth2">새로운 소식</a></li>
									<!--  li><a href="kor/kitchen.do" class="dth2">주방공개의 날</a></li -->
									<li><a href="kor/happymeal/list.do" class="dth2">이달의
											해피밀</a></li>
								</ul></li>
							<li><a href="kor/story/main.do" class="dth1  current">Story</a>
								<ul class="depth2">
									<li><a href="kor/story/intro/brandintro.do" class="dth2">브랜드
											소개</a></li>
									<li><a href="kor/story/society/list.do" class="dth2">사회적
											책임과 지원</a></li>
									<li><a href="kor/story/competition/farmToRestaurant.do"
										class="dth2">맥도날드 품질 이야기</a></li>
									<li><a href="kor/story/people/crew.do" class="dth2">맥도날드
											사람들</a></li>
								</ul></li>
						</ul>
					</div>
					<!-- //menu -->
					<form id="commonSearchForm" method="post">
						<div class="util">
							<a href="kor/store/rental.do" class="renter" title="임차문의로 이동">임차문의</a>
							<a href="kor/story/people/recruit.do" class="recruit"
								title="인재채용으로 이동">RECRUIT</a> <a href="/eng/main.do"
								class="lang" title="영문사이트로 이동">ENG</a>
							<div class="topSearch">
								<!-- 검색 활성화인 경우 open 클래스 추가 -->
								<button type="button" class="srch">검색 열기</button>
								<fieldset class="srchField">
									<legend>통합검색</legend>
									<div class="form">
										<input type="text" name="commonSearchWord"
											id="commonSearchWord" placeholder="매장 또는 메뉴정보를 검색하실 수 있습니다."
											title="검색어 입력"
											onkeypress="if( event.keyCode==13 ){gotoCommonSearch();}">
										<button type="button" class="btnMC btnM"
											onclick="gotoCommonSearch()">검색하기</button>
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
				<input type="hidden" name="sub_category_seq"
					id="gotoform_sub_category_seq">
			</form>
			<script>
			function gotoMenu(val){
				$("#gotoform_sub_category_seq").val(val);
				$("#gotoMenuForm").attr("action","kor/menu/list.do");
				$("#gotoMenuForm").submit();
			}
			function gotoCommonSearch(){
				if($.trim($("#commonSearchWord").val())==""){
					alert("검색어을 입력해 주세요");
					$("#commonSearchWord").focus();
				}else{
					$("#commonSearchForm").attr("action","kor/search.do");
					$("#commonSearchForm").submit();
				}
			}
	</script>
		</header>
		<!-- //header -->
		<div id="container">
			<div class="content">

				<div class="visualArea bgStory03" data-title="맥도날드 경쟁력"
					data-desc="궁금한 모든 것을 알려드립니다.">
					<div class="inner">
						<h1 class="titDep1">맥도날드 경쟁력</h1>
						<p class="subCopy">
							맥도날드는 어떤 곳 보다 햄버거 비즈니스를 진지하게 생각합니다.<br>엄격한 품질 관리 시스템을 통해
							고품질의 음식을 제공하며,조리 과정에서 고객이 궁금한 모든 것을 알려드립니다.
						</p>
						<ul class="navPath">
							<li><a href="kor/main.do">Home</a></li>
							<li><a href="kor/story/main.do">Story</a></li>
							<li><a href="kor/story/competition/farmToRestaurant.do">맥도날드
									경쟁력</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<ul class="tabType01">
							<li><a href="kor/story/competition/farmToRestaurant.do"
								role="button">농장에서 레스토랑까지</a></li>
							<li><a href="kor/story/competition/faq.do" role="button"
								aria-selected="true">궁금한 모든 것을 알려드립니다</a></li>

						</ul>
						<h2 class="hide">궁금한 모든 것을 알려드립니다</h2>
						<div class="faqFind">
							<fieldset class="srchBox">
								<legend>질문 검색</legend>
								<div class="form">
									<div class="selectWrap" style="z-index: 100000;">

										<select title="검색 항목 선택"
											style="width: 250px; display: block; position: absolute; margin-left: -100000px;"
											id="category">
											<option value="전체보기">전체보기</option>
											<option value="원재료">원재료</option>
											<option value="품질관리">품질관리</option>
											<option value="매장위생">매장위생</option>
										</select>
										<button tabindex="-1" id="category-button"
											aria-expanded="false" aria-autocomplete="list"
											aria-owns="category-menu" aria-haspopup="true"
											title="검색 항목 선택"
											class="ui-selectmenu-button ui-button ui-widget ui-selectmenu-button-closed ui-corner-all"
											aria-activedescendant-m="ui-id-5"
											aria-labelledby="ui-id-5" aria-disabled="false"
											style="width: 250px;">
											<span class="ui-selectmenu-text">전체</span>
										</button>
										<div class="ui-selectmenu-menu ui-front"
											style="top: 70px; left: 0px;" tabindex="-1">
											<ul aria-hidden="true" aria-labelledby="category-button"
												id="category-menu" role="listbox" tabindex="0"
												class="ui-menu ui-corner-bottom ui-widget ui-widget-content"
												aria-activedescendant-m="ui-id-5" aria-disabled="false"
												style="width: 250px;">
												<li class="ui-menu-item"><a id="ui-id-5" tabindex="-1"
													role="option" class="ui-menu-item-wrapper">전체</a></li>
												<li class="ui-menu-item"><a id="ui-id-6" tabindex="-1"
													role="option" class="ui-menu-item-wrapper">원재료</a></li>
												<li class="ui-menu-item"><a id="ui-id-7" tabindex="-1"
													role="option" class="ui-menu-item-wrapper">품질관리</a></li>
												<li class="ui-menu-item"><a id="ui-id-8" tabindex="-1"
													role="option" class="ui-menu-item-wrapper">매장위생</a></li>
											</ul>
										</div>
									</div>

									<input type="text" placeholder="검색어를 입력해주세요." title="검색어 입력"
										style="width: 723px" id="searchWord">
									<button type="button" class="btnMC btnM" onclick="search()">검색하기</button>
								</div>
							</fieldset>
						</div>
						<!-- //faqFind -->
						<div class="faqResult">
							<div class="sorting">
								<span class="formWrap labelR"> <input type="radio"
									id="rd01" name="sortRdGroup" checked value="전체보기"
									onclick="radioClick()"> <label for="rd01">전체보기</label>
								</span> <span class="formWrap labelR"> <input type="radio"
									id="rd02" name="sortRdGroup" value="원재료" onclick="radioClick()">
									<label for="rd02">원재료</label>
								</span> <span class="formWrap labelR"> <input type="radio"
									id="rd03" name="sortRdGroup" value="품질관리"
									onclick="radioClick()"> <label for="rd03">품질관리</label>
								</span> <span class="formWrap labelR"> <input type="radio"
									id="rd04" name="sortRdGroup" value="매장위생"
									onclick="radioClick()"> <label for="rd04">매장위생</label>
								</span>
							</div>
							<ul class="faqToggle" id="faqList">
								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>원재료</em>
										<strong><span class="hide">질문</span>쇠고기 패티는 어떤 고기를
											사용하나요?</strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle01" class="toggleCon">
										<em class="hide">답변</em>
										<p>호주 청정지역에서 기른 소의 원료육을 사용합니다. 최적의 식감을 내기 위해 지방을 적절히 사용하며,
											내장 등의 부위는 전혀 사용하고 있지 않습니다.</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>원재료</em>
										<strong><span class="hide">질문</span>햄버거 패티에 방부제나 첨가물이
											들어가나요?</strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>맥도날드 버거의 패티에는 방부제가 들어가지 않으며, 패티의 종류에 따라 맛과 식감을 위해 식약처 등
											정부에서 인증한 안전한 식품과 첨가물을 사용합니다. 소고기 패티는 100% 순쇠고기로 만들어지며, 매장에서는
											소금과 후추만을 뿌려 조리합니다. 돼지고기 패티는 국내산 돼지고기 뒷다리살 등의 부위를 사용하며, 부드러운
											식감을 위해 콩단백을 더하고 고기의 잡내를 잡기 위해 세이지 등 허브 시즈닝이 들어갑니다.</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>원재료</em>
										<strong><span class="hide">질문</span>닭고기는 어느 부위를
											사용하나요?</strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>맥스파이시 상하이 버거는 담백한 통가슴살이 들어가는 제품으로, 패티를 잘랐을 때 통살의 질감을
											그대로 즐기실 수 있습니다. 이밖에 치킨 텐더는 통안심살, 맥너겟은 가슴살 등의 부위를 사용합니다.</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>원재료</em>
										<strong><span class="hide">질문</span>맥도날드 계란은 안전한가요? </strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle0101" aria-expanded="false">답변
										보기</button> <!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle01" class="toggleCon">
										<em class="hide">답변</em>
										<p>우수한 품질의 1+등급 계란만을 사용합니다. 표면 세척과 UV 살균 등 꼼꼼한 위생 처리를 거친
											뒤, 매장에서 조리될 때까지 7℃ 이하로 냉장 보관 및 유통되며 매장에서 하나 하나 깨트려 조리하여 최상의
											신선함을 자랑합니다.</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>원재료</em>
										<strong><span class="hide">질문</span>양상추, 토마토 같은 야채는
											어떻게 관리하나요?</strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>양상추의 경우 강원도 대관령 등 국내 청정 지역의 농장에서 재배된 양상추를 공급 받고 있습니다.
											매일유업 등 국내 협력 공장에서 먹기 좋게 잘라 꼼꼼한 세척 과정을 거친 뒤 진공 포장하여 냉장 상태로 매장에
											배송되며, 사용 직전 진공 포장을 뜯어서 사용합니다. 다만 국내 농가의 작황에 따라 공급이 여의치 않을 경우
											일부 수입산을 사용하는 경우도 있습니다. 토마토 역시 신세계 푸드 등 국내 유명 협력사를 통해 전북 김제,
											정읍 등 엄선된 국내 농가로부터 공급 받고 있으며, 매장에서는 전용 슬라이서로 잘라 사용하고 있습니다.</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>원재료</em>
										<strong><span class="hide">질문</span>후렌치후라이는 정말 감자로
											만들어지나요?</strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>맥도날드의 후렌치 후라이는 미국에서 생산된 엄격한 기준을 통과한 품종의 감자로 만들어집니다.</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>원재료</em>
										<strong><span class="hide">질문</span>감자에 까만 부분이 있어요,
											썩은 것 아닌가요?</strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>감자 제품에서 간혹 발견되는 검은 부분은 수확 및 보관, 생산 과정에서 감자가 서로 부딪히며
											발생하는 멍으로, 원재료의 특성으로 인해 자연스럽게 발생하는 현상입니다. 또는 두꺼운 껍질일 수도 있습니다.
											품질에 이상이 있는 것은 아니므로 안심하고 드셔도 됩니다.</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>원재료</em>
										<strong><span class="hide">질문</span>감자에 녹색 부분이 보일 때가
											있어요. 괜찮은 건가요?</strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>감자 제품에서 간혹 발견되는 녹색 부분은 감자의 엽록소가 보이는 것으로, 원재료의 특성으로 인해
											자연스럽게 발생하는 현상입니다. 품질에 이상이 있는 것은 아니므로 안심하고 드셔도 됩니다.</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>원재료</em>
										<strong><span class="hide">질문</span>맥도날드 제품은 최근
											이슈(살충제 계란, 유럽 베이컨 이슈)로부터 안전한가요?</strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>맥도날드에서 사용하는 계란은 축산물품질평가원으로부터 1+ 등급을 받은 최상급의 계란이며, 최근
											이루어진 국립농산물품질관리원 등 정부 기관의 전수 조사 결과에서도 적합 판정을 받았습니다. 베이컨 역시
											국내산을 주로 사용하며, 일부 제품의 경우 유럽산 베이컨을 사용하고 있으나, 최근 우려를 감안하여 조사를
											실시한 결과 전혀 이상 없음을 확인하였습니다.</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>원재료</em>
										<strong><span class="hide">질문</span>햄버거 빵 어떻게 만드나요?</strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>맥도날드의 일반 버거 메뉴에 사용되는 빵은 국내 협력 공장에서 매일 구워 매장으로 배송하며,
											생이스트를 사용해 인위적인 시간 단축 없이 천천히 발효하여 더욱 건강합니다.</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>원재료</em>
										<strong><span class="hide">질문</span>맥카페 커피는 어떤 원두를
											사용하나요?</strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>콜롬비아, 엘살바도르, 브라질 등에서 재배한 100% 아라비카 원두를 사용하며 말레이시아에서
											로스팅합니다. 전국 맥도날드 매장에서는 하루 평균 13만잔 이상의 커피가 판매되어 항상 신선한 원두 상태를
											유지하고 있습니다.</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>품질관리</em>
										<strong><span class="hide">질문</span>(비프/포크) 패티는 어떻게
											조리하나요?</strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>패티는 그릴이라는 장비를 통해 자동으로 구워집니다. 그릴 위에 패티를 올려 놓고 조리 버튼을
											누르면, 그릴의 상단판이 자동으로 내려와 위/아래가 동시에 구워지는 방식이며, 그릴의 상단판은 섭씨
											218.5도 하단판은 176.8도의 고온으로 세팅되어 있습니다. 패티의 종류별로 정해진 조리 시간 동안
											일정하게 조리되며, 정해진 시간이 종료되면 자동으로 상판이 올라가며 조리가 완료됩니다.</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>품질관리</em>
										<strong><span class="hide">질문</span>기름은 얼마나 자주 교체하나요?</strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>2020년 10월부터 모든 매장에서 사용하는 튀김용 기름을 해바라기유, 하이올레닉 해바라기유로
											교체했으며, 대부분 제품의 트랜스지방 '제로(식약처 표기 기준 의거)'를 달성했습니다. 모든 매장은 기름의
											산가를 측정하는 3M사의 오일 스트립지를 구비하고 있으며, 매일 기름의 산가를 측정하여 기록하고, 기준 산가를
											초과하는 경우 즉시 교체하여 신선한 기름 상태를 유지합니다. 참고로 맥도날드는 관련 법규에서 정한 산가 기준인
											3보다 엄격한 2.5의 산가 기준을 자체 적용하고 있습니다.</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>품질관리</em>
										<strong><span class="hide">질문</span>패티를 굽는 그릴의 청결은
											어떻게 유지하나요?</strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>그릴판은 매번 사용할 때마다 전용 도구를 이용하여 닦아내며, 매일 그릴 전체를 분리한 뒤 꼼꼼히
											세척하여 최적의 위생상태를 유지하도록 하고 있습니다.</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>품질관리</em>
										<strong><span class="hide">질문</span>소고기 패티 품질 관리 어떻게
											하시나요?</strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>먼저 패티의 재료가 되는 원료육의 온도, 포장 상태, 원료육 배송 차량의 위생 상태 등을
											확인합니다. 패티의 생산 공정에서는 패티의 무게, 두께, 온도, 지방 함량을 측정하고, 패티를 포장하는
											단계에서는 패티 제품의 포장 상태, 외박스 상태를 확인하는 제품 검사를 시행합니다. 또한 이물 혼입 방지를
											위해 육안 검사, 금속 검출기 장비를 사용한 2 차례의 검출 테스트, X-ray 장비를 사용한 이물 검출
											테스트를 시행하고 있습니다. 제품 출고 단계에서는 제품을 배송하는 차량의 위생 상태, 냉동기 상태를 확인한 후
											차량에 제품을 상차하며, 제품을 실은 차량의 적재함을 봉인하여 출고하고 있습니다.</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>품질관리</em>
										<strong><span class="hide">질문</span>미리 만들어 놓은 버거를
											판매하나요?</strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>맥도날드는 제품을 미리 만들어 놓지 않습니다. 고객이 주문을 하면 햄버거 빵을 토스팅 하는 것을
											시작으로 바로 만들어 신선한 제품만을 고객에게 제공하는 '메이드 포 유(Made For You)' 시스템을
											운영하고 있습니다. (일부 매장 제외)</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>품질관리</em>
										<strong><span class="hide">질문</span>원재료는 어떻게 배송,
											보관되나요?</strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>맥도날드의 모든 매장은 대형 냉장, 냉동고 및 건자재실을 갖추고 있으며, 배송 과정에서는 콜드체인
											시스템을 이용해 모든 과정에서 실온, 냉장, 냉동 등 제품에 따라 적정한 온도가 유지되도록 관리하고 있습니다.</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>매장위생</em>
										<strong><span class="hide">질문</span>테이블 위생 관리는 어떻게
											하나요?</strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>식사가 끝난 테이블은 전용 세정 타올로 닦아내고 있으며, 깨끗한 환경에서 편안하게 식사를 즐기실 수
											있도록 테이블은 항상 위생적으로 관리할 수 있도록 하고 있습니다.</p>
									</div>
								</li>

								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>매장위생</em>
										<strong><span class="hide">질문</span>주방의 위생은 잘 관리되고
											있나요? </strong>
									</h3>
									<button type="button" aria-selected="false"
										aria-controls="toggle01" aria-expanded="false">답변 보기</button>
									<!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>맥도날드는 식품 안전을 최우선 가치로 삼아 고객들이 안심하고 드실 수 있는 제품을 제공 드리기 위해
											눈에 보이지 않는 부분까지 노력하고 있습니다. 매장에서 근무하는 직원들은 30분 마다 한 번씩 팔꿈치까지 손을
											씻고, 교차 오염을 방지하기 위해 조리되지 않은 식품을 만질 때는 파란 장갑을, 조리된 식품이나 조리 도구를
											만질 때는 흰 장갑을 끼고 한 번 사용한 장갑은 바로 폐기하는 등 철저한 위생 수칙을 적용하고 있습니다. 뿐만
											아니라 모든 조리 도구는 4시간에 한 번씩 세척하고, 식재료의 경우 각각 보관 온도에 따라 매장에 구비된 전용
											냉동, 냉장, 건자재실에 구분하여 보관하고, 개봉한 제품에 대해서도 2차 유효기간을 별도 표기, 관리하는 등
											식품 안전에 만전을 기하고 있습니다.</p>
									</div>
								</li>
							</ul>
							<div class="btnMore" style="display: none">
								<button type="button" class="more">더보기</button>
							</div>
						</div>
						<!-- //faqResult -->
					</div>
				</div>
				<!-- //contArea -->

				<script id="faqListString" type="text/template">			
								<li class="toggle">
									<h3 class="question">
										<em class="sortItem item01"><span class="hide">구분</span>{diagnosis}</em>
										<strong><span class="hide">질문</span>{title}</strong>
									</h3>
									<button type="button" aria-selected="false" aria-controls="toggle01" aria-expanded="false">답변 보기</button><!-- toggle버튼 선택시 aria-selected값 true로 변경 / aria-expanded 값 true로 변경 -->
									<div id="toggle0101" class="toggleCon">
										<em class="hide">답변</em>
										<p>{notice}</p>
									</div>
								</li>
</script>
			</div>
			<div class="aside">
				<a href="kor/story/competition/farmToRestaurant.do" class="go_story"
					title="품질 이야기로 이동">품질 이야기</a> <a
					href="https://www.mcdelivery.co.kr/kr/" class="goDelivery"
					target="_blank" title="새창 열림">Mcdelivery</a>
			</div>
			<button type="button" class="btnTop">맨 위로 가기</button>
		</div>
		<!-- //container -->
		<footer class="footer">

			<div class="footArea">
				<ul class="fUtil">
					<li class="privacy"><a href="kor/etc/private.do">개인정보 처리방침</a></li>
					<li><a href="kor/etc/location.do">위치정보 이용약관</a></li>
					<!-- 추가 -->
					<li><a href="kor/etc/sitemap.do">사이트맵</a></li>
					<li><a href="kor/store/rental.do">임차문의</a></li>
					<li><a href="https://voc.mcd.co.kr/MC/HOM/faqMain.jsp"
						target="_blank" title="새창 열림">고객문의</a></li>
					<!-- <li><a href="javascript:systemCheck('https://voc.mcd.co.kr/MC/HOM/faqMain.jsp')" title="새창 열림">고객문의</a></li> -->
					<li><a href="kor/story/people/recruit.do">인재채용</a></li>
				</ul>
				<ul class="fSns">
					<li><a href="https://www.facebook.com/McDonaldsKorea"
						class="fb" target="_blank" title="새창 열림">맥도날드 페이스북</a></li>
					<li><a href="https://www.instagram.com/mcdonalds_kr/"
						class="ig" target="_blank" title="새창 열림">맥도날드 인스타그램</a></li>
					<li><a href="https://www.youtube.com/user/McDonaldsKor"
						class="yt" target="_blank" title="새창 열림">맥도날드 유투브</a></li>
					<li><a href="https://story.kakao.com/ch/mcdonalds/feed"
						class="ks" target="_blank" title="새창 열림">맥도날드 카카오스토리</a></li>
					<li class="web_accessibility"><a
						href="http://www.webwatch.or.kr/Situation/WA_Situation.html?MenuCD=110"
						class="web_accessibility" title="국가 공인 인증기관 : 웹와치" target="_blank">
							<img src="kor/images/common/web_accessibility.svg"
							alt="과학기술정보통신부 WEB ACCESSIBILITY 마크(웹 접근성 품질인증 마크)">
					</a></li>
				</ul>
				<div class="fInfo">
					<ul class="info">
						<li>한국맥도날드(유)</li>
						<li>대표이사: 앤토니 마티네즈</li>
						<li>사업자등록번호: 101-81-26409</li>
						<li>전화주문: 1600-5252</li>
					</ul>
					<p class="copy">COPYRIGHT © 2019 ALL RIGHTS RESERVED BY
						McDonald's.</p>
				</div>
			</div>
		</footer>
		<!-- //footer -->
	</div>
</body>
</html>