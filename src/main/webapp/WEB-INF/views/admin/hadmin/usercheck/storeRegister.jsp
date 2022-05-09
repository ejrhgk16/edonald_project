<!-- 관리자 로그인 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=57c82c3d4e52c1b3bb9f7077877b01c3&libraries=services"></script>
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$("#storeRegisterBtn").on("click", function() {
						
							var store_address = $("#store_address").val();
							var store_name = $("#store_name").val();
							var store_phone = $("#store_phone").val();
							var store_driverthru = 0;
							if($("input:checkbox[id='driverThru']").is(":checked")==true){
								console.log("dasdasd");
								store_driverthru = 1;
							}
							var store_delivery = 0;
							if( $("input:checkbox[id='delivery']").is(":checked") == true){
								store_delivery = 1;
							}
							
							var geocoder = new kakao.maps.services.Geocoder();
							geocoder.addressSearch(store_address, function(result, status) {
								if (status === kakao.maps.services.Status.OK) {
									var data = {
											store_address : store_address,
											store_name : store_name,
											store_phone : store_phone,
											store_driverthru : store_driverthru,
											store_delivery : store_delivery,
											store_log: result[0].x,
											store_lat: result[0].y
									};
							$.ajax({
								type : "POST",
								url : "/hadmin/storeRegister",
								data : JSON.stringify(data),
								contentType: "application/json; charset=utf-8",
								success : function(){
									//alert("등록성공")
									//window.close()
								}
							});
						};
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
									<h3 class="text-center font-weight-light my-4">매장 등록</h3>
								</div>
								<div class="card-body">

									<form action="" id="storeUpdate" method="post">
										<div class="col-md-6">
											<div class="form-floating mb-3 mb-md-0">
												<input name="store_address" class="form-control"  id="store_address"
													type="text" type="text" placeholder="Enter your last name" />
												<label for="inputFirstName">매장주소</label>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-floating  mb-3 mb-md-0">
												<input name="store_name" class="form-control"
													value="${storeDetail.store_name}" id="store_name"
													type="text" placeholder="Enter your last name" /> <label
													for="inputLastName">매장이름</label>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-floating  mb-3 mb-md-0">
												<input name="store_name" class="form-control"
													value="${storeDetail.store_name}" id="store_phone"
													type="text" placeholder="Enter your last name" /> <label
													for="inputLastName">매장번호</label>
											</div>
										</div>

										<div align="center">
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="checkbox"
													id="driverThru" value="option2"> <label
													class="form-check-label" for="inlineCheckbox1">드라이브쓰루</label>
											</div>
											
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="checkbox"
													id="delivery" value="option2"> <label
													class="form-check-label" for="inlineCheckbox2">딜리버리</label>
											</div>
										</div>


										<div class="mt-4 mb-0">
											<div class="d-grid">
												<button type="button" id="storeRegisterBtn"
													class="btn btn-danger btn-block">등록</button>
											</div>
										</div>
									</form>
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

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="/resources/js/scripts.js"></script>

</body>
</html>
