<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>맥딜리버리</title>
	<meta name="description" id="description" contents="메뉴, 레스토랑, 프로모션 등 안내"/>
	<meta name="keywords" contents="McDonald's, McDrive, McDelivery, McMorning, Happy Meal, Signature Burger, McAllday, McCafe"/>
	<link rel="shortcut icon" type="image/x-icon" href="../images/favicon.ico">
	<link rel="stylesheet" href="../css/common.css"> 
	<link rel="alternate" href="https://www.mcdonalds.co.kr">
<body>
<div class="wrapper ">
		<header class="header"><!-- 상단 고정 fixed 클래스 추가, 메뉴의 depth1 오버시 open 클래스 추가 -->
			
    



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
									<li><a href="../store/main.do" class="dth2">매장찾기</a></li>
									<li><a href="../store/mcdelivery.do" class="dth2">맥딜리버리</a></li>
									<li><a href="../store/mcdrive.do" class="dth2">맥드라이브</a></li>
									<li><a href="../store/rental.do" class="dth2">임차문의</a></li>
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
				





  

<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script><script charset="UTF-8" type="text/javascript" src="//t1.daumcdn.net/postcode/api/core/211103/1635999227231/211103.js"></script>
<!--   

	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

-->    

<div class="visualArea bgStore01" data-title="맥딜리버리" data-desc="맥딜리버리">
					<div class="inner">
						<h1 class="titDep1">맥딜리버리</h1>
						<ul class="navPath">
							<li><a href="/kor/main.do">Home</a></li>
							<li><a href="/kor/store/main.do">Store</a></li>
							<li><a href="/kor/store/mcdelivery.do">맥딜리버리</a></li>
						</ul>
					</div>
				</div>
				<!-- //visualArea -->
				<div class="contArea">
					<div class="inner">
						<h2 class="titDep2">우리집에 맥딜리버리 배달이 되나요?</h2>
						<div class="deliverySrch">
							<fieldset class="sBox">
								<legend>맥딜리버리 가능여부 검색</legend>
								<!-- 20191112 수정 yjs -->
								<div class="frm frwWrap">
									<input type="hidden" id="lat" name="lat" value="">
									<input type="hidden" id="lng" name="lng" value="">
									<span><input type="text" class="addr1" id="addr1" placeholder="주소를 선택해주세요." readonly="" title="입력 된 주소"></span>
									<button type="button" class="btnMC btnM" onclick="openApiPost()" title="주소찾기 새창 열림">주소찾기</button>
									
								</div>
								<!-- //20191112 수정 yjs -->
								<div class="frm">
									<input type="text" class="addr2" id="addr2" title="상세주소 입력" placeholder="상세주소를 입력하세요."> 
									<input type="text" class="addr3" id="dong" title="동 입력"> <span class="unit">동</span>
									<input type="text" class="addr3" id="ho" title="호 입력"> <span class="unit">호</span>
								</div>
								<p class="txt">* 아파트의 경우 동, 호수를 입력하셔야 정확한 검색이 가능합니다.</p>
								<div class="btn">
									<button type="button" class="btnMC btnM" onclick="Submit()">검색하기</button>
								</div>
							</fieldset>
							<div class="rBox">
								<p role="text" class="default" id="default" style="display:inline-block"><strong>검색 결과가 나타납니다.</strong></p>
								<p role="text" class="result ok" id="ok" style="display:none"><strong>맥딜리버리<br>배달이<br>가능합니다</strong> <span>전화 또는 온라인으로<br> 주문할 수 있습니다.</span></p>
								<p role="text" class="result fail" id="fail" style="display:none"><strong>맥딜리버리<br>배달이<br>불가능합니다</strong> <span>빠른 시일 내에 고객님이 계신 곳에<br> 서비스가 가능하도록 노력하겠습니다.</span></p>
							</div>
						</div>
						<ul class="listDep1">
							<li>매장 별 무료 배달 주문 금액 및 소액주문비는 다르게 운영될 수 있으며, 주문 시 결제 페이지에서 미리 확인 하실 수 있습니다.</li>
							<li>맥딜리버리 가격은 매장과 상이합니다.</li>
							<li>배달 가능 구역 내에서도 기상조건이나 기타 매장의 사정에 따라 배달 서비스 이용이 어려울 수 있습니다.</li>
							<li>주문이 밀리는 시간대에는 배달이 다소 지연될 수 있습니다. 고객님의 너그러운 이해 부탁 드립니다.</li>
							<li>메뉴 주문 시 제공 되는 케찹류나 기타 물품의 경우 기본 제공 수량 기준으로 배달하여 드립니다.</li>
							<li>맥딜리버리의 운영 시간은 매장과 상이할 수 있습니다.</li>
						</ul>
						<div class="btnArea mcdelivery">
							<div class="appDown">
							    <div>
									<a href="https://www.mcdelivery.co.kr/kr/" class="btnMC btnL action" target="_blank" title="새창 열림">맥딜리버리 온라인 주문하기</a>
								</div>

							
							</div>
								<div class="app_store">
									<div class="android">
										<a href="https://play.google.com/store/apps/details?id=com.mwos2.mcdelivery&amp;hl=ko" target="_blank" title="새창열림">
											<img src="../images/store/img_app_android.png" alt="Google play 맥딜리버리 앱 다운로드 QR코드"><br>
											<strong>안드로이드 맥딜리버리 앱 다운</strong>
										</a>
									</div>
									<div class="ios">
										<a href="https://apps.apple.com/kr/app/%EB%A7%A5%EB%94%9C%EB%A6%AC%EB%B2%84%EB%A6%AC/id1027699629 " target="_blank" title="새창열림">
											<img src="../images/store/img_app_ios.png" alt="app store 맥딜리버리 앱 다운로드 QR코드"><br>
											<strong>아이폰 맥딜리버리 앱 다운</strong>
										</a>
									</div>
								</div>
