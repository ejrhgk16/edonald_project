/**
 * 


 */
var selectedM = "전체";
$(document).ready(function() {


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

	$('.ui-menu-item').mouseenter(function() {
		$('.ui-state-active').removeClass('ui-state-active');
		$(this).addClass('ui-state-active');

	});


	$('.ui-menu-item').on('click', function() {

		selectedM = $(this).index();
		selectMF(selectedM);
	});

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
})


function selectMF(_selectedM) {
	var info = $(".ui-menu-item").eq(_selectedM).find('>a').attr('id');
	$(".ui-menu-item").eq(_selectedM).closest('ul').attr('aria-activedescendant', info);
	$('#category-button').attr('aria-labelledby', info);
	$('#category-button').attr('aria-activedescendant', info);
	$('.ui-state-active').removeClass('ui-state-active');
	switch (_selectedM) {
		case 0: $('.ui-selectmenu-text').text("전체"); $(".srvc").attr("style", "background-color: rgb(255, 255, 255); border: 1px solid rgb(209, 209, 209)"); break
		case 1: $('.ui-selectmenu-text').text("구매"); selectBF("1"); break
		case 2: $('.ui-selectmenu-text').text("매장이용"); selectBF("2"); break
		case 3: $('.ui-selectmenu-text').text("맥딜리버리"); selectBF("3"); break
		case 4: $('.ui-selectmenu-text').text("메뉴"); selectBF("0"); break
		case 5: $('.ui-selectmenu-text').text("채용"); selectBF("4"); break
		case 6: $('.ui-selectmenu-text').text("프랜차이즈"); selectBF("5"); break
		case 7: $('.ui-selectmenu-text').text("기타"); selectBF("7"); break
		case 8: $('.ui-selectmenu-text').text("맥도날드앱"); selectBF("6"); break
	}
}

function selectBF(_selectedM) {
	$(".srvc").attr("style", "background-color: rgb(255, 255, 255); border: 1px solid rgb(209, 209, 209)");
	$(".srvc").eq(_selectedM).attr("style", "background-color: rgb(255, 188, 13); border: 3px solid rgb(255, 188, 13)");
}










