<!-- 관리자 로그인 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!-- Spring Security Login Session 처리 -->
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>지점장 계정 변경</title>
<link rel="stylesheet" href="/resources/css/adminStyles.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var status = 0;
		$('#passwordBtn').on('click',function(){
			if(status == 0){
				$('.passwordDiv').removeAttr('style');	
				status = 1;
			}else{
				$('.passwordDiv').attr('style','display:none;');
				status = 0;
			}
		})
		
		$(document).on('click','#submitBtn',function(){
			var user_email = $('#inputId').val();
			var user_phone = $('#inputPhone').val();
			var user_password = $('#inputUserPasswordChecker').val();
			console.log(user_password);
			var phoneVaild = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}/;
			var phoneVaild2 = /^[0-9]{2,3}[0-9]{3,4}[0-9]{4}/;
			if(status == 1){
				var new_user_password = $('#inputPassword').val();
				var new_user_passwordCheck = $('#inputPasswordCheck').val();
				if (new_user_password == "") {
					alert("신규 비밀번호를 입력하세요.");
					$("#inputPassword").focus();
					return false;
				}
				if (new_user_password != new_user_passwordCheck){
					alert("신규 비밀번호를 확인해주세요.");
					$('#inputPassword').focuse();
				}
			}
			if (user_password == "") {
				alert("기존 비밀번호를 입력하세요.");
				$("#inputUserPasswordChecker").focus();
				return false;
			}
			if (user_phone == "") {
				alert("전화번호를 입력하세요.");
				$("#inputPhone").focus();
				return false;
			}
			if (phoneVaild2.test(user_phone)==false){
				if (phoneVaild.test(user_phone)==false){
					alert("전화번호를 확인하세요.");
					$('#inputPhone');
					return false;
				}
				user_phone = user_phone.replace('-','');
				user_phone = user_phone.replace('-','');
			}			
			var json = {
				"user_password":user_password
			}
			var url = "/sadmin/checkMember.do";
			$.ajax({
				type :"POST",
				url : url,
				data : json,
				success :function(){
					json = {
						"user_email": user_email,
						"user_phone": user_phone,
					}
					if(status == 1){
						json.user_password = new_user_password;
					}
					url = "/sadmin/modifyMember.do";
					$.ajax({
						type : "POST",
						url : url,
						data : json,
						success : function(){
							opener.location.reload();
							window.open("about:blank","_self").close();
						},
						error : function(){
							alert("error");
						}
					})
				},
				error: function(res){
					console.log(res);
					alert(res.responseText);
				}
			});
		})
	})
</script>
</head>
<body class="bg-black">
	<div id="layoutAuthentication"
		style="flex-direction: column; min-height: 100%;">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-7">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4 haeder-text">개인정보 수정</h3>
								</div>
								<div class="card-body">

									<form action="" id="storeUpdate" method="post">
										<input type="hidden" name="admin_seq"
											value="${principal.memberDto.user_email}">
										<div class="row mb-3">
											<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<input name="admin_id" class="form-control"
														value="${principal.memberDto.user_email}" id="inputId"
														type="text" placeholder="Enter your first name" disabled/> <label
														for="inputFirstName" >이메일</label>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-floating">
													<input name="admin_name" class="form-control"
														value="${principal.memberDto.user_name}" id="inputName"
														type="text" placeholder="Enter your last name" disabled/> <label
														for="inputLastName" >이름</label>
												</div>
											</div>
										</div>
										<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<input name="admin_password" class="form-control"
														value="" id="inputUserPasswordChecker"
														type="password" placeholder="Enter your first name" /> <label
														for="inputFirstName">기존 비밀번호</label>
												</div>
											</div>										
										<div class="row mb-3 passwordDiv" style="display:none">
											<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<input name="admin_password" class="form-control"
														value="" id="inputPassword"
														type="password" placeholder="Enter your first name" /> <label
														for="inputFirstName">신규 비밀번호</label>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<input name="admin_password" class="form-control"
														value="" id="inputPasswordCheck"
														type="password" placeholder="Enter your first name" /> <label
														for="inputFirstName">신규 비밀번호 확인</label>
												</div>
											</div>
										</div>
										<div class="row mb-3">
											<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<input name="store_code" class="form-control"
														value="${principal.memberDto.user_phone}" id="inputPhone"
														type="text" placeholder="Enter your first name" /> <label
														for="inputFirstName">전화번호</label>
												</div>
											</div>
										
										</div>
										<div class="row mb-6">
											<div class="col-md-6">
												<div class="form-floating mb-3 mb-md-0">
													<div class="container">
														<button type="button" id="passwordBtn" class="btn btn-dark">비밀번호 변경</button>
													</div>
												</div>
											</div>
										</div>

										<div class="mt-4 mb-0">
											<div class="d-grid">
												<button type="button" id="submitBtn"
													class="btn btn-danger btn-block">변경</button>
											</div>
										</div>
									</form>
								</div>
								<div class="card-footer text-center py-3">
									<div class="small">
										<a href="index.jsp">메인 페이지</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>

		<div id="layoutAuthentication_footer">
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2021</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<div id="user_email_check" hidden>${principal.memberDto.user_email }</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="/resources/js/scripts.js"></script>

</body>
</html>