<!-- 							<div class="tel">
								<img src="../images/store/img_phone.png" alt="전화 주문하기" width=308 height=90/>
							</div> -->
						</div> <!-- #btnArea mcdelivery -->
					</div>
				</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7d2849da01922567115797fadd6e5ca4&amp;libraries=services"></script><script charset="UTF-8" src="https://t1.daumcdn.net/mapjsapi/js/main/4.4.3/kakao.js"></script><script charset="UTF-8" src="https://t1.daumcdn.net/mapjsapi/js/libs/services/1.0.2/services.js"></script>
<script type="text/javascript">
function openApiPost(){
	new daum.Postcode({
    	oncomplete: function(data) {
       		// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
       		// 예제를 참고하여 다양한 활용법을 확인해 보세요.
    		$("#addr1").val(data.address);
       		
    		var geocoder = new kakao.maps.services.Geocoder();
    		geocoder.addressSearch(data.address, function(result, status) {
    			 if (status === kakao.maps.services.Status.OK) {
    				 $("#lat").val( result[0].y )
    				 $("#lng").val( result[0].x );
    			 } else {
    				 alert("Error !!!")
    			 }
    		});
    	}
	}).open();
}

function openApiPostcode(){
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
    var pop = window.open("/event/kor/pc/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
    
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}
function Submit() {

    if ($("#addr1").val() == "") {
        alert("주소를 입력하세요.");
        $("#addr1").focus();
        return;
    }

	$.ajax({

		crossDomain:true,
		url : "/kor/store/mcdeliveryCheck.do",
        method : "GET",
        data : { "address": encodeURI($("#addr1").val()),
		     	 "lat"    : $("#lat").val(),
			     "lng"    : $("#lng").val()
		},
		dataType:"json",
        jsonpCallback:"callback",
        success : function(obj) {

            //var obj = eval("("+response+")");
            var deliveryOk = "N";
            var comment = "";
            var sayu = "";
            //alert(obj.Delivery_yn + "," + obj.ResultCode);

            if (obj.ResultCode == "1") deliveryOk = "Y";

            var addr_str = $("#addr1").val()+" "+$("#addr2").val();
            if ($("#dong").val() != "") {
                addr_str = addr_str +" "+$("#dong").val()+"동 "+$("#ho").val()+"호<br />";
            }


            if (deliveryOk == "N") {
                //alert(obj.ResultCode);
                if (obj.ResultCode == "-5000") {
                    alert("아파트의 경우 동, 호수를 입력하셔야 정확한 검색이 가능합니다");
                } else {
                	/*
                    if (obj.ResultCode == "-4002") {
                        sayu = "<br/>배달불가 (사유: 주소이상)"; // 주소이상
                    } else if (obj.ResultCode == "-4005") {
                        sayu = "<br/>배달불가 (사유: 배달시간 외 주문)"; // 배달시간 외 주문
                    } else if (obj.ResultCode == "-4006") {
                        sayu = "<br/>배달불가 (사유: 배달 불배 지역)"; // 배달 불배 지역
                    } else if (obj.ResultCode == "-4008") {
                        sayu = "<br/>배달불가 (사유: 기상상태 악화로 인한 배달불가)"; // 기상상태 악화로 인한 배달불가
                    } else {
                        sayu = ""; // 기타
                    }
                    sayu = "";
                    comment = "<div class='inner'><p><strong>"+addr_str+"</strong> 는(은) 배달가능지역이 아니므로<br /> 직접 매장에 방문하셔야 합니다."+sayu+"</p>"
                                 + "<!--<a href='/www/kor/findus/district.do?sSearch_yn=Y&skey=2&skeyword="+$("#addr1").val()+"'>근처 매장찾기</a>--></div>";
                    $("#resultDefault").hide();
                    $("#resultOk").hide();
                    $("#resultFail").html(comment);
                    $("#resultFail").show();
                    */
                	$("#default").hide();
                    $('#ok').parent('.rBox').removeClass('ok');
                    $('#ok').parent('.rBox').addClass('fail');
                	$("#fail").show();
                	$("#ok").hide();
                	$("#fail > a").focus();
                    
                }
            } else if (deliveryOk == "Y") {
            	/*
                //alert($("#addr1").val() + "지역은 배달 가능지역 입니다.");
                comment = "<div class='inner'><p><strong>"+addr_str+"</strong> 는(은) 배달가능지역입니다.<br/>전화 또는 온라인으로 주문할 수 있습니다.</p>"
                             + "<!--<a href='https://www.mcdelivery.co.kr/kr/' target='_blank'>온라인 주문하기</a>--></div>";
                $("#resultDefault").hide();
                $("#resultFail").hide();
                $("#resultOk").html(comment);
                $("#resultOk").show();
            	*/
            	$("#default").hide();
            	$('#ok').parent('.rBox').addClass('ok');
            	$('#ok').parent('.rBox').removeClass('fail');
            	$("#fail").hide();
            	$("#ok").show();
            	$("#ok > a").focus();
            } else {
                alert("오류가 발생했습니다.");
            }
            return;
        },
        error : function(request, status, error) {
				alert('request='+request+'status='+ status+'error='+ error);
            if (request.status != '0') {
                alert("오류가 발생했습니다.");
                return false;
            }
        }
    });
    return;
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
                        <img src="../images/common/web_accessibility.svg" alt="과학기술정보통신부 WEB ACCESSIBILITY 마크(웹 접근성 품질인증 마크)">
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