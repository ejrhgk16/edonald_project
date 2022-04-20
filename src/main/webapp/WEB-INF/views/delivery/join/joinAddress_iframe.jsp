<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html "ko"=""><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">

<meta name="language" content="ko">
<title>맥딜리버리</title>

<link rel="stylesheet" type="text/css" href="./css/w_address.css">
<link rel="stylesheet" type="text/css" href="./css/wos2.6/selectric2.css">

<link rel="icon" type="image/x-icon" href="/mdsgis/resources/old/favicon.ico">

</head>
<body>

<div class="wrap">
  <div class="flow" style="position: absolute center;"> <img src="./img/order_floww_01.gif" width="897" height="100" alt="맥딜리버리 주문단계"> </div>
  <!--시작:탭메뉴-->
  <div class="tab_menu" style="display:none;">
    <ul>

      <li><a id="sel_jibun_search" class="selected" href="javascript:;">지번주소</a></li>
      <li class="right"> <a id="sel_load_search" href="javascript:;">도로명 주소</a></li>
    </ul>
  </div>
  <!--시작:지번주소 입력-->
 <form id="jibunSform" name="jibunSform" method="post" action="">
  <div id="p_inbox gibun_add" style="margin-left:40px;">
  <p class="tip01">&nbsp;</p>
  <table border="0">
    <tbody><tr>
      <th>지역명</th>
      <td class="area"><span class="add_01">
        <input type="text" id="admin_cty_nm" name="admin_cty_nm" class="input_add" placeholder="지번,도로명,건물명으로 검색해주세요" onkeypress="doIfEnter(event, getBuildList)">
        </span><span class="add_02">
        <button type="button" onclick="getBuildList();" class="btn">검색</button>
        </span>
        <!--시작:주소선택-->

        <div id="admin_cty_build" class="area_select" style="display:none">
        </div></td>
    </tr>
    
    
  </tbody></table>
  <table border="0" id="detail_addr_el" style="display:none;">
    <tbody><tr>
      <th>상세주소</th>
      <td><ul>
          <!--시작:상세주소-->
          <li class="address"> <div id="dis_addr_build" name="dis_addr_build"></div></li>
          <li><span class="add_01">
            <input type="text" id="address" name="address" class="input_add" placeholder="나머지 주소를 입력해 주세요" onkeypress="doIfEnter(event, codeAddress)">
            </span><span class="add_02">
            <button type="button" onclick="codeAddress();" class="btn">확인</button>
            </span></li>
          <li class="tip">신속한 배달을 위해 동-호수를 정확히 입력해 주세요</li>
        </ul></td>
    </tr>
  </tbody></table>
  </div>
  </form>

  <!--시작:도로명주소-->
  <form id="roadSform" name="roadSform" method="post" action="">
  <div id="p_inbox dolo_add" style="display:none">
  <p class="tip01"> 찾으시려는 도로명주소의 건물번호 또는 건물명까지 상세히 입력 후 검색해 주세요. (<span class="tip02">도로명 주소 확인 : </span><a href="http://www.juso.go.kr" target="open"> www.juso.go.kr</a>) </p>
  <table border="0">
    <tbody><tr>
      <th rowspan="2">지역명</th>
      <td class="road" style="padding-top:20px;">


							<span class="fl ad1">
				                <select id="mega_cty_cd" name="mega_cty_cd" tabindex="1" sb="1768749" style="display: none;">
                                        <option value="" selected="">광역시도</option>
                                        
                                            <option value="42">강원도</option>
                                        
                                            <option value="41">경기도</option>
                                        
                                            <option value="48">경상남도</option>
                                        
                                            <option value="47">경상북도</option>
                                        
                                            <option value="29">광주광역시</option>
                                        
                                            <option value="27">대구광역시</option>
                                        
                                            <option value="30">대전광역시</option>
                                        
                                            <option value="26">부산광역시</option>
                                        
                                            <option value="11">서울특별시</option>
                                        
                                            <option value="36">세종특별자치시</option>
                                        
                                            <option value="31">울산광역시</option>
                                        
                                            <option value="28">인천광역시</option>
                                        
                                            <option value="46">전라남도</option>
                                        
                                            <option value="45">전라북도</option>
                                        
                                            <option value="50">제주특별자치도</option>
                                        
                                            <option value="44">충청남도</option>
                                        
                                            <option value="43">충청북도</option>
                                        
				                </select><div id="sbHolder_1768749" class="sbHolder" tabindex="1"><a id="sbToggle_1768749" href="#" class="sbToggle"></a><a id="sbSelector_1768749" href="#" class="sbSelector">광역시도</a><ul id="sbOptions_1768749" class="sbOptions" style="display: none;"><li><a href="#" rel="" class="sbFocus">광역시도</a></li><li><a href="#42" rel="42">강원도</a></li><li><a href="#41" rel="41">경기도</a></li><li><a href="#48" rel="48">경상남도</a></li><li><a href="#47" rel="47">경상북도</a></li><li><a href="#29" rel="29">광주광역시</a></li><li><a href="#27" rel="27">대구광역시</a></li><li><a href="#30" rel="30">대전광역시</a></li><li><a href="#26" rel="26">부산광역시</a></li><li><a href="#11" rel="11">서울특별시</a></li><li><a href="#36" rel="36">세종특별자치시</a></li><li><a href="#31" rel="31">울산광역시</a></li><li><a href="#28" rel="28">인천광역시</a></li><li><a href="#46" rel="46">전라남도</a></li><li><a href="#45" rel="45">전라북도</a></li><li><a href="#50" rel="50">제주특별자치도</a></li><li><a href="#44" rel="44">충청남도</a></li><li><a href="#43" rel="43">충청북도</a></li></ul></div>
							</span>
							<span id="left_content_sec" class="fl ad2 ml7">
						      <select id="cty_rgn_cd" name="cty_rgn_cd" style="width: 200px; display: none;" sb="11778835">
						      <option value="" selected="">시구군</option>
						      </select><div id="sbHolder_11778835" class="sbHolder" tabindex="0"><a id="sbToggle_11778835" href="#" class="sbToggle"></a><a id="sbSelector_11778835" href="#" class="sbSelector">시구군</a><ul id="sbOptions_11778835" class="sbOptions" style="display: none;"><li class="last"><a href="#" rel="" class="sbFocus">시구군</a></li></ul></div>
							</span>

        </td>
    </tr>
    <tr>
      <td style="padding:5px 5px 20px;"><span class="add_01">
        <input type="text" id="admin_cty_cd_road" name="admin_cty_cd_road" class="input_add" placeholder="도로명 입력" style="width:315px;">
        &nbsp;&nbsp;<input type="text" id="address1" name="address1" class="input_add" placeholder="건물번호" style="width:95px;">
        <span style="padding:0 6px;">-</span>
        <input type="text" id="address2" name="address2" class="input_add" placeholder="건물번호" style="width:95px;">
        </span><span class="add_02">
        <button type="button" id="BTN_NewAddrBuildSearch" class="btn">검색</button>
        </span></td>
    </tr>

    <tr>
      <th>상세주소</th>
      <td><ul>
          <!--시작:상세주소-->
          <li class="address"> <div id="dis_addr_build_road" name="dis_addr_build_road"></div></li>
          <li><span class="add_01">
            <input type="text" id="address" name="address" class="input_add" placeholder="나머지 주소를 입력해주세요">
            </span><span class="add_02">
            <button type="button" onclick="codeAddress();" class="btn">확인</button>
            </span></li>
          <li class="tip">신속한 배달을 위해 동-호수를 정확히 입력해 주세요</li>
        </ul></td>
    </tr>

  </tbody></table>
  </div>
  </form>
  <!--시작:최종배달주소 및 특이사항-->

  <form id="korResultForm" name="korResultForm" method="post" action="">
      <input type="hidden" id="mega_cty_nm" name="mega_cty_nm" value="">
      <input type="hidden" id="cty_rgn_nm" name="cty_rgn_nm" value="">
      <input type="hidden" id="admin_cty_nm" name="admin_cty_nm" value="">
      <input type="hidden" id="admin_cty_cd" name="admin_cty_cd" value="">
      <input type="hidden" id="address_bld" name="address_bld" value="">
      <input type="hidden" id="delivery_sel_addr" name="delivery_sel_addr" value="">
      <input type="hidden" id="addr_build" name="addr_build" value="">
      <input type="hidden" id="address" name="address" value="">
      <input type="hidden" id="echo_sidoName" name="echo_sidoName" value="">
      <input type="hidden" id="echo_gunguName" name="echo_gunguName" value="">
      <input type="hidden" id="echo_dongName" name="echo_dongName" value="">
      <input type="hidden" id="echo_dongGovName" name="echo_dongGovName" value="">
      <input type="hidden" id="echo_jibunAddress" name="echo_jibunAddress" value="">
      <input type="hidden" id="echo_streetAddress" name="echo_streetAddress" value="">
      <input type="hidden" id="echo_dongAddress" name="echo_dongAddress" value="">
      <input type="hidden" id="echo_fullAddress" name="echo_fullAddress" value="">
      <input type="hidden" id="echo_location" name="echo_location" value="">
      <input type="hidden" id="echo_updateDate" name="echo_updateDate" value="">
      <input type="hidden" id="echo_legalDongAndLeeName" name="echo_legalDongAndLeeName" value="">
      <input type="hidden" id="echo_jibunMainAndSub" name="echo_jibunMainAndSub" value="">
      <input type="hidden" id="echo_streetName" name="echo_streetName" value="">
      <input type="hidden" id="echo_bdMainAndSub" name="echo_bdMainAndSub" value="">
      <input type="hidden" id="echo_bdName" name="echo_bdName" value="">
      <input type="hidden" id="echo_sidoNameOrder" name="echo_sidoNameOrder" value="">
  <div id="last_addr_el" style="display:none; width: 100%; margin-left:40px;">
	<table>
    <tbody><tr>
      <th>최종 배달주소</th>
      <td><div id="delivery_addr" name="delivery_addr" class=" cnfm_input"></div></td>
    </tr>
    <tr>
      <th>배달 특이사항</th>
      <td><textarea id="remark" name="remark" class="apply_text" placeholder="예) 아이가 있으니 노크해 주세요"></textarea></td>
    </tr>
    </tbody></table>
  </div>
  </form>

