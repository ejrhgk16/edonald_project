<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>버거</title>
<link rel="stylesheet" href="kor/css/common.css">
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="kor/js/commons.js"></script>
</head>
<body>
<div class="wrapper ">
		<header class="header" style="margin-top: 0px;"><!-- 상단 고정 fixed 클래스 추가, 메뉴의 depth1 오버시 open 클래스 추가 -->
			<div class="headArea">
				<strong class="hLogo"><a href="/" class="logo" title="메인으로 이동"><img src="kor/images/common/logo.png" alt="맥도날드"></a></strong>
				<nav class="hMenu">
					<div class="menu">
						<ul class="depth1">
							<li><!-- li 오버시 on 클래스 추가 -->
								<a href="javascript:gotoMenu(1);" class="dth1 current">Menu</a><!-- 현재페이지 메뉴에 current 클래스 추가 -->
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
		<!-- script 삭제 -->
		</header>
		<!-- //header -->
		<div id="container">
			<div class="content">
				<div class="visualArea bgMenu01">
					<div class="inner">
						<h1 class="titDep1">버거</h1>
						<p class="subCopy">빅맥<sub class="reg">®</sub>에서 맥스파이시<sub class="reg">®</sub> 상하이버거까지, <br>주문 즉시 바로 조리해 더욱 맛있는, 맥도날드의 다양한 버거를 소개합니다.</p>
						<ul class="navPath">
							<li><a href="/">Home</a></li>
							<li><a href="javascript:gotoMenu(1);">Menu</a></li>
							<li><a href="javascript:gotoMenu(1);">버거</a></li>
						</ul>
					</div>
				</div>
    			<div class="contArea">
					<div class="inner">
						<ul class="tabType01">
							<li data-title="버거" data-desc="버거메뉴"><a href="javascript:gotoMenu(1);" role="button" aria-selected="true">단품메뉴</a></li><!-- 선택 된 태그에 aria-selected="true" 추가 -->
							<li><a href="javascript:gotoMenu(2);" role="button">세트메뉴</a></li>
						</ul>
						<div class="mcMenu">
							<p class="count" id="count">21 Products</p>
							<ul class="menuList" id="menuList">
								<li>
									<a href="javascript:goDetail(452)" data-seq="452">
										<div class="thum"><img src="upload/product/pcList/1648631631748.png" alt="신제품 아라비아따 리코타 치킨 버거"></div>
										<div class="name">
											<strong class="ko">아라비아따 리코타 치킨 버거</strong>
											<em class="en">Arrabbiata Ricotta Chicken Burger</em>
										</div>
									</a>
								</li>

								<li>
									<a href="javascript:goDetail(442)" data-seq="442">
										<div class="thum"><img src="upload/product/pcList/1644571668912.png" alt="신제품 더블 빅맥"></div>
										<div class="name">
											<strong class="ko">더블 빅맥</strong>
											<em class="en">Double Big Mac</em>
										</div>
									</a>
								</li>

								<li>
									<a href="javascript:goDetail(387)" data-seq="387">
										<div class="thum"><img src="upload/product/pcList/1621834836862.png" alt="신제품 트리플 치즈버거"></div>
										<div class="name">
											<strong class="ko">트리플 치즈버거</strong>
											<em class="en">Triple Cheeseburger</em>
										</div>
									</a>
								</li>

								<li>
									<a href="javascript:goDetail(15)" data-seq="15">
										<div class="thum"><img src="upload/product/pcList/1583727841393.png" alt="빅맥®"></div>
										<div class="name">
											<strong class="ko">빅맥<sub class="reg">®</sub></strong>
											<em class="en">Big Mac<sub class="reg">®</sub></em>
										</div>
									</a>
								</li>

								<li>
									<a href="javascript:goDetail(19)" data-seq="19">
										<div class="thum"><img src="upload/product/pcList/1583728339451.png" alt="맥스파이시® 상하이 버거"></div>
										<div class="name">
											<strong class="ko">맥스파이시<sub class="reg">®</sub> 상하이 버거</strong>
											<em class="en">McSpicy<sub class="reg">®</sub> Shanghai Burger</em>
										</div>
									</a>
								</li>

								<li>
									<a href="javascript:goDetail(1)" data-seq="1">
										<div class="thum"><img src="upload/product/pcList/1599119588089.png" alt="1955 버거™"></div>
										<div class="name">
											<strong class="ko">1955<sub>®</sub> 버거</strong>
											<em class="en">1955<sub>®</sub> Burger</em>
										</div>
									</a>
								</li>
							</ul>
							<div class="btnMore" id="btnMore">
								<button type="button" class="more" onclick="more()">더보기</button>
							</div>
						</div>
					</div>
				</div>
			 <form id="searchForm" method="post">
				<input type="hidden" name="page" id="page" value="1">
				<input type="hidden" name="seq" id="seq">
				<input type="hidden" name="sub_category_seq" id="sub_category_seq" value="1">
			</form>
<!-- script
<script>
var init_page =0;
var totalPage =0;
$(document).ready(function (){
	getList(1);
});
function getList(page_val){
	$.post("/kor/menu/listContent.do",
			{	
				page:page_val,
				sub_category_seq:1
			},	function(data){
				if(data.is_ok=="ok"){
					totalPage=data.totalPage;
					init_page=data.page;
					$("#count").html(data.totalCount+" Products")
					for(var i=0;i<data.list.length;i++){
						$("#menuList").append(addList(data.list[i]));
					}
					if(page_val>1){
						$("[data-seq='"+data.list[0].seq+"']").focus();
					}
					altEscapeTag();
					if(totalPage==page_val){
						$("#btnMore").hide();
					}
				}else{
					alert("목록가져오기에 실패하였습니다\관리자에게 문의하세요");
				}
			}
			
	);
	
}
function goDetail(seq){
		$("#seq").val(seq);
		$("#searchForm").attr("action","/kor/menu/detail.do");
		$("#searchForm").submit();
}
function addList(data){
	return makeHtml("menu",data);
}
function more(){
	getList(init_page+1);
}


</script>
<script id="menu" type="text/templet">
<li>
	<a href="javascript:goDetail({seq})" data-seq="{seq}">
		<div class="thum"><img src="{pc_list_image_url}" alt="{pc_list_kor_alt}"></div>
		<div class="name">
		<strong class="ko">{kor_name}</strong>
	<em class="en">{eng_name}</em>
</div>
</a>
</li>
</script>	

 -->
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
                        <img src="kor/images/common/web_accessibility.svg" alt="과학기술정보통신부 WEB ACCESSIBILITY 마크(웹 접근성 품질인증 마크)">
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