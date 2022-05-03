/**
 * 


 */
var selectedM = "전체";
$(document).ready(function() {

	// 더보기 버튼 클릭시 ajax로 DB 연동
	$('.btnMore').on('click',function(){
		
		var start = $('#start').val();
		var end = $('#end').val();
		var subject = $('.ui-selectmenu-text').text();
		var search = $('#srchKeyword').val();
		var count = end;
		var url;
		start = parseInt(start) + 10; 
		end = parseInt(end) + 10;
		if( subject != '전체' && search != ''){
			url = "/ed/faqMore?start="+start+"&end="+end+"&subject="+subject+"&search="+search;
		}else if( subject != '전체'){
			url = "/ed/faqMore?start="+start+"&end="+end+"&subject="+subject;
		}else if( search != ''){
			url = "/ed/faqMore?start="+start+"&end="+end+"&search="+search;
		}else{
			url = "/ed/faqMore?start="+start+"&end="+end+"&subject=ALL";
		}
		
		$('#start').val(start);
		$('#end').val(end);
		$.ajax({
			url: url,
			type: 'GET',
			success: function(result) {
				var temp = 0;
				$.each(result.list,function(index,item){
					count++;
					var html = "";
					html += "<tr id=\"LIST_TR_ID"+count+"\" style=\"cursor: pointer\" class=\"list_td\">";
					html += "<td width=\"7%\" align=\"center\">"+count+"</td>";
					html += "<td style=\"text-align: center; padding-left: 0px;\">"+item.faq_subject+"</td>";
					html += "<td style=\"text-align: left; padding-left: 5px;\">"+item.faq_title+"</td></tr>";
					html += "<tr style=\"display: none\" id=\"LIST_TR_ID"+count+"_DT\">";
					html += "<td style=\"text-align: left; padding-left: 10px; padding-right: 10px;\"><img src=\"https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/A.gif\"></td>";
					html += "<td colspan=\"3\" style=\"text-align: left; padding-left: 10px;; padding-right: 10px;\">";
					html += "<font color=\"#920000\">"+item.faq_content+"</font></td></tr>";
					$('#LIST_TB').children('tbody').append(html);
					temp = count;
				})
				if (result.page == temp){
					$('#btnMore').hide();
				}
			},
			error: function(result){}
		})
	})
	

	// 게시글 클릭 -> 글내용 펼치기
//	var list_td = $('#LIST_TB').children('tbody').children('tr');
	$(document).on("click", ".list_td" ,function(){
		var id = $(this).attr('id');
		id = id + "_DT"
		if($('#' + id).css('display') == null || $('#' + id).css('display') == 'none'){
			$('#' + id).css('display', '');
		}else{
		
			$('#' + id).css('display', 'none');
		}
	})

	
	// 종류 선택 드롭박스 클릭 관련 css control
	$('.selectWrap').on("click", function() {
		var selWrap = $(this);
		var btn = $(this).find('>button');
		var div = $(this).find('>div');
		var temp = $('#category-button').attr('aria-activedescendant-m');
		$('#' + temp).addClass('ui-state-active');

		if (btn.attr('aria-expanded') == 'false') {
			btn.attr('aria-expanded', 'true');
			selWrap.attr('style', 'z-index:11 !important');
			btn.removeClass('ui-selectmenu-button-closed ui-corner-all');
			btn.addClass('ui-selectmenu-button-open ui-corner-top');
			btn.attr("aria-disabled", "false");
			div.addClass('ui-selectmenu-open');
			div.find('ul').attr('aria-hidden', 'false');
		} else if (btn.attr('aria-expanded') == 'true') {
			btn.attr('aria-expanded', 'false');
			selWrap.attr('style', 'z-index:10 !important');
			btn.removeClass('ui-selectmenu-button-open ui-corner-top');
			btn.addClass('ui-selectmenu-button-closed ui-corner-all');
			div.removeClass('ui-selectmenu-open');
			div.find('ul').attr('aria-hidden', 'true');

		}
	});
	
	// 마우스에 따라 바뀌는 css 
	$('.ui-menu-item').mouseenter(function() {
		$('.ui-state-active').removeClass('ui-state-active');
		$(this).addClass('ui-state-active');

	});

	// 드롭박스 클릭 시 index 값 추출 후 selectMF function
	$('.ui-menu-item').on('click', function() {
		selectedM = $(this).index();
		selectMF(selectedM);
	});
	
	// img 항목 클릭 시 index 값 추출 및 변환 후 selectMF function
	$(".srvc").on('click', function() {
		var select = $(this).index();
		selectBF(select);
		switch (select) {
			case 0: selectedM = 4; break
			case 1: selectedM = 1; break
			case 2: selectedM = 2; break
			case 3: selectedM = 3; break
			case 4: selectedM = 5; break
			case 5: selectedM = 6; break
			case 6: selectedM = 8; break
			case 7: selectedM = 7; break
		}
		selectMF(selectedM);
	});
	
	// search btnMC class 클릭시 
	$('.btnMC').on('click',function(){
	
		var url = "";
		var subject = $('.ui-selectmenu-text').text();
		var search = $('#srchKeyword').val();
		var start = 1;
		var end = 10;
		
		if( subject != '전체' && search != ''){
			url = "/ed/faqMore?start="+start+"&end="+end+"&subject="+subject+"&search="+search;
		}else if( subject != '전체'){
			url = "/ed/faqMore?start="+start+"&end="+end+"&subject="+subject;
		}else if( search != ''){
			url = "/ed/faqMore?start="+start+"&end="+end+"&subject=ALL&search="+search;
		}else{
			url = "/ed/faqMore?start="+start+"&end="+end+"&subject=ALL";
		}
		url = encodeURI(url);
		$.ajax({
			url: url,
			type: 'GET',
			success: function(result){
				var html = "";
				var temp = 0;
				html += "<tr><th class=\"colresize\" style=\"\" width=\"7%\"><span onclick=\"\">NO</span></th><th class=\"colresize\" style=\"cursor: pointer\" width=\"20%\"><span>분류</span></th>\<th class=\"colresize\" style=\"cursor: pointer\" width=\"80%\"><span>제목</span></th></tr>";
				
				$.each(result.list,function(index,item){
					index++;
					html += "<tr id=\"LIST_TR_ID"+index+"\" style=\"cursor: pointer\" class=\"list_td\">";
					html += "<td width=\"7%\" align=\"center\">"+index+"</td>";
					html += "<td style=\"text-align: center; padding-left: 0px;\">"+item.faq_subject+"</td>";
					html += "<td style=\"text-align: left; padding-left: 5px;\">"+item.faq_title+"</td></tr>";
					html += "<tr style=\"display: none\" id=\"LIST_TR_ID"+index+"_DT\">";
					html += "<td style=\"text-align: left; padding-left: 10px; padding-right: 10px;\"><img src=\"https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/A.gif\"></td>";
					html += "<td colspan=\"3\" style=\"text-align: left; padding-left: 10px;; padding-right: 10px;\">";
					html += "<font color=\"#920000\">"+item.faq_content+"</font></td></tr>";
					temp = index;	
				})
				if (result.page == temp){
					$('#btnMore').hide();
				}
				if (result.page > temp){
					$('#btnMore').show();
				}
				$('.tbody01').html(html);
			},
		error: function(){}
		})
	})
})