</div>

<div id="body_content_none"></div>
<div id="result"></div>
<div id="layerPop"></div>
<div id="div_delivery_sel_addr"></div>



<script type="text/javascript" src="/mdsgis/resources/old/jscript/wos2.6/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="/mdsgis/resources/old/jscript/wos2.6/jquery.selectbox-0.2.js"></script>
<script language="JavaScript" src="/mdsgis/resources/old/jscript/validate.js"></script>
<script type="text/javascript" src="/mdsgis/resources/old/jscript/ajaxcommon.js"></script>
<script language="javascript">


//------------------------------------------
// 메시시 수신 Event
// AWB에서 이벤트 발생시에
//------------------------------------------
if (!window.addEventListener)
{
    window.attachEvent("onmessage", ReceiveMessage);
}
else
{
    window.addEventListener("message", ReceiveMessage, false);
}


var target       = null;
var origin       = null;
var DeliveryTime = "";
var recvMsg   = "";
var resultJson_pre ="";
var resultJson_last ="";
var resultJsonData ="";


//-------------------------------------
// AWB로 부터 수신 메시시 표시
//
//-------------------------------------
function ReceiveMessage(e)
{
    if (window.external != null && window.external != undefined)
    {

    	target = e.source;
     	origin = e.origin;
	   	var awbRecvMsg   = JSON.stringify(e.data);
	   	var JSONObject = JSON.parse(e.data);

//	   	alert("wos receive data -->>" + e.data );

	   	var JSONObject = JSON.parse(e.data);
	   	var messageType = JSONObject["MessageType"];
		//alert("MessageType -->>" + messageType);
	   	if ( messageType=="5") {

            var remark = "";
	 	    //alert( remark );

        	var strElementId = document.getElementById('sel_jibun_search').className;
        	var delivery_sel_addr = "";
        	if( strElementId == "" || strElementId ==  null ){
        		delivery_sel_addr = $("#delivery_sel_addr", "#korResultForm").val();
                remark = '{\\"AddressElementTypeCode\\":21,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + $("#remark", "#korResultForm").val() + '\\"}]}';
        	} else {
        		delivery_sel_addr = $("#delivery_sel_addr", "#korResultForm").val();
                remark = '{\\"AddressElementTypeCode\\":21,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + $("#remark", "#korResultForm").val() + '\\"}]}';
        	}

        	if ( delivery_sel_addr == "" ) {
				alert("상세 주소까지 모두 입력해주세요.");
	 	    } else {
				// Bug #2770
				// TODO confirm이슈가 chrome(v67)에서 발생했었는데 chrome(v68)에서 발생하지 않음.
	 	        // if ( confirm("아래 검색된 주소와 배달 주소가 맞는지 확인하여 주십시오.\n주소록에 추가하시겠습니까?") ){
	 		 	    //delivery_sel_addr
	 		 	    resultJsonData = resultJson_pre + remark + resultJson_last
                    //alert("resultJsonData::" + resultJsonData);
                    //alert("remark::" + remark);
                    //alert("resultJson_last::" + resultJson_last);
	 		 	    parent.postMessage(resultJsonData, '*');
	 		    	//document.getElementById("remark").value
	 		    	//{\\"AddressElementTypeCode\\":21,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"test\\"}]}

	 	        // }
	 	    }
	   	}



	   	recvMsg = awbRecvMsg;
	   	// 메시지 분석하는 처리 Process 추가
    }
    return false;
}


