var slideIndex = 0; //slide index

// HTML 로드가 끝난 후 동작

$(document).ready(function() {

	showSlides(slideIndex);

	// Auto Move Slide
	var sec = 3000;
	setInterval(function() {
		slideIndex++;
		showSlides(slideIndex);

	}, sec);
})

// Thumbnail image controls
function goSlide(n) {
	slideIndex = n;
	showSlides(slideIndex);
}

function showSlides(n) {

	var slides = $(".slide-target");
	var dots = $(".slide-pager-target");
	var size = slides.length;

	if ((n + 1) > size) {
		slideIndex = 0; n = 0;
	} else if (n < 0) {
		slideIndex = (size - 1);
		n = (size - 1);
	}

	for (i = 0; i < slides.length; i++) {
		slides[i].style.display = "none";
	}
	for (i = 0; i < dots.length; i++) {
		dots[i].className = dots[i].className.replace(" cycle-pager-active", "");
	}
	slides[n].style.display = "block";
	dots[n].className += " cycle-pager-active";
}


