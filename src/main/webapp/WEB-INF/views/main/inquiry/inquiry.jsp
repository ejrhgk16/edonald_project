<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="맥도날드">
	<meta name="description" content="맥도날드">
	<meta http-equiv="imagetoolbar" content="no">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Cache-Control" content="No-Cache">
    
    <title>1:1 고객문의</title>
    
    <script type="text/javascript" src="/common/jquery/jquery-1.7.min.js"></script>
    <script language="javascript" src="./common/js/inquiry.js"></script>
	<!-- jquery ui -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- jquery ui -->
	
	
	<script type="text/javascript" src="/common/js/ajax.js"></script>
	<script type="text/javascript" src="/common/js/commonTable.js"></script>
	<script type="text/javascript" src="/common/js/extendedComboBox.js"></script>
	<script type="text/javascript" src="/common/js/newUtil.js"></script>
	<script type="text/javascript" src="/common/js/customer_common.js"></script>
	
	
	<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
	<link rel="stylesheet" href="/resources/css/app_common.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/app_common.css">
	
	
	<!--link rel="stylesheet" href="/common/css/app_lib.css" /-->
	
	<!--script language="javascript" src="/MC/HOM/customer_page.js"></script-->
	<!--script type="text/javascript" src="/common/js/commonTable.js"></script>
	<script type="text/javascript" src="/common/js/extendedComboBox.js"></script>
	<script type="text/javascript" src="/common/js/ajax.js"></script>
    <link rel="stylesheet" href="/common/css/app.css" />
    <link rel="stylesheet" href="/common/css/app_common.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
	<meta name="keywords" content="맥도날드">
	<meta name="description" content="맥도날드">
	<meta http-equiv="imagetoolbar" content="no">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Cache-Control" content="No-Cache"-->
	


<script type="text/javascript">
<!--
//공통으로 사용할 변수들 정의
var MEMORY_INIT = true ;
var gUserID='';	//사용자 아이디
var gUserId = gUserID;   
var userId = "";   
var gUserNm = "";   
var gUserGrpCd = "";      
var gDeptId = "";
var storeSeq = "";
var gCtiAgentId = "";
var gCtiAgentDn = "";
var gCtiQueueId = "";
//-->

$(function() {
  
  $("#FILE_1").change(function(e){
	document.getElementById("filename").value = $('input[type=file]')[0].files[0].name;
  });
  
  /*
  document.addEventListener('keydown', function(event) {
	  if (event.keyCode === 13) {
	    event.preventDefault();
	  };
  }, true);
  */
  $('input[type="text"]').keydown(function() {
     if (event.keyCode === 13) {
       event.preventDefault();
     };
  });
  $('input[type="password"]').keydown(function() {
     if (event.keyCode === 13) {
       event.preventDefault();
     };
  });
  
});