var image = '/mdsgis/resources/old/images/map/circle.png';
var pageConf = {
	    storeCtySearchUrl     : 'wWosStoreCtySearch.action?',
	    adminCtyRoadSearchUrl : 'storeRoadCtySearchV26.action?',
	    adminCtySearchUrl     : 'wWosStoreAdminCtySearch.action?',
	    adminCtySearchUrlFireFox : 'storeRoadCtySearchFireFox.action?',
	    param                 : ''
	};

  doLayerPopup = function(){
      var action = new Action();
      action.config.requestStyle = "layer";
      action.config.formID       = "form";
      action.config.url          = "adminCtySearchMain.action?admin_cty_nm="+$("#search_dong", "#form").val();
      action.config.layer.width  = "450px";
      action.config.layer.height = "450px";
      action.config.layer.top    = "100px";
      action.config.layer.left   = "100px";
      action.config.layer.title  = "";
      action.run();
      setAddrFocus();
  };

 $(window).load(function(){
 });


var setAddrFocus = function() {
    try {
        var strElementId = document.getElementById("hide_div");
        if( strElementId == "" || strElementId ==  null ){
            setTimeout(setAddrFocus, 1);
            return false;
        } else {
        	$("#admin_cty_nm", "#searchForm").focus();
            return false;
        }

    } catch(err){

    }
};

