<!-- 관리자 로그인 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>관리자 로그인</title>
<link rel="stylesheet" href="/resources/css/adminStyles.css"> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script>
$(document).ready(function(){
	$('#storeUpdateBtn').on('click',function(){
		var store_code = $('#storecode').attr('data-value');
		var store_name = $('#store_name').val();
		var store_phone = $('#store_phone').val();
		var store_driverthru = 0;
		var store_delivery = 0;
		if($('#driverThru').is(':checked')){
			store_driverthru = 1;
		}
		if($('#delivery').is(':checked')){
			store_delivery = 1; 
		}
		
		var url = "/hadmin/storeUpdate.do";
		var data = {
			store_code:store_code,
			store_name:store_name,
			store_phone:store_phone,
			store_driverthru:store_driverthru,
			store_delivery:store_delivery
		}
		if($('#closure').is(':checked')){
			date.store_status = 3;
		}else{
			data.store_status = -1;
		}
		$.ajax({
			url: url,
			type: 'POST',
			data: data,
			success:function(){
				opener.location.reload();
				window.open("about:blank","_self").close();
			},
			error:function(){
			}
		})
		
	})
})
</script>
</head>
<body class="bg-black">
<div id="layoutAuthentication" style="flex-direction: column; min-height: 100%;">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">매장 정보 수정</h3></div>
                                    <div class="card-body">

									<form action="" id="storeUpdate" method="post">
										<div class="col-md-6">
											<div class="form-floating mb-6 mb-md-0">
												<input name="store_address" class="form-control"  id="store_address"
													type="text" type="text" placeholder="Enter your last name" value="${store.store_address }" disabled/>
												<label for="inputFirstName">매장주소</label>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-floating  mb-3 mb-md-0">
												<input name="store_name" class="form-control"
													value="${store.store_name}" id="store_name"
													type="text" placeholder="Enter your last name" /> <label
													for="inputLastName">매장이름</label>
											</div>
											<div class="form-floating  mb-3 mb-md-0">
												<input name="store_name" class="form-control"
													value="${store.store_phone}" id="store_phone"
													type="text" placeholder="Enter your last name"/> <label
													for="inputLastName">매장번호</label>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-floating  mb-3 mb-md-0">
												<input name="user_name" class="form-control"
													value="${store.user_name}" id="user_name"
													type="text" placeholder="Enter your last name" disabled/> <label
													for="inputLastName">지점장</label>
											</div>
											<div class="form-floating  mb-3 mb-md-0">
												<input name="user_phone" class="form-control"
													value="${store.user_phone}" id="user_phone"
													type="text" placeholder="Enter your last name" disabled/> <label
													for="inputLastName">지점장번호</label>
											</div>
										</div>

										<div align="center">
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="checkbox"
													id="driverThru" value="option2" <c:if test="${store.store_driverthru == 1}">checked</c:if>> <label
													class="form-check-label" for="inlineCheckbox1">드라이브쓰루</label>
											</div>
											
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="checkbox"
													id="delivery" value="option2" <c:if test="${store.store_delivery == 1}">checked</c:if>> <label
													class="form-check-label" for="inlineCheckbox2">딜리버리</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="checkbox"
													id="closure" value="option2" <c:if test="${store.store_status == 3}">checked</c:if>> <label
													class="form-check-label" for="inlineCheckbox2">폐업</label>
											</div>
										</div>


										<div class="mt-4 mb-0">
											<div class="d-grid">
												<button type="button" id="storeUpdateBtn"
													class="btn btn-danger btn-block">수정</button>
											</div>
										</div>
									</form>
								</div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="index.jsp">메인 페이지</a></div>
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
						<div class="text-muted">Copyright &copy; Your Website 2022</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<div id="storecode" data-value="${store.store_code }" hidden></div>
<script type="text/javascript">
function updateDo() {
	alert("수정하시겠습니까?");
	var storeupdateForm = document.getElementById("storeUpdate");
	storeupdateForm.action = "";
	storeupdateForm.submit();
}
</script>	
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="/resources/js/scripts.js"></script>

</body>
</html>
