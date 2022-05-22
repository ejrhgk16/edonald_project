$(document).ready(function() {
	var date = new Date();
	var time = date.getHours();
	if(time >= 8 && time <= 12){
		$(".secondary-menu-item").children("a").eq(1).children("span").text("이모닝&세트");
		$(".secondary-menu-item").children("a").eq(1).attr("data-value","emorning");
		$(".primary-menu-item.selected").children("a").attr("href", "?daypartId=2");
		$(".primary-menu-item.selected").children("a").children("span").text("아침 메뉴");
		$(this).children(".primary-menu-item-target").attr("href", "?daypartId=1");
		$(this).children(".primary-menu-item-target").children("span").text("일반 메뉴");
		$("#daypartId").text("2");
		menuRequest("emorning",2);
	}else{
		menuRequest("burger",1);
	}
	
	$(".secondary-menu-item").mouseover(function() {
		if ($(this).attr("class") == "secondary-menu-item") {
			$(this).attr("class", "secondary-menu-item :focus");
		}
	});
	$(".secondary-menu-item").mouseout(function() {
		if ($(this).attr("class") == "secondary-menu-item :focus") {
			$(this).attr("class", "secondary-menu-item");
		}
	});

	$(".secondary-menu-item").on("click", function(e) {
		e.preventDefault();
		$(".secondary-menu-item.selected").attr("class", "secondary-menu-item");
		$(this).attr("class", "secondary-menu-item selected");
	});

	$(".sidebar-menu").children(".h5.text-link").on("click", function(e) {
		e.preventDefault();
		if ($(".popover.fade.right.in").attr("style") != "") {
			$(".popover.fade.right.in").attr("style", "");
		} else {
			var height = $(this).offset().top - 75
			var styleText = "top: " + height + "px; left: 127.602px; display: block;";
			$(".popover.fade.right.in").attr("style", styleText);
		}
	});

	// 메뉴 이동
	$('.secondary-menu-item-target').on('click',function(){
		var type = $(this).attr('data-value');
		var daypartId = $('#daypartId').text();
		menuRequest(type,daypartId);
	})
	
	//sidebar 아침메뉴 일반메뉴 변경 
/*	$(".primary-menu-item").eq(1).on("click", function(e) {
		e.preventDefault();
		var partId = $(this).children(".primary-menu-item-target").attr("href");
		var len = $(".secondary-menu").children();
		console.log(partId);
		if (partId == "?daypartId=1") {
			for (var i = 0; i < len.length; i++) {
				var catId = i + 10;
				var changeHref = "?daypartId=1&catId=" + catId;
				$(".secondary-menu-item").children("a").eq(i).attr("href", changeHref);
				if (catId == 11) {
					$(".secondary-menu-item").children("a").eq(i).children("span").text("버거 & 세트");
				}
			}
			$(".primary-menu-item.selected").children("a").attr("href", "?daypartId=1");
			$(".primary-menu-item.selected").children("a").children("span").text("일반 메뉴");
			$(this).children(".primary-menu-item-target").attr("href", "?daypartId=2");
			$(this).children(".primary-menu-item-target").children("span").text("아침 메뉴");
		} else {
			for (var i = 0; i < len.length; i++) {
				var catId = i + 10;
				var changeHref = "?daypartId=2&catId=" + catId;
				$(".secondary-menu-item").children("a").eq(i).attr("href", changeHref);
				if (catId == 11) {
					$(".secondary-menu-item").children("a").eq(i).children("span").text("맥모닝&세트");
				}
			}
			$(".primary-menu-item.selected").children("a").attr("href", "?daypartId=2");
			$(".primary-menu-item.selected").children("a").children("span").text("아침 메뉴");
			$(this).children(".primary-menu-item-target").attr("href", "?daypartId=1");
			$(this).children(".primary-menu-item-target").children("span").text("일반 메뉴");
		}
	});
*/	
	
	$(".primary-menu-item").eq(1).on("click", function(e) {
		e.preventDefault();
		var partId = $(this).children(".primary-menu-item-target").attr("href");
		if (partId == "?daypartId=1") {
			$(".secondary-menu-item").children("a").eq(1).children("span").text("버거 & 세트");
			$(".secondary-menu-item").children("a").eq(1).attr("data-value","burger");
			$(".primary-menu-item.selected").children("a").attr("href", "?daypartId=1");
			$(".primary-menu-item.selected").children("a").children("span").text("일반 메뉴");
			$(this).children(".primary-menu-item-target").attr("href", "?daypartId=2");
			$(this).children(".primary-menu-item-target").children("span").text("아침 메뉴");
			$("#daypartId").text("1");
			menuRequest("burger",1);
		} else {
			$(".secondary-menu-item").children("a").eq(1).children("span").text("이모닝&세트");
			$(".secondary-menu-item").children("a").eq(1).attr("data-value","emorning");
			$(".primary-menu-item.selected").children("a").attr("href", "?daypartId=2");
			$(".primary-menu-item.selected").children("a").children("span").text("아침 메뉴");
			$(this).children(".primary-menu-item-target").attr("href", "?daypartId=1");
			$(this).children(".primary-menu-item-target").children("span").text("일반 메뉴");
			$("#daypartId").text("2");
			menuRequest("emorning",2);
		}
	});
	
	$(window).scroll(function() {
		if ($(".popover.fade.right.in").attr("style") != "") {
			$(".popover.fade.right.in").attr("style", "");
		}
		var end = $(document).height() - $(".footer-disclaimer").height() - 100;
		var position = $(document).scrollTop() + $(window).innerHeight()
		if (position >= end) {
			console.log("checkccc!!!!!!!!!!!bbbb");
			$(".sidebar-menu").attr("class", "sidebar-menu sticky-bottom sticking");
		} else if ($(document).scrollTop() >= 100) {
			$(".sidebar-menu").attr("class", "sidebar-menu sticky-top sticking");
		} else {
			$(".sidebar-menu").attr("class", "sidebar-menu")
		}
	})


})
function menuRequest(type, daypartId){
	var url = "/ed/menuPage.do";
	$.ajax({
		url: url,
		type: 'get',
		data:{
			type: type,
			daypartId: daypartId
		},
		success: function(result){
			var html = "<div class=\"row row-narrow changebox\">";
			$.each(result,function(index,item){
				var price = comma(item.price);
				html += "<div class=\"product-card product-card--standard\">";
				html += "<div class=\"panel panel-default panel-product\">";
				html += "<div class=\"panel-body\">";
				html += "<img src=\"https://edonaldfile.s3.ap-northeast-2.amazonaws.com/"+item.img_path+"\" class=\"img-block\">";
				html += "<h5 class=\"product-title\" style=\"height: 30.8px;\">"+item.name+"</h5>";
				html += "<div class=\"product-badges\"></div></div>";
				html += "<div class=\"panel-footer\"><div class=\"row row-narrow\">";
				html += "<div class=\"product-info\" style=\"height: 78.3px;\">";
				html += "<div class=\"product-details\"><div class=\"product-cost\">";
				html += "가격 ₩ <span class=\"starting-price\">"+price+"</span></div>";
				html += "<div class=\"product-nutritional-info\"><span class=\"text-default\">"+item.kcal+" Kcal</span></div>";
				html += "<div class=\"product-allergen-info\"><div>";
				html += "<a href=\"#\" class=\"action-link\" data-toggle=\"html-popover\" data-placement=\"bottom\" data-html=\"true\" data-content-selector=\".popover-details\" data-original-title=\"\" title=\"\">";
				html += "<i class=\"mcd icon mcd-allergen\"></i><span class=\"text-default\">알레르기 정보</span></a>";
				html += "<div class=\"popover-details\"><div class=\"popover-wrapper type-sans\"><h4>"+item.name+"</h4>";
				html += "<div>"+item.name+" "+item.allergy+"</div></div></div></div></div></div></div>";
				html += "<div class=\"product-controls\">";	
				if(item.block_status == 0){
					html += "<a data-productid=\"789\" class=\"btn btn-block action-create btn-yellow\" href=\"\">Order</a>";
				}else{
					html += "<a data-productid=\"789\" class=\"btn btn-block btn-gray\">준비중</a>";
				}
				html += "<form action=\"/order/orderMenu\" method=\"post\" class=\"menuInfo\">";
				html += "<input type=\"hidden\" name=\"name\" value=\""+item.name+"\">";
				html += "<input type=\"hidden\" name=\"kcal\" value=\""+item.kcal+"\">";
				html += "<input type=\"hidden\" name=\"img_path\" value=\""+item.img_path+"\">";
				html += "<input type=\"hidden\" name=\"set_img_path\" value=\""+item.set_img_path+"\">";
				html += "<input type=\"hidden\" name=\"status\" value=\""+item.status+"\">";
				html += "<input type=\"hidden\" name=\"type\" value=\""+item.type+"\">";
				html += "<input type=\"hidden\" name=\"price\" value=\""+item.price+"\">";
				html += "<input type=\"hidden\" name=\"allergy\" value=\""+item.allergy+"\">";
				html += "<input type=\"hidden\" name=\"seq\" value=\""+item.seq+"\">";
				html += "<input type=\"hidden\" name=\"l_price\" value=\""+item.l_price+"\">";
				html += "<input type=\"hidden\" name=\"s_price\" value=\""+item.s_price+"\">";
				html += "</form></div></div></div></div></div>";
				
			});
			html += "</div>"
			$('div.row.row-narrow.changebox').html(html);
			
		},
		error: function(){alert("error");}
	});
}

 function comma(str) {
     str = String(str);
     return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
 }