var setSearchDongFocus = function() {
 try {
     var strElementId = document.getElementById("search_dong");
     if( strElementId == "" || strElementId ==  null ){
         setTimeout(setAddrFocus, 1);
         return false;
     } else {
     	$("#search_dong", "#form").focus();

     }

 } catch(err){

 }
};

 $(document).ready(function() {

	// 렌더링 후 포커스
	$('#admin_cty_nm').focus();


     $("#BTN_NewAddrBuildSearch").live("click", function(){
     	if(!blankCheck( "#mega_cty_cd","#roadSform","광역시도를 검색하여 주세요.")){return;}
    	if(!blankCheck( "#cty_rgn_cd","#roadSform","시군구를 검색하여 주세요.")){return;}
     	if(!blankCheck( "#admin_cty_cd_road","#roadSform","도로명을 입력하여 주세요.")){return;}
        if(!blankCheck( "#address1","#roadSform","건물 번호를 입력하여 주세요.")){return;}


         if ( $("#address1", "#roadSform").val() == "" &&  $("#address2", "#roadSform").val() != "" ) {
             alert("건물 번호를 입력해주세요.");
             return;
         }

         if ( $("#address2", "#roadSform").val() == "" ) {
         	$("#address2","#roadSform").attr("value","0");
         }

         if ( $("#address1", "#roadSform").val() != "" ) {
             if(!func_checkValue("#address1", "#roadSform", "건물 번호는 숫자만 입력하여주세요.", "3")) {return;}
         }

         if ( $("#address2", "#roadSform").val() != "" ) {
             if(!func_checkValue("#address2", "#roadSform", "건물 번호는 숫자만 입력하여주세요.", "3")) {return;}
         }
 /*
     	if(!blankCheck( "#address1","#roadSform","건물 번지를 입력하여 주세요.")){return;}
     	if(!blankCheck( "#address2","#roadSform","건물 번지를 입력하여 주세요.")){return;}
 */
         $("#mega_cty_nm" ,"#korResultForm").attr("value",$("#mega_cty_cd",roadSform).children("option:selected").text() );
         $("#cty_rgn_nm"  ,"#korResultForm").attr("value",$("#cty_rgn_cd",roadSform).children("option:selected").text()  );
         $("#admin_cty_nm","#korResultForm").attr("value",$("#admin_cty_cd_road"   ,"#roadSform").val());
         $("#address_bld","#korResultForm").attr("value","");

         var mega_cty_nm     = $("#mega_cty_cd",roadSform).children("option:selected").text() + " ";
         var cty_rgn_nm      = $("#cty_rgn_cd",roadSform).children("option:selected").text() + " ";
         var admin_cty_nm    = $("#admin_cty_cd_road"   ,"#roadSform").val();

         var admin_cty_cd    = ""+document.getElementById("admin_cty_cd_road").value;
         var build_no         = $("#address1"   ,"#roadSform").val() + "-" + $("#address2"   ,"#roadSform").val();

         var addr = mega_cty_nm + " " + cty_rgn_nm + " " + admin_cty_nm + " " + build_no;

         //document.getElementById("div_addr_build").style.display = "block";
         //document.getElementById("detail_addr_div").style.display = "block";

 	 	var dis_addr_build = document.getElementById("dis_addr_build_road");
 	 	dis_addr_build.innerHTML = addr;

         $("#addr_build","#korResultForm").attr("value",addr);
         return false;
     });

	 /* 지번 검색인 경우의 광역시도 선택시 */
	    $("#mega_cty_cd").live('change', function(){

            if($(this).val()=="") {
                callContent('content', {url:pageConf.storeCtySearchUrl, params:'', id:'left_content_sec', hideIds:'body_content_none', ingFlag:'N'});
//                callContent('content', {url:pageConf.adminCtySearchUrl, params:'', id:'left_content_third', hideIds:'body_content_none', ingFlag:'N'});
            } else {
                callContent('content', {url:pageConf.storeCtySearchUrl, params:'mega_cty_cd='+ $(this).val(), id:'left_content_sec', hideIds:'body_content_none', ingFlag:'N'});
//                callContent('content', {url:pageConf.adminCtySearchUrl, params:'', id:'left_content_third', hideIds:'body_content_none', ingFlag:'N'});
            }
       });

		 $("#mega_cty_cd").live('change', function(){
	         if($(this).val()=="") {
	             callContent('content', {url:'m4dCtySearch.action', params:'', id:'result', hideIds:'body_content_none', ingFlag:'N'});
	         } else {
	                //alert("1");
	             callContent('content', {url:'m4dCtySearch.action', params:'mega_cty_cd='+ $(this).val(), id:'result', hideIds:'body_content_none', ingFlag:'N'});
	             callContent('content', {url:pageConf.storeCtySearchUrl, params:'mega_cty_cd='+ $(this).val(), id:'result', hideIds:'body_content_none', ingFlag:'N'});
	         }
	     });
/*
	   $("#mega_cty_cd_road").live('change', function(){

            //alert("1");
            if($(this).val()=="") {
                callContent('content', {url:pageConf.storeCtySearchUrl, params:'', id:'left_content_sec', hideIds:'body_content_none', ingFlag:'N'});
                //callContent('content', {url:pageConf.adminCtyRoadSearchUrl, params:'', id:'left_content_third', hideIds:'body_content_none', ingFlag:'N'});
            } else {
                callContent('content', {url:pageConf.storeCtySearchUrl, params:'mega_cty_cd='+ $(this).val(), id:'left_content_sec', hideIds:'body_content_none', ingFlag:'N'});
                //callContent('content', {url:pageConf.adminCtyRoadSearchUrl, params:'', id:'left_content_third', hideIds:'body_content_none', ingFlag:'N'});
            }
	   });

*/

        $("#deliveryStoreBtn").live("click", function(){
			var hous_nm       = $(this).attr("hous_nm");
			var si_nm         = $(this).attr("si_nm");
			var gu_nm         = $(this).attr("gu_nm");
			var dong_nm       = $(this).attr("dong_nm");
			var street_no     = $(this).attr("street_no");
			var area_no       = $(this).attr("street_no");
			var bldg_dong     = $(this).attr("bldg_dong");
			var bldg_ho       = $(this).attr("bldg_ho");
			var address_floor = $(this).attr("address_floor");

			//alert("address_floor:::" + $(this).attr("address_floor"));
			var list = street_no.split( "-" );
			street_no = "0";
			if ( list.length == 1 ) {
				area_no = list[0];
				street_no = "0";
			} else if ( list.length == 2 ) {
				area_no = list[0];
				street_no = list[1];
			}

			var lat           = $(this).attr("lat");
			var lng           = $(this).attr("lng");
			var delivery_store_seq = "0";
			var storeType     = "1";
			var isDelivery    = "true";
			var IsWeatherBlocker   = "false";
			var WeatherTypeCode    = "0";
			var WeatherConditionsDescription    = "0";
			var etcAddr            = $(this).attr("etc_addr");

//			alert("22: lat -->>" + lat);
//			alert("23: lng -->>" + lng);
	var jsontext =
        '{'
 		+'   "RequestID":1,'
 		+'   "MessageType":3,'
 		+'   "Body":"{\\"AddressElements\\":[{\\"AddressElementTypeCode\\":21,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"test\\"}]},{\\"AddressElementTypeCode\\":19,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"2\\"}]},{\\"AddressElementTypeCode\\":13,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + bldg_dong + '\\"}]},{\\"AddressElementTypeCode\\":14,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + address_floor + '\\"}]},{\\"AddressElementTypeCode\\":15,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + bldg_ho + '\\"}]},{\\"AddressElementTypeCode\\":9,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + etcAddr + '\\"}]},{\\"AddressElementTypeCode\\":1,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + area_no + '\\"}]},{\\"AddressElementTypeCode\\":2,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + hous_nm + '\\"}]},{\\"AddressElementTypeCode\\":3,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + si_nm + '\\"}]},{\\"AddressElementTypeCode\\":6,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + dong_nm + '\\"}]},{\\"AddressElementTypeCode\\":11,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + gu_nm + '\\"}]},{\\"AddressElementTypeCode\\":20,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + street_no + '\\"}]},{\\"AddressElementTypeCode\\":22,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + lat + '\\"}]},{\\"AddressElementTypeCode\\":23,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + lng + '\\"}]}],\\"Stores\\":[{\\"StoreTypeCode\\":' + storeType + ',\\"StoreNumber\\":\\"' + delivery_store_seq + '\\",\\"WeatherConditionsDescription\\":\\"'+WeatherConditionsDescription+'\\",\\"WeatherTypeCode\\":'+WeatherTypeCode+',\\"IsWeatherBlocker\\":'+ IsWeatherBlocker + ',\\"IsStoreOpen\\":true}]}",'
 		+'   "IsAddressChanged":false,'
 		+'   "ResultCode":1'
 		+'} ';
 		//alert("잠시 보여줌 :: " + jsontext);
	resultJson_pre =
        '{'
 		+'   "RequestID":1,'
 		+'   "MessageType":3,'
 		+'   "Body":"{\\"AddressElements\\":[';

    resultJson_last =
 	        ',{\\"AddressElementTypeCode\\":19,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"2\\"}]},{\\"AddressElementTypeCode\\":9,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + etcAddr + '\\"}]},{\\"AddressElementTypeCode\\":13,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + bldg_dong + '\\"}]},{\\"AddressElementTypeCode\\":15,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + bldg_ho + '\\"}]},{\\"AddressElementTypeCode\\":1,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + area_no + '\\"}]},{\\"AddressElementTypeCode\\":2,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + hous_nm + '\\"}]},{\\"AddressElementTypeCode\\":3,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + si_nm + '\\"}]},{\\"AddressElementTypeCode\\":6,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + dong_nm + '\\"}]},{\\"AddressElementTypeCode\\":11,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + gu_nm + '\\"}]},{\\"AddressElementTypeCode\\":20,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + street_no + '\\"}]},{\\"AddressElementTypeCode\\":22,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + lat + '\\"}]},{\\"AddressElementTypeCode\\":23,\\"Value\\":[{\\"AliasTypeCode\\":1,\\"Alias\\":\\"' + lng + '\\"}]}],\\"Stores\\":[{\\"StoreTypeCode\\":' + storeType + ',\\"StoreNumber\\":\\"' + delivery_store_seq + '\\",\\"WeatherConditionsDescription\\":\\"'+WeatherConditionsDescription+'\\",\\"WeatherTypeCode\\":'+WeatherTypeCode+',\\"IsWeatherBlocker\\":'+ IsWeatherBlocker + ',\\"IsStoreOpen\\":true}]}",'
 	 		+'   "IsAddressChanged":false,'
 	 		+'   "ResultCode":1'
 	 		+'} ';

     var strElementId = document.getElementById('sel_jibun_search').className;
     //alert(document.getElementById('sel_load_search').className);

     if( strElementId == "" || strElementId ==  null ){
        $("#delivery_sel_addr","#form").attr("value",$(this).attr("delivery_address"));
     }  else {
   	 	$("#delivery_sel_addr","#road_form").attr("value",$(this).attr("delivery_address"));
     }


 	 	//delivery_address
 		//resultJsonData = 	jsontext;
    	//target.postMessage(jsontext, '*');
	        return false;

        })

     $("#dong_build_sel").live("click", function(){
     	document.getElementById("admin_cty_build").style.display = "none";
		document.getElementById("detail_addr_el").style.display  = "block";

        var addr = $(this).attr("fullAddress");
        $("#mega_cty_nm" ,"#korResultForm").attr("value",$(this).attr("mega_cty_nm") );
        $("#cty_rgn_nm"  ,"#korResultForm").attr("value",$(this).attr("cty_rgn_nm")  );
        $("#admin_cty_nm","#korResultForm").attr("value",$(this).attr("admin_cty_nm"));
        $("#admin_cty_cd","#korResultForm").attr("value",$(this).attr("admin_cty_cd"));
        $("#address_bld","#korResultForm").attr("value",$(this).attr("build_nm"));
        $("#echo_sidoName","#korResultForm").attr("value",$(this).attr("sidoName"));
        $("#echo_gunguName","#korResultForm").attr("value",$(this).attr("gunguName"));
        $("#echo_dongName","#korResultForm").attr("value",$(this).attr("dongName"));
        $("#echo_dongGovName","#korResultForm").attr("value",$(this).attr("dongGovName"));
        $("#echo_jibunAddress","#korResultForm").attr("value",$(this).attr("jibunAddress"));
        $("#echo_streetAddress","#korResultForm").attr("value",$(this).attr("streetAddress"));
        $("#echo_dongAddress","#korResultForm").attr("value",$(this).attr("dongAddress"));
        $("#echo_fullAddress","#korResultForm").attr("value",$(this).attr("fullAddress"));
        $("#echo_location","#korResultForm").attr("value",$(this).attr("location"));
        $("#echo_updateDate","#korResultForm").attr("value",$(this).attr("updateDate"));
        $("#echo_legalDongAndLeeName","#korResultForm").attr("value",$(this).attr("legalDongAndLeeName"));
        $("#echo_jibunMainAndSub","#korResultForm").attr("value",$(this).attr("jibunMainAndSub"));
        $("#echo_streetName","#korResultForm").attr("value",$(this).attr("streetName"));
        $("#echo_bdMainAndSub","#korResultForm").attr("value",$(this).attr("bdMainAndSub"));
        $("#echo_bdName","#korResultForm").attr("value",$(this).attr("bdName"));
        $("#echo_sidoNameOrder","#korResultForm").attr("value",$(this).attr("sidoNameOrder"));
        
        //document.getElementById("div_addr_build").style.display = "block";
        //document.getElementById("detail_addr_div").style.display = "block";

	 	var dis_addr_build = document.getElementById("dis_addr_build");
	 	dis_addr_build.innerHTML = addr;
        $("#addr_build","#korResultForm").attr("value",addr);
        return false;
	 })

        $("#click_address").live("click", function(){

//            alert("etc_addr:::" + $(this).attr("etc_addr"));
        	var param="etc_addr=" + $(this).attr("etc_addr")  + "&delivery_address=" + $(this).attr("delivery_address")  + "&admin_cty_cd=" + $(this).attr("admin_cty_cd") +  "&lat=" + $(this).attr("lat") + "&lng=" + $(this).attr("lng") + "&detail_addr=" + $(this).attr("detail_addr") +  "&street_no=" + $(this).attr("street_no") + "&address=" + $(this).attr("address") + "&admin_cty_nm=" + $(this).attr("address") + "&lnglat=" + $(this).attr("lng") + " " + $(this).attr("lat")
        	     +    "&hous_nm=" + $(this).attr("detail_addr")  + "&si_nm=" + $(this).attr("mega_cty_nm")   + "&gu_nm=" + $(this).attr("cty_rgn_nm") + "&dong_nm=" + $(this).attr("admin_cty_nm")  + "&address_floor=" + $(this).attr("address_floor");

//            alert("click_address 여기 ::" + param);

            var initString = "<ul>";
            initString = initString + "<li></br></br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;로딩 중입니다..<img src='/mdsgis/resources/old/images/icon/loading.gif'/></li>";
            initString = initString+"</ul>";
            delivery_info.innerHTML = initString;
            setTimeout('', 700);
            callContent('content', {url:'getDeliveryStoreWos.action?', params:param, id:'delivery_info', hideIds:'body_content_none', ingFlag:'N'});
            return false;
        })

        $("#click_admin_cty_nm").live("click", function(){
            $("#dong_name","#form").attr("value",$(this).attr("mega_cty_nm") + " " + $(this).attr("cty_rgn_nm") + " " + $(this).attr("admin_cty_nm"));
            $("#mega_cty_nm","#form").attr("value",$(this).attr("mega_cty_nm"));
            $("#cty_rgn_nm","#form").attr("value",$(this).attr("cty_rgn_nm"));
            $("#admin_cty_nm","#form").attr("value",$(this).attr("admin_cty_nm"));
            $("#admin_cty_cd","#form").attr("value",$(this).attr("admin_cty_cd"));
            jQuery(document.getElementById("overlay-")).remove();
            jQuery(document.getElementById("layerWindow")).remove();
        })

     $("#sel_load_search").live("click", function(){
    //	$('.select_container').jqTransform();
    	document.getElementById("p_inbox dolo_add").style.display = "block";
    	document.getElementById("p_inbox dolo_add").style.marginLeft = "40px";
     	document.getElementById("p_inbox gibun_add").style.display = "none";


     	document.getElementById("sel_load_search").className="selected";
     	document.getElementById("sel_jibun_search").className="";
         return false;
     })
     $("#sel_jibun_search").live("click", function(){
     	document.getElementById("p_inbox gibun_add").style.display = "block";
     	document.getElementById("p_inbox dolo_add").style.display  = "none";
     	document.getElementById("sel_load_search").className="";
     	document.getElementById("sel_jibun_search").className="selected";
         return false;
     })

