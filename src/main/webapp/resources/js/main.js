$(document).ready(function() {
	
	$(".navbar-header").on("click", function(e){
		e.preventDefault();
		location.href="/ed/deliverHome"
	})

	$(".menu-item-menu").on("click", function(e) {
		e.preventDefault();
		$.ajax({
			type: "GET",
			url: "/ed/store/checkStatus",
			success: function() {
				location.href = "/ed/menuPage";
			},
			error: function() {
				alert("배달가능한 지점이 없습니다.");
			}
		})
	})


	$(document).on("click", ".action-orderinadvance", function(e) {
		e.preventDefault();
		//$(this).attr("class", "menu-item menu-item-menu selected");
		$.ajax({
			type: "GET",
			url: "/ed/store/checkStatus",
			success: function() {
				location.href = "/ed/menuPage";
			},
			error: function() {
				alert("배달가능한 지점이 없습니다.");
			}
		})

	});


	$("#nomembertrackorder").on("click", function(e) {
		e.preventDefault();
		var merchanuid = prompt('주문번호를 입력하세요');
		console.log(merchanuid);
		$.ajax({
			type: "GET",
			url: "/order/search/check?merchanuid=" + merchanuid,
			success: function() {
				window.location.href = "/order/search/trackorder?merchanuid=" + merchanuid;
			},
			error: function(res) {
				alert(res.responseText);
			}
		})
	})
	$(".track-order-flag").on("click",function(e){
		e.preventDefault();
		var merchanuid = prompt('주문번호를 입력하세요');
		console.log(merchanuid);
		$.ajax({
			type: "GET",
			url: "/order/search/check?merchanuid=" + merchanuid,
			success: function() {
				window.location.href = "/order/search/trackorder?merchanuid=" + merchanuid;
			},
			error: function(res) {
				alert(res.responseText);
			}
		})
	} )



	//상단 메뉴

	$('.menu-item-support').on("click", function() {
		if ($(this).attr("class") == "menu-item menu-item-support dropdown open") {
			$(this).attr("class", "menu-item menu-item-support dropdown");
			$(this).attr("aria-expanded", "false");
			$(this).parent(".dropdown-menu").css("display", "none");
		} else {
			$('.menu-item.dropdown').attr("class", "menu-item menu-item-support dropdown");
			$(this).attr("class", "menu-item menu-item-support dropdown open");
			$(this).attr("aria-expanded", "true");
			$(this).parent(".dropdown-menu").css("display", "inline-block");
		}
	});
	$(".menu-item.menu-item-account.dropdown").on("click", function(e) {
		e.preventDefault();
		$.ajax({
			url : "/ed/logincheck",
			type : "get",
			success : function(){
				location.href="/member/mypage/trackOrder";
			},
			error : function(){
				alert("로그인을 해주세요");

			}
		})
	});
	$(".how-it-works.home-section").children("p").on("click", function(e) {
		e.preventDefault();
		noLogin();
	})
	var $topLoginText = $(".my-account-quicklinks").children(".list-inline.list-inline-divide").children();

	$topLoginText.eq(1).children(".list-item-target").on("click", function(e) {
		e.preventDefault();
		noLogin();
	})
	$topLoginText.eq(2).children(".list-item-target").on("click", function(e) {
		e.preventDefault();
		noLogin();
	})



	//login modal
	var $loginTabs = $("#signin-nav-tabs-login-fragment").children();
	$loginTabs.eq(0).on("click", function(e) {

		LoginTabEvent(0, 1, e, $loginTabs)
	})
	$loginTabs.eq(1).on("click", function(e) {

		LoginTabEvent(1, 0, e, $loginTabs)
	})

	//close
	$(".modal-header").children("button").on("click", function() {
		$("#signin").attr("class", "modal-login modal fade signin-modal");
		$("#signin").css("display", "none");
		$("body").attr("class", "country-82 lang-ko page-home");
		$("body").css("padding-right", "");
	})



	//main화면 로그인
	var $tabs = $("#nav-tabs-login-fragment").children();
	$tabs.eq(0).on("click", function(e) {
		LoginTabEvent(0, 1, e, $tabs);
	})
	$tabs.eq(1).on("click", function(e) {
		LoginTabEvent(1, 0, e, $tabs);
	})


	//자동로그인 체크
	$(".remember-me").on("click", function(e) {
		if ($(this).attr("class") == "icheckbox checked") {
			$(this).attr("class", "icheckbox");
			$('input[name=_rememberMe]').val("off"); // 체크여부 
		} else {
			$(this).attr("class", "icheckbox checked");
			$('input[name=_rememberMe]').val("on");
			$("#rememberMe").attr("aria-hidden", "false");
			$("#rememberMe").attr("class", "modal-rememberme modal fade in");
			//			$("#rememberMe").css("display", "block");
		}
	})

	$("#btnRememberMeCancel").on("click", function(e) {
		$(".icheckbox").attr("class", "icheckbox");
		$('input[name=_rememberMe]').val("off");
		$("#rememberMe").attr("aria-hidden", "true");
		$("#rememberMe").attr("class", "modal-rememberme modal fade");
		$("#rememberMe").css("display", "none");
	});

	$("#btnRememberMeAgree").on("click", function(e) {
		$("#rememberMe").attr("aria-hidden", "true");
		$("#rememberMe").attr("class", "modal-rememberme modal fade");
		$("#rememberMe").css("display", "none");
	});


	//메뉴화면 알레르기 text 펼치기
	$(document).on('click', ".al", function(e) {
		e.preventDefault();
		$('html').one('click', function() {
			$('.popover.fade.bottom.in').remove();
		})
		var name = $(this).parent().parent().children('.popover-details').children().children('h4').text();
		var detail = $(this).parent().parent().children('.popover-details').children().children('div').text();
		var source = "<div class=\"popover fade bottom in\" role=\"tooltip\" id=\"popover928591\" style=\"top: 81.2969px; left: -88.3984px; display: block;\">";
		source += "<div class=\"arrow\" style=\"left: 50%;\"></div>";
		source += "<h3 class=\"popover-title\" style=\"display: none;\"></h3><div class=\"popover-content\">";
		source += "<div class=\"popover-wrapper type-sans\">";
		source += "<h4>" + name + "</h4>";
		source += "<div>" + detail + "</div></div></div></div>";
		$(this).parent().after(source);
	})

	//메뉴화면 
})


function noLogin() {//loginmodal show
	$("#signin").attr("class", "modal-login modal fade signin-modal in");
	$("#signin").css("display", "block");
	$("body").attr("class", "country-82 lang-ko page-home modal-open");
	$("body").css("padding-right", "16px");
}

function LoginTabEvent(i, n, e, $loginTabs) {
	e.preventDefault();
	$loginTabs.eq(n).attr("class", "");
	$(this).attr("class", "active");
	var tabIdActive = $loginTabs.eq(i).children().attr("href");
	var tabIdNone = $loginTabs.eq(n).children().attr("href");
	console.log("activ  " + tabIdActive);
	console.log("nono  " + tabIdNone);
	$(tabIdNone).attr("class", "tab-pane");
	$(tabIdActive).attr("class", "tab-pane active");
}


