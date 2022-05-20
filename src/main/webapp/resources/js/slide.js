var slideIndex = 0; //slide index
var sec = 7000;

// HTML 로드가 끝난 후 동작

$(document).ready(function() {

//	showSlides(slideIndex);

	// Auto Move Slide
	
	var intervalMain = setInterval(intervalD, sec);
	
	$(document).on('click','.slide-pager-target',function(){
		var n = $(this).text();
//		goSlide(n);
		slideIndex = n-1;
		clearInterval(intervalMain);
		intervalD();
		intervalMain = setInterval(intervalD , sec);
	})
	
	$(document).on('visibilitychange',function(){
		if(document.visibilityState == 'hidden') {
			clearInterval(intervalMain);
		} else {
			intervalMain = setInterval(intervalD , sec);
		}
	})
	
})

// Thumbnail image controls

function intervalD() {
	slideIndex++;
	showSlides(slideIndex);
}

function showSlides(n) {

	var slides = $(".slide-target");
	var dots = $(".slide-pager-target");
	var size = slides.length;
	var prevN = $('.active-page').attr('data-value');
	if(size == 1){
		return;
	}
	if ((n + 1) > size) {
		slideIndex = 0; n = 0;
	} else if (n < 0) {
		slideIndex = (size - 1);
		n = (size - 1);
	}

	for (i = 0; i < slides.length; i++) {
		//slides[i].style.display = "none";
		slides.eq(i).removeClass('active-page');
	}
	for (i = 0; i < dots.length; i++) {
		dots[i].className = dots[i].className.replace(" cycle-pager-active", "");
	}
	slides.eq(n).addClass('active-page');
//	slides[n].style.display = "block";
	
	dots[n].className += " cycle-pager-active";
	
	var op = 0.0000;
	var op1 = 1.0000;
	var interval = setInterval(function() {
		op += 0.05	
		op1 -= 0.05	
		slides[n].style.opacity = op;
		slides[prevN].style.opacity = op1;
		if(op>1){
			clearInterval(interval);
		}
	}, 50);
	
}
