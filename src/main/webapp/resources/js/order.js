
function requestPay(data) {
	var IMP = window.IMP;
	IMP.init("imp62292301");
	// IMP.request_pay(param, callback) 결제창 호출
	IMP.request_pay({ // param
		pg: "html5_inicis",
		pay_method: "card",
		merchant_uid: data.merchanuid,
		name: "edonald",
		amount: data.total_price,
		buyer_email: data.user_email,
		buyer_name: data.user_name,
		buyer_tel: data.user_phone,
		buyer_addr: data.user_address,
		buyer_postcode: data.postcode
	}, function(rsp) { // callback
		// 결제 성공 시 
		if (rsp.success) {
			data = {
				imp_uid: rsp.imp_uid,
				merchant_uid: rsp.merchant_uid
			};
			$.ajax({
				url: "/order/payment/check",
				type: "POST",
				data: data,
			}).done(function(res) {
				ordervalidcheck();
			}).fail(function(res) {
					alert(res.responseText);
				})
		} else {
			// 결제 실패 시
			alert("결제오류");
			location.href="/ed/deliverHome";
		}
	});
}

function ordervalidcheck(){
	$.ajax({
				url: "/order/payment/complete",
				type: "GET",
				success : function(res){
					location.href="/order/payment/result";
				},
				error : function(res){
					alert(res.responseText);
					location.href="/ed/deliverHome";
				}
			})
}