/*
        $("#sel_load_search").live("click", function(){
        	document.getElementById("p_inbox dolo_add").style.display = "block";
        	document.getElementById("p_inbox gibun_add").style.display = "none";
        	document.getElementById("sel_load_search").className="";
        	document.getElementById("sel_jibun_search").className="btn_1";
            return false;
        })
        $("#sel_jibun_search").live("click", function(){
        	document.getElementById("p_inbox gibun_add").style.display = "block";
        	document.getElementById("p_inbox dolo_add").style.display  = "none";
        	document.getElementById("sel_load_search").className="btn_1";
        	document.getElementById("sel_jibun_search").className="";
            return false;
        })
*/
        // -----------------------
        // Layer Popup Close
        // -----------------------
        $("#close_layer").live("click", function(){
            jQuery(document.getElementById("overlay-")).remove();
            jQuery(document.getElementById("layerWindow")).remove();
        });
        // -----------------------
        // 주소 검색 버튼 클릭
        // -----------------------
        $("#BTN_Search").live("click", function(){
        	if(!blankCheck( "#admin_cty_nm","#searchForm","동이름을 입력하세요.")){return false;}

            var initString = "<ul>";
            initString = initString + "<li></br></br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;로딩 중입니다..<img src='/mdsgis/resources/old/images/icon/loading.gif'/></li>";
            initString = initString+"</ul>";
            list.innerHTML = initString;

            var f = document.searchForm;
            fForm = new KDRMForm({name:'searchForm'});
            callContent('content', {url:'adminCtyList.action', params:fForm.toString(), id:'list', hideIds:'body_content_none', ingFlag:'N'});
            return false;
        });

        $("#adminSearch").live("click", function(){
        	doLayerPopup();
            return false;
        });
		$("#close_admin_cty_build").live("click", function(){
			document.getElementById("admin_cty_build").style.display = "none";
			document.getElementById("admin_cty_build").innerHTML = "";
	 	})
 });