// _selectedM (num) 값에 따른 control 
function selectMF(_selectedM) {
	// 드롭박스 css 수정
	$('#srchKeyword').val('');
	var info = $(".ui-menu-item").eq(_selectedM).find('>a').attr('id');
	$(".ui-menu-item").eq(_selectedM).closest('ul').attr('aria-activedescendant', info);
	$('#category-button').attr('aria-labelledby', info);
	$('#category-button').attr('aria-activedescendant', info);
	$('.ui-state-active').removeClass('ui-state-active');
	var subject = "";
	// img 항목 css 수정
	switch (_selectedM) {
		case 0: $('.ui-selectmenu-text').text("전체"); $(".srvc").attr("style", "background-color: rgb(255, 255, 255); border: 1px solid rgb(209, 209, 209)"); subject = 'ALL'; break
		case 1: $('.ui-selectmenu-text').text("구매"); selectBF("1"); subject = $('.ui-selectmenu-text').text(); break
		case 2: $('.ui-selectmenu-text').text("매장이용"); selectBF("2"); subject = $('.ui-selectmenu-text').text(); break
		case 3: $('.ui-selectmenu-text').text("맥딜리버리"); selectBF("3"); subject = $('.ui-selectmenu-text').text(); break
		case 4: $('.ui-selectmenu-text').text("메뉴"); selectBF("0"); subject = $('.ui-selectmenu-text').text(); break
		case 5: $('.ui-selectmenu-text').text("채용"); selectBF("4"); subject = $('.ui-selectmenu-text').text(); break
		case 6: $('.ui-selectmenu-text').text("프랜차이즈"); selectBF("5"); subject = $('.ui-selectmenu-text').text(); break
		case 7: $('.ui-selectmenu-text').text("기타"); selectBF("7"); subject = $('.ui-selectmenu-text').text(); break
		case 8: $('.ui-selectmenu-text').text("맥도날드앱"); selectBF("6"); subject = $('.ui-selectmenu-text').text(); break
	}
	
	var search = $('#srchKeyword').val();
	var start = 1;
	var end = 10;

	var url = "/ed/faqMore?start="+start+"&end="+end+"&subject="+subject;
	$('#start').val(start);
	$('#end').val(end);
	$.ajax({
		url: url,
		type: 'GET',
		success: function(result){
			var html = "";
			var temp = 0;
			html += "<tr><th class=\"colresize\" style=\"\" width=\"7%\"><span onclick=\"\">NO</span></th><th class=\"colresize\" style=\"cursor: pointer\" width=\"20%\"><span>분류</span></th>\<th class=\"colresize\" style=\"cursor: pointer\" width=\"80%\"><span>제목</span></th></tr>";
			
			$.each(result.list,function(index,item){
				index++;
				html += "<tr id=\"LIST_TR_ID"+index+"\" style=\"cursor: pointer\" class=\"list_td\">";
				html += "<td width=\"7%\" align=\"center\">"+index+"</td>";
				html += "<td style=\"text-align: center; padding-left: 0px;\">"+item.faq_subject+"</td>";
				html += "<td style=\"text-align: left; padding-left: 5px;\">"+item.faq_title+"</td></tr>";
				html += "<tr style=\"display: none\" id=\"LIST_TR_ID"+index+"_DT\">";
				html += "<td style=\"text-align: left; padding-left: 10px; padding-right: 10px;\"><img src=\"https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/main/A.gif\"></td>";
				html += "<td colspan=\"3\" style=\"text-align: left; padding-left: 10px;; padding-right: 10px;\">";
				html += "<font color=\"#920000\">"+item.faq_content+"</font></td></tr>";
				temp = index;	
			})
			if (result.page == temp){
				$('#btnMore').hide();
			}
			if (result.page > temp){
				$('#btnMore').show();
			}
			$('.tbody01').html(html);
		},
		error: function(){}
	})

}


// 상단 img에서 선택된 항목에 따른 img css 수정
function selectBF(_selectedM) {
	$(".srvc").attr("style", "background-color: rgb(255, 255, 255); border: 1px solid rgb(209, 209, 209)");
	$(".srvc").eq(_selectedM).attr("style", "background-color: rgb(255, 188, 13); border: 3px solid rgb(255, 188, 13)");
}







