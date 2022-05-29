/**
 * 
 */
var count = 300;
var time;

$(document).ready(function(){
	var end = false;
	$('#sumbitBtn').on('click',function(){
		if (end){
			$(location).attr("href", "/ed/deliveryHome");
			return;
		}
		var user_email =  $('#form_forgotpassword_verification').val();
		var url = "/ed/findpasswordCheck.do?user_email=" + user_email;
		var code = $('#authentication_code').val();
		if(code){
			url = "/ed/findpasswordCheckCode.do?authenticationNum="+code;
		}
		$.ajax({
			url:url,
			type:'GET',
			success:function(res){
				if(code){
					$('.panel-heading').html("<h4>임시 비밀번호로 변경되었습니다. 로그인 후 비밀번호를 변경 해주세요.</h4>");
					$('#inputform').html('<div id="inputform" class="form-group"><label>임시비밀번호 : '+res +'</label></div>');
					end = true;	
				}else{
					$('.panel-heading').html("<h4>인증번호가 발송 되었습니다. 인증번호를 확인해주세요.</h4>");
					$('#inputform').append('<label for="verification-code" class="field-label"><span class="required-symbol">*</span>인증번호:</label>');
					$('#inputform').append('<input type="text" name="code" id="authentication_code" class="form-control input-lg required email" value="" aria-required="true">');
					$('#inputform').append(' <h6 class="display-4 text-muted" id="countdown"></h6>');
					time = setInterval("myTimer()",1000);
				}
				
			},error:function(res){
				alert(res.responseText);
			}
		});
	})
	
})
function myTimer() {
		count = count - 1; // 타이머 선택 숫자에서 -1씩 감산함(갱신되기 때문)
		
		$("#countdown").text("남은시간 :" + count +"초 남았습니다.");
		if(count == 0) { 
			clearInterval(time);	// 시간 초기화
			count = 300;
		}
	}
	
	