function doIfEnter(event, action) {
  var key = event.charCode || event.keyCode || 0;
  if (key == 13) {
	action && action();

	event.preventDefault && event.preventDefault();
    return false;
  }
}

 function getBuildList() {
  	if(!blankCheck( "#admin_cty_nm","#jibunSform","지번,도로명,건물명을 입력하세요.")){return;}

 	document.getElementById("admin_cty_build").style.display  = "block";
 	document.getElementById("admin_cty_build").style.width  = "560px";

 	var ua = navigator.userAgent;
 	var ie = ua.indexOf("MSIE ");
 	var ieversion = "";
 	if( ie > 0 ) {
        ieversion = parseInt(ua.substring(ie+5, ua.indexOf(".", ie)));
 	    if( ieversion==9 ){
 	    	document.getElementById("admin_cty_build").style.width  = "570px";
        }
 	}


     var initString = "<ul>";
     initString = initString + "<li></br></br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;로딩 중입니다..<img src='/mdsgis/resources/old/images/icon/loading.gif'/></li>";
     initString = initString+"</ul>";
     admin_cty_build.innerHTML = initString;

     var f = document.searchForm;
     fForm = new KDRMForm({name:'jibunSform'});
     callContent('content', {url:'wWosAdminCtyBuildList.action', params:fForm.toString(), id:'admin_cty_build', hideIds:'body_content_none', ingFlag:'N'});
     return ;

	 }

 function setSelectAddr() {
 	document.getElementById("admin_cty_build").style.display = "none";

    var addr = $(this).attr("mega_cty_nm") + " " + $(this).attr("cty_rgn_nm") + " " + $(this).attr("admin_cty_nm") + " " + $(this).attr("street_no") + " " + $(this).attr("build_nm");
    $("#mega_cty_nm" ,"#korResultForm").attr("value",$(this).attr("mega_cty_nm") );
    $("#cty_rgn_nm"  ,"#korResultForm").attr("value",$(this).attr("cty_rgn_nm")  );
    $("#admin_cty_nm","#korResultForm").attr("value",$(this).attr("admin_cty_nm"));
    $("#admin_cty_cd","#korResultForm").attr("value",$(this).attr("admin_cty_cd"));
    $("#address_bld","#korResultForm").attr("value",$(this).attr("build_nm"));
    $("#echo_sidoName","#korResultForm").attr("value",$(this).attr("sidoName"));
    $("#echo_gunguName","#korResultForm").attr("value",$(this).attr("gunguName"));
    $("#echo_dongName","#korResultForm").attr("value",$(this).attr("dongName"));
    $("#echo_dongGovName","#korResultForm").attr("value",$(this).attr("dongGovName"));
    $("#echo_jibunAddress","#korResultForm").attr("value",$(this).attr("jibunAddress"));
    $("#echo_streetAddress","#korResultForm").attr("value",$(this).attr("streetAddress"));
    $("#echo_dongAddress","#korResultForm").attr("value",$(this).attr("dongAddress"));
    $("#echo_fullAddress","#korResultForm").attr("value",$(this).attr("fullAddress"));
    $("#echo_location","#korResultForm").attr("value",$(this).attr("location"));
    $("#echo_updateDate","#korResultForm").attr("value",$(this).attr("updateDate"));
    $("#echo_legalDongAndLeeName","#korResultForm").attr("value",$(this).attr("legalDongAndLeeName"));
    $("#echo_jibunMainAndSub","#korResultForm").attr("value",$(this).attr("jibunMainAndSub"));
    $("#echo_streetName","#korResultForm").attr("value",$(this).attr("streetName"));
    $("#echo_bdMainAndSub","#korResultForm").attr("value",$(this).attr("bdMainAndSub"));
    $("#echo_bdName","#korResultForm").attr("value",$(this).attr("bdName"));
    $("#echo_sidoNameOrder","#korResultForm").attr("value",$(this).attr("sidoNameOrder"));


    document.getElementById("div_addr_build").style.display = "block";
    document.getElementById("detail_addr_div").style.display = "block";
    document.getElementById("detail_addr_div").style.display = "block";

 	var dis_addr_build = document.getElementById("dis_addr_build");
 	dis_addr_build.innerHTML = addr;
    $("#addr_build","#korResultForm").attr("value",addr);
    return false;

 }


