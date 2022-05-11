$(document).ready(function() {



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

	//sidebar 아침메뉴 일반메뉴 변경 
	$(".primary-menu-item").eq(1).on("click", function(e) {
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