</script>

  </head>
  <body class="bg_customer_new" scroll="auto" style="overflow-x: hidden; zoom: 1;">
  
  <form name="mainForm" method="post" onsubmit="return false;">
	<input type="hidden" name="RECVER_TYPE_CD" value="01">
	<input type="hidden" name="VOC_CHANNEL_CD" value="02">
	<input type="hidden" name="ACPT_ID" id="ACPT_ID" value="">
 
    <div class="wrapper">
      <header class="header" style="margin-top: 0px;">
        <div class="headArea">
          <strong class="hLogo">
            <a href="http://www.mcdonalds.co.kr" target="_blank" class="logo" title="메인으로 이동">
              <img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/logo.png" alt="맥도날드">
            </a>x
          </strong>
          <nav class="hMenu">
            <ul>
              <li>
                <a href="/MC/HOM/faqMain.jsp" class="depth">FAQ</a>
              </li>
              <li class="hMenu_li_select">
                <a href="#" class="depth">1:1고객문의</a>
              </li>
              <li>
                <a href="/MC/HOM/movedStory.jsp" class="depth">고객감동스토리</a>
              </li>
            </ul>
          </nav>
          <!-- menu end -->
        </div>
      </header>
      <!-- header end -->
      <div id="container">
        <div class="content">
          <div class="visualArea2 inquiryBg">
            <div class="inner" style="padding-bottom:0px;">
              <h1 class="titDep1">1:1 고객문의</h1>
              <p class="subCopy">
                맥도날드에 대한 깊은 관심에 감사드립니다. 제품이나 서비스에 대한
                문의, 불만, 제안, 칭찬과 격려사항을 알려주세요.<br>
                CS center (080-208-1588)로도 문의하실 수 있습니다. 주말 및
                공휴일 등 운영 시간(평일 09:00~18:00)외에 접수해 주신 내용은<br> 잘 보관하였다가 CS center 운영 시작 후
                신속히 답변드리겠습니다.
              </p>
            </div>
          </div>
          <div style="display:" id="div1">
          <!-- visualArea end -->
          <div class="contArea">
            <ul class="tabType01">
              <li data-title="문의" data-desc="문의하기">
                <a href="javascript:page(1);" role="button" aria-selected="true">문의하기</a>
              </li>
              <!-- 선택 된 태그에 aria-selected="true" 추가 -->
              <li>
                <a href="javascript:page(2);" role="button">답변보기</a>
              </li>
            </ul>
            <div class="faq-form-warp">
              <!-- 개인정보이용동의 -->
              <div class="agree-area">
                <span><strong>1. 개인정보의 수집, 이용에 관한 사항(필수)</strong></span>
                <table class="tbl-list">
                  <colgroup>
                    <col style="width: 389px">
                    <col style="width: 389px">
                    <col style="width: 390px">
                  </colgroup>
                  <tbody>
                    <tr>
                      <th>항목</th>
                      <th>수집목적</th>
                      <th>보유기간</th>
                    </tr>
                    <tr>
                      <td>이름, 연락처, 이메일, 이용매장, 고객문의사항<br>
                        (첨부파일에 기재된 내용 포함)</td>
                        <td>고객불만사항 해결, 문의사항 응답 및 이와 관련한<br> 고객 연락 업무, 고객 손해에 대한 배상 및 보험처리,<br> 서비스 향상을 위한 내부 교육자료 활용, 민원 관련<br> 통계 자료 작성, 민원 처리에 관한 기록 보관, 블랙<br>컨슈머 확인 등</td>
											<td>블랙 컨슈머 관련 기록은 10년, MDS<br>(배달 서비스)기록은 3년, 그 외의 경우 2년<br>단, 관계 법령에 따른 보관기간이 더 길 경우<br> 해당 기간까지</td>
										</tr>
                  </tbody>
                </table>
                <span>위와 같이 개인정보를 처리하는데 동의를 거부할 권리가 있습니다. 그러나 동의를 거부할 경우 서비스 제공이 제한될 수 있습니다.</span>
                <div class="check-agree">
                  <span>위와 같이 개인정보를 처리하는 데 동의하십니까?</span>
                  <input type="hidden" name="IS_PERSON_AGREE_YN" id="IS_PERSON_AGREE_YN">
                  <label class="check-container" for="agree-y">예
                    <input type="radio" name="radio1" id="agree-y" value="Y" checked="">
                    <span class="checkmark"></span>
                  </label>
                  <label class="check-container" for="agree-n">아니오
                    <input type="radio" name="radio1" id="agree-n" value="N">
                    <span class="checkmark"></span>
                </label>
                </div>
                <span><strong>2. 개인정보의 제3자 제공에 관한 사항(필수)</strong></span>
                <p>귀하가 제공하시는 상기 개인정보는 불만사항 해결 등을 위하여 다음과 같이 제3자에게 제공될 수 있습니다.
                </p>
                <table class="tbl-list">
                  <colgroup>
                    <col style="width: 145px">
                    <col style="width: 341px">
                    <col style="width: 341px">
                    <col style="width: 341px">
                  </colgroup>
                  <thead>
                    <tr>
                      <th>제공받는 자</th>
                      <th>제공받는 자의 이용목적</th>
                      <th>제공하는 개인정보의 항목</th>
                      <th>제공받는 자의 보유 및 이용기간</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">Dasca</th>
                      <td>인적, 물적 피해에 대한<br>보험처리 업무</td>
                      <td>이름, 연락처, 이메일, 이용매장,<br>
                        고객문의사항 (첨부파일에 기재된 내용 포함)</td>
											<td>이용 목적 달성 시 까지<br>
                        단, 관계 법령에 따른 보관기간이 더 길 경우<br>
                        해당 기간까지</td>
                    </tr>
                    <tr>
                      <th scope="row">AON</th>
                      <td>인적, 물적 피해에 대한<br>보험처리 업무</td>
                      <td>상동</td>
											<td>상동</td>
                    </tr>
                    <tr>
                      <th scope="row">현대해상</th>
                      <td>인적, 물적 피해에 대한<br>보험처리 업무</td>
                      <td>상동</td>
											<td>상동</td>
                    </tr>
                    <tr>
                      <th scope="row">맥도날드 가맹점</th>
                      <td>고객불만사항 해결</td>
                      <td>상동</td>
											<td>상동</td>
                    </tr>
                  </tbody>
                </table>
                <p>* 가맹점은 <a href="http://www.mcdonalds.co.kr/www/kor/util/private.do" target="_blank" style="color:#C86C37;"><strong>http://www.mcdonalds.co.kr/www/kor/util/private.do</strong></a> 에서 확인하실 수 있습니다.<br>
                  위와 같이 개인정보를 처리하는데 동의를 거부할 권리가 있습니다. 그러나 동의를 거부할 경우 서비스 제공이 제한 될 수 있습니다.</p>
                  <input type="hidden" id="IS_SENSITIVE_AGREE_YN" name="IS_SENSITIVE_AGREE_YN" value="">
                  <div class="check-agree">
                    <span>위와 같이 개인정보를 처리하는 데 동의하십니까?</span>
                    <input type="hidden" name="IS_THIRD_AGREE_YN" id="IS_THIRD_AGREE_YN">
                    <label class="check-container" for="agree-y2">예
                      <input type="radio" name="radio2" id="agree-y2" value="Y" checked="">
                      <span class="checkmark"></span>
                    </label>
                    <label class="check-container" for="agree-n2">아니오
                      <input type="radio" name="radio2" id="agree-n2" value="N">
                      <span class="checkmark"></span>
                  	</label>
                  </div>
                  <div class="prevent-sentence">
                  	<span>1:1 고객 문의 작성 시, 욕설/성희롱 등의 부적절한 표현은 삼가주시기를 부탁 드립니다.<br>
						부적절한 표현이 확인 될 경우 고객응대 근로자 보호 조치에 따라 회사는 적극적인 근로자 보호 조치를 취할 수 있습니다.</span>
				  </div>
              </div>
              <!-- agree-area end -->
              <div class="qna-form-area">
                <table class="qna-form">
                  <colgroup>
                    <col style="width: 139px">
                    <col style="width: 432px">
                    <col style="width: 165px">
                    <col style="width: 432px">
                  </colgroup>
                  <tbody><tr>
                    <th scope="row">매장명(매장위치)</th>
                    <td colspan="3">
                      <input type="hidden" name="STORE_SEQ" id="STORE_SEQ" value="">
					  <input type="hidden" name="STORE_ADDRESS" id="STORE_ADDRESS" value="">
					  <input class="int w587" type="text" name="STORE_NM" id="STORE_NM" value="" readonly=""> 
                      &nbsp;&nbsp;&nbsp;<button class="btnMC btnM" onclick="storeSearchPop();">매장검색</button>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">이름</th>
                    <td>
                      <input class="int w432" type="text" name="CUST_NM" id="CUST_NM">
                    </td>
                    <th scope="row">연락처</th>
                    <td>
                      <div class="d-flex-row gap-21">
                      	<input type="hidden" name="MOBILE" id="MOBILE">
                        <input class="int w112" type="text" name="MOBILE1" id="MOBILE1" maxlength="4" onblur="javascript:isNumAlert('연락처',this);">
                        <span>-</span>
                        <input class="int w112" type="text" name="MOBILE2" id="MOBILE2" maxlength="4" onblur="javascript:isNumAlert('연락처',this);">
                        <span>-</span>
                        <input class="int w112" type="text" name="MOBILE3" id="MOBILE3" maxlength="4" onblur="javascript:isNumAlert('연락처',this);">
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">이메일</th>
                    <td><input class="int w432" type="text" name="EMAIL" id="EMAIL"></td>
                    <th scope="row">비밀번호</th>
                    <td><input class="int w432" type="password" name="CUST_PASSWORD" id="CUST_PASSWORD"></td>
                  </tr>
                  <tr>
                    <th scope="row">제목</th>
                    <td colspan="3">
                      <input class="int w1029" type="text" name="ACPT_TITLE" id="ACPT_TITLE">
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">내용</th>
                    <td colspan="3">
                      <textarea name="ACPT_DESC" id="ACPT_DESC" class="int w1029"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <th scope="row">파일첨부</th>
                    <td colspan="3">
                      <input class="int w587" id="filename" type="text">
                      <label for="FILE_1" class="btn bg-gray">
                        <input type="file" name="FILE_1" id="FILE_1" hidden="true">
                        	파일선택
                      </label>
                    </td>
                  </tr>
                </tbody></table>
                <p>파일용량: 10MB까지<br>
                  첨부 가능 형식 : JPG, JPEG, JPE, JFIF, GIF, TIF, TIFF, PNG / zip</p>
              </div>
            </div>
            <!-- submit button -->
            <button type="button" id="btnInsert" class="btnMC btnM insertBtn" onclick="insert();">
              문의 등록하기
            </button>         
          </div>
          <!-- content area end -->
          </div>
          
        
          
          
          <div style="display:none" id="div2">
          	
          	<!-- visualArea end -->
	          <div class="contArea">
	            <ul class="tabType01">
	              <li data-title="문의" data-desc="문의하기">
	                <a href="javascript:page(1);" role="button">문의하기</a>
	              </li>
	              <!-- 선택 된 태그에 aria-selected="true" 추가 -->
	              <li>
	                <a href="javascript:page(2);" role="button" aria-selected="true">답변보기</a>
	              </li>
	            </ul>
	          
	          
	          <!-- 답변보기 page 아래로 이어지는 부분 시작, div클래스 네임 처음 동일 -->
	          <div class="faq-form-warp">
	            <div class="reply-check">
	              <strong>문의내용 작성 시 입력하셨던 이메일, 비밀번호를 입력해 주세요.</strong>
	              <div class="reply-form">
	                <div class="d-flex-row">
	                  <label for="email">이메일</label>
	                  <input type="text" name="EMAIL2" id="EMAIL2" class="int w432">
	                </div>
	                <div class="d-flex-row">
	                  <label for="password">비밀번호</label>
	                  <input type="password" name="CUST_PASSWORD2" id="CUST_PASSWORD2" class="int w432">
	                </div>
	              </div>
	            </div>
	          </div>
	          <!-- submit button -->
	          <button type="button" class="btnMC btnM" onclick="search();">
	            문의 조회하기
	          </button>
	          <!-- 문의조회버튼 클릭 시 하단에 나오는 테이블 영역 -->
	          <div class="reply-view-area" id="LIST_REPLY_DIV">
	            <!--table class="reply-view">
	              <colgroup>
	                <col style="width: 144px">
	                <col style="width: auto">
	                <col style="width: 144px">
	                <col style="width: 144px">
	                <col style="width: 144px">
	              </colgroup>
	              <thead>
	                <tr>
	                  <th scope="col">접수번호</th>
	                  <th scope="col">제목</th>
	                  <th scope="col">방문매장</th>
	                  <th scope="col">접수일</th>
	                  <th scope="col">상태</th>
	                </tr>
	              </thead>
	              <tbody>
	                <tr>
	                  <th scope="row">21V0003101</th>
	                  <td>해피밀 이번달 장난감에 대해 알려주세요!</td>
	                  <td>은평 이마트</td>
	                  <td>2021-01-26</td>
	                  <td>완료</td>
	                </tr>
	                <tr>
	                  <th scope="row">내용</th>
	                  <td colspan="4">안녕하세요. 해피밀에서 나오는 이번달 장난감 무엇인가요?<br>너무 너무 궁금합니다! 빨리 알려주세요!</td>
	                </tr>
	                <tr>
	                  <th scope="row" class="color-mcdRed">답변</th>
	                  <td colspan="4" class="color-mcdRed">안녕하세요, 고객님! 행복을 전하는 맥도날드 고객센터입니다!<br>문의주신 이번달 맥도날드의 해피밀은 말이죠! 맥도날드 공식 사이트에서 직접 확인할 수 있답니다~~~ 지금 바로 공식 사이트로 방문해보세요! 그럼 또 만나요~</td>
	                </tr>
	              </tbody>
	            </table-->
	          </div>
	          
	          <div id="LIST_DIV"></div>
			  <div id="LIST_PAGE_DIV" style="display:none"></div>
	
	          </div>
	         <!-- content area end -->
          	
          </div>

          <div class="side-box">
            <span>고객센터</span>
            <strong>080.208.1588</strong>
            <p>평일 09:00 ~ 18:00<br>
            (점심시간 12:00 ~ 13:00)</p>
            <!--button type="button">
              챗봇상담
            </button-->
          </div>
          
          
        </div>
      </div>
    </div>
    
    
    <div id="POP_OK" class="inquiry-modal" style="display:none;">    	
		<!--img src="/common/images/customer/insert_ok.png" width="484" height="387" border="0" usemap="#Map" onclick="javascript:page(3);"/>
		<map name="Map" id="Map"><area shape="rect" coords="198,600,296,375" href="javascript:page(3);" /></map-->
		<div class="pop-body">
			<img src="/common/images/customer/insert_ok.png" width="650" height="536" border="0"> 
			<button type="button" id="btnInsert" class="btnMC btnM insertBtn" onclick="page(3);">닫기</button>
		</div>
	</div>
    
   </form>
<!-- hidden iframe 시작 --> 
<iframe name="hdfrm" width="0" height="0" scrolling="auto" frameborder="0">
</iframe> 
<!-- hidden iframe 끝 --> 
  

</body></html>