function codeAddress() {
	var tabMenuId = document.getElementById('sel_jibun_search').className;
	if( tabMenuId == "" || tabMenuId ==  null ){
       //alert("도로명");
       if(!blankCheck( "#admin_cty_cd_road","#roadSform","도로명을 입력하여 주세요.")){return;}
       if(!blankCheck( "#address1","#roadSform","건물 번지를 입력하여 주세요.")){return;}
       if(!blankCheck( "#address2","#roadSform","건물 번지를 입력하여 주세요.")){return;}

       var mega_cty_nm     = $("#mega_cty_cd",roadSform).children("option:selected").text() + " ";
       var cty_rgn_nm      = $("#cty_rgn_cd",roadSform).children("option:selected").text() + " ";
       var admin_cty_nm    = $("#admin_cty_cd_road"   ,"#roadSform").val();


       var admin_cty_cd    = ""+document.getElementById("admin_cty_cd_road").value;
       var address         = $("#address1"   ,"#roadSform").val() + "-" + $("#address2"   ,"#roadSform").val();
	    $("#address" ,"#korResultForm").attr("value",$("#address","#roadSform").val());

	   var f = document.korResultForm;
       fForm = new KDRMForm({name:'korResultForm'});
   	   callContent('content', {url:'wWosRoadOrderingResultZip.action', params:fForm.toString(), id:'result', hideIds:'body_content_none', resultId:'result', focusid:'result'});
	} else {
	    //alert("지번");
	    //alert("~1");
	    if(!blankCheck( "#addr_build","#korResultForm","건물명 검색을 해주세요.")){return;}
	    if(!blankCheck( "#address"   ,"#jibunSform","상세주소를 입력하여 주세요.")){return;}
	    //alert("~2");

	    var mega_cty_nm     = ""+$("#mega_cty_nm","#korResultForm").val();
	    var cty_rgn_nm      = ""+$("#cty_rgn_nm","#korResultForm").val();
	    var admin_cty_nm    = ""+$("#admin_cty_nm","#korResultForm").val();
	    var admin_cty_cd    = ""+$("#admin_cty_cd","#korResultForm").val();
	    //alert("~3");

	    $("#address" ,"#korResultForm").attr("value",$("#address","#jibunSform").val());
	    //alert("~4");

	    var f = document.korResultForm;
	    fForm = new KDRMForm({name:'korResultForm'});
	    //alert("~5");

//alert("::" + fForm.toString());
	    callContent('content', {url:'wosOrderingResultZip.action', params:fForm.toString(), id:'result', hideIds:'body_content_none', resultId:'result', focusid:'result'});
	}

	document.getElementById("last_addr_el").style.display = 'block';
	document.getElementById("last_addr_el").style.marginLeft = '40px;'


    return;
 }

