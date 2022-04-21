/**
 * 
 */
// HTML 로드가 끝난 후 동작

$(document).ready(function() {
	//makeClone();
	$(".swiper-slide").not(".swiper-slide-active").css("visibility", "hidden"); //화면 로딩 후 첫번째 div를 제외한 나머지 숨김

	//quickMenu	
	var currentPosition = parseInt($(".aside").css("width")) + 200;
	$(window).scroll(function() {
		var position = $(document).scrollTop() + $(window).innerHeight();
		$(".aside").stop().animate({ "top": position + currentPosition + "px" }, 1);
	});

	$(".btnTop").click(function() {
		$('html, body').animate({ scrollTop: 0 }, 150);
		return false;
	});
	
	
	// 상단 메뉴 펼치기
	$(".depth1").mouseover(function() {
		$(".header").addClass("open");
	});

	$(".hMenu").mouseout(function() {
		$(".header").removeClass("open");
	});
	

	
	// 검색버튼
	$(".srch").click(function() {
		if ($(".topSearch").hasClass("open") === false) {
			$(".topSearch").addClass("open");
			$("body").css("overflow", "hidden");
			$("html").css("overflow", "hidden");
			$(".topSearch").append("<div class='dimmed'></div>");
		}
	});
	
	// 검색버튼 닫기
	$(".close").click(function(){
		$(".topSearch").removeClass("open");
		$("body").css("overflow","");
		$("html").css("overflow","");
		$(".topSearch").children(".dimmed").remove();
	});


})

// 베너 + 진행상태 바
var intervalSlide = setInterval(nextSlide, 4000); //4초(4000)마다 다음 슬라이드로 넘어감
var gaugeBar = 0.0000;
var intervalBar = setInterval(function() {
	$(".bar").css("width", gaugeBar + "%");
	gaugeBar += 1.25;
	if (gaugeBar >= 100) {
		gaugeBar = 0.0000;
	}
}, 50);


// 진행상태 바
var toggle = true;
function controlBar() {
	if (toggle) {
		clearInterval(intervalSlide);
		clearInterval(intervalBar);
		$(".play").removeClass("pause");
		$(".play").text("정지");
		toggle = false;
		gaugeBar = 0.0000;
	} else {
		intervalBar = setInterval(function() {
			$(".bar").css("width", gaugeBar + "%");
			gaugeBar += 1.25;
			if (gaugeBar >= 100) {
				gaugeBar = 0.0000;
			}
		}, 50);
		intervalSlide = setInterval(nextSlide, 4000);
		$(".play").addClass("pause");
		$(".play").text("재생");
		toggle = true;
	}
}
//다음 슬라이드
function nextSlide() {
	clearInterval(intervalSlide);
	intervalSlide = setInterval(nextSlide, 4000);
	$(".swiper-slide").css("visibility", "visible");
	var allSlide = $(".swiper-slide");
	var currentIndex = 0;

	$(".swiper-slide").each(function(index, item) {
		if ($(this).hasClass("swiper-slide-active")) {
			currentIndex = index;
		}
	});

	var newIndex = 0;
	var prevIndex = 0;
	var nextIndex = 0;
	if (currentIndex >= allSlide.length - 1) {
		//현재 슬라이드 index가 마지막 순서면 0번째로 보냄(무한반복)
		newIndex = 0;
		prevIndex = allSlide.length - 1;
		nextIndex = 1;
	} else {
		//현재 슬라이드의 index에서 한 칸 만큼 앞으로 간 index 지정
		newIndex = currentIndex + 1;
		prevIndex = newIndex - 1;
		nextIndex = newIndex + 1;
	}

	if (newIndex == allSlide.length - 1) {
		nextIndex = 0;
	}

	if (newIndex == 0) {
		setTimeout(function() {
			$(".swiper-wrapper").css("transition-duration", "0s");
			$(".swiper-wrapper").css("transform", "translate3d(0px, 0px, 0px)");
		}, 500);
	} else {
		var trans = "translate3d(-" + 1600 * (newIndex) + "px, 0px, 0px)";
		$(".swiper-wrapper").css("transition-duration", "300ms");
		$(".swiper-wrapper").css("transform", trans);
	}


	$(".swiper-slide").removeClass("swiper-slide-active");
	$(".swiper-slide").removeClass("swiper-slide-prev");
	$(".swiper-slide").removeClass("swiper-slide-next");

	$(".swiper-slide").eq(newIndex).addClass("swiper-slide-active");
	$(".swiper-slide").eq(prevIndex).addClass("swiper-slide-prev");
	$(".swiper-slide").eq(nextIndex).addClass("swiper-slide-next");

	$(".swiper-slide").not(".swiper-slide-active").css("visibility", "hidden");

	gaugeBar = 0.000;

}
//이전 슬라이드
function prevSlide() {
	clearInterval(intervalSlide);
	intervalSlide = setInterval(nextSlide, 4000);
	$(".swiper-slide").css("visibility", "visible");
	var allSlide = $(".swiper-slide");
	var currentIndex = 0;

	$(".swiper-slide").each(function(index, item) {
		if ($(this).hasClass("swiper-slide-active")) {
			currentIndex = index;
		}
	});

	var newIndex = 0;
	var prevIndex = 0;
	var nextIndex = 0;
	if (currentIndex === 0) {
		newIndex = allSlide.length - 1;
		prevIndex = newIndex - 1;
		nextIndex = 0;
	} else {
		//현재 슬라이드의 index에서 한 칸 만큼 앞으로 간 index 지정
		newIndex = currentIndex - 1;
		prevIndex = newIndex - 1;
		nextIndex = newIndex + 1;
	}

	if (newIndex === 0) {
		prevIndex = allSlide.length - 1;
	}

	if (newIndex == 0) {
		setTimeout(function() {
			$(".swiper-wrapper").css("transition-duration", "0s");
			$(".swiper-wrapper").css("transform", "translate3d(-" + 1600 * allSilde.length + "px, 0px, 0px)");
		}, 500);
	} else {
		var trans = "translate3d(-" + 1600 * (newIndex) + "px, 0px, 0px)";
		$(".swiper-wrapper").css("transition-duration", "300ms");
		$(".swiper-wrapper").css("transform", trans);
	}


	$(".swiper-slide").removeClass("swiper-slide-active");
	$(".swiper-slide").removeClass("swiper-slide-prev");
	$(".swiper-slide").removeClass("swiper-slide-next");

	$(".swiper-slide").eq(newIndex).addClass("swiper-slide-active");
	$(".swiper-slide").eq(prevIndex).addClass("swiper-slide-prev");
	$(".swiper-slide").eq(nextIndex).addClass("swiper-slide-next");

	$(".swiper-slide").not(".swiper-slide-active").css("visibility", "hidden");

	gaugeBar = 0.000;
}

//function makeClone() {
//	let slides = document.querySelector('.swiper-wrapper');
//	let slideImg = document.querySelectorAll('.swiper-slide');


//	let cloneSlide_first = slideImg[0].cloneNode(true);
//	let cloneSlide_last = slides.lastElementChild.cloneNode(true);
//	slides.append(cloneSlide_first);
//	slides.insertBefore(cloneSlide_last, slides.firstElementChild);


//}
function initfunction() {
	slides.style.width = (slideWidth + slideMargin) * (slideCount + 2) + 'px';
	slides.style.left = -(slideWidth + slideMargin) + 'px';
} 