function codeRoadAddress() {
    if(!blankCheck( "#admin_cty_cd_road","#road_form","도로명을 검색하여 주세요.")){return;}
    if(!blankCheck( "#address","#road_form","상세주소를 입력하여 주세요.")){return;}



//    $("#address","#road_form").attr("value",address_bld + address_floor + address_dong + address_ho);
//    var address         = document.getElementById("address").value;


    var initString = "<ul>";
    initString = initString + "<li></br></br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;로딩 중입니다..<img src='/mdsgis/resources/old/images/icon/loading.gif'/></li>";
    initString = initString+"</ul>";
    addr_list_road.innerHTML = initString;


    var mega_cty_nm     = $("#mega_cty_cd_road").children("option:selected").text() + " ";
    var cty_rgn_nm      = $("#cty_rgn_cd_road").children("option:selected").text() + " ";

    var admin_cty_nm    = $("#admin_cty_cd_road").children("option:selected").text() + " ";
    var admin_cty_cd    = ""+document.getElementById("admin_cty_cd_road").value;

    var address         = $("#address"  ,"#road_form").val();
    var f = document.form;
    fForm = new KDRMForm({name:'road_form'});
    var param = "&mega_cty_nm=" + mega_cty_nm + "&cty_rgn_nm=" + cty_rgn_nm + "&admin_cty_nm=" + admin_cty_nm + "&admin_cty_cd=" + admin_cty_cd;
    //alert(fForm.toString()+param);
    callContent('content', {url:'wWosOrderingRoadResultZip.action', params:fForm.toString()+param, id:'result', hideIds:'body_content_none', resultId:'result', focusid:'result'});

    return;

  }


</script>
<script type="text/javascript">
	$(function () {
		$("#mega_cty_cd").selectbox();
		$("#cty_rgn_cd").selectbox();

	});
</script>


</body></html>