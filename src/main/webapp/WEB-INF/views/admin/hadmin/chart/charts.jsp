<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!-- Spring Security Login Session 처리 -->
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html lang="en">
<head>
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

	})
</script>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title></title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="/resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="/hadmin/store">관리자</a>
		<!-- Sidebar Toggle-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0"></form>
		<a class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4 btn btn-dark" href="/ed/logout.do">Logout</a>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="sb-sidenav-menu-heading">Core</div>
						<a class="nav-link" href="/hadmin/store">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> Dashboard
						</a>

						<div class="sb-sidenav-menu-heading">관리</div>
					
						<a class="nav-link" href="/hadmin/userPage">
							<div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
							회원관리
						</a>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseError" aria-expanded="false"
									aria-controls="pagesCollapseError"> 메뉴관리
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseError"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="/hadmin/menu?type=package">패키지</a> <a
											class="nav-link" href="/hadmin/menu?type=burger">버거＆세트</a> <a
											class="nav-link" href="/hadmin/menu?type=side">스낵＆사이드</a> <a
											class="nav-link" href="/hadmin/menu?type=drink">음료</a> <a class="nav-link"
											href="/hadmin/menu?type=dessert">디저트</a> <a class="nav-link"
											href="/hadmin/menu?type=happymeal">해피밀</a>
											<a class="nav-link" href="/hadmin/menu?type=emorning">이모닝</a>

									</nav>
								</div>
								<a class="nav-link" href="/hadmin/promotion">프로모션</a>
						
						<div class="sb-sidenav-menu-heading">매출</div>
						<a class="nav-link" href="/hadmin/chart">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> 매출차트</a>
					</div>
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">
					<h1 class="mt-4">매출차트</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/hadmin/store">Dashboard</a></li>
						<li class="breadcrumb-item active">매출차트</li>
					</ol>
					<div class="card mb-4">
						<div class="card-body">차트설명</div>
					</div>

					<div class="card mb-4">
						<div class="card-header ">
							<i class="fas fa-chart-area me-1"></i><span class="salesChartName">전체매출차트</span>
						</div>
						<div class="card-body salesChart">
							<canvas id="myAreaChart" width="100%" height="30"></canvas>
						</div>
						<div class="card-footer small text-muted" align="right">
							<!-- 일별 월별 -->
							<span>검색조건 :</span>
								&nbsp;&nbsp;&nbsp;
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="dateStandard" id="day" value="day"
									checked="checked"
									> <label class="form-check-label"
									for="day">일</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="dateStandard" id="month" value="month" > <label
									class="form-check-label" for="month">월</label>
							</div>

								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox"
									name="sexCheckBox"> <label
									class="form-check-label" for="inlineCheckbox1">성별비교</label>
							</div>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="text" id="search" placeholder="지점코드 입력" aria-label="First name" >
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<button type="button" id="searchBtn" class="btn btn-outline-primary">검색</button>
							
						</div>

					</div>
				</div>
				
                <div class="card mb-4">
                     <div class="card-header">
                         <i class="fas fa-chart-bar me-1"></i>
                         각 메뉴 월간 판매량
                     </div>
                     <div class="card-body myEachMenuChartCanvas"><canvas id="myEachMenuChart" width="100%" height="30"></canvas></div>
                     <div class="card-footer small text-muted myEachMenuChartForm">
					<div class="form-check  form-check-inline chartforme" align="right">
						<span>검색조건 :</span>
						<div class="form-check form-check-inline">
						<input class="form-check-input" type="checkbox"
							id="inlineCheckbox2" value="gender"> <label
							class="form-check-label" for="inlineCheckbox2">성별비교</label>
						</div>
						<div class="form-check form-check-inline">
							<span>메뉴타입 :</span>
							<select id="inlineSelect2">
                           		<option selected value="burger">버거</option>
                           		<option value="side">사이드</option>
                           		<option value="drink">음료</option>
                           		<option value="dessert">디저트</option>
								<option value="happymeal">해피밀</option>
								<option value="emorning">이모닝</option>
								<option value="package">패키지</option>
							</select>
						</div>
						<div class="form-check form-check-inline">
							<span>날짜선택 :</span>
							<input id="inlineMonth2" type="month"> 
						</div>
					</div>
				</div>
                </div>
                
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-chart-bar me-1"></i>
                                메뉴 별 판매량
                            </div>
                            <div class="card-body myMenuChartCanvas"><canvas id="myMenuChart" width="100%" height="30"></canvas></div>
                            <div class="card-footer small text-muted myMenuChartForm" align="right">
	                            <!-- 일별 월별 -->
								<span>검색조건 :</span>
								<div class="form-check form-check-inline chartform">
									<input class="form-check-input" type="radio"
										name="inlineRadioOptions" id="day" value="day"
										checked="checked"> <label class="form-check-label"
										for="day">일</label>
								</div>
								<div class="form-check form-check-inline chartform">
									<input class="form-check-input" type="radio"
										name="inlineRadioOptions" id="month" value="month"> <label
										class="form-check-label" for="month">월</label>
								</div>
	
									&nbsp;&nbsp;&nbsp;
								<div class="form-check form-check-inline chartforme">
									<input class="form-check-input" type="checkbox"
										id="inlineCheckbox1" value="gender"> <label
										class="form-check-label" for="inlineCheckbox1">성별비교</label>
								</div>
								&nbsp;&nbsp;&nbsp;
								<div class="form-check form-check-inline chartform">상품번호 :
									<input type="text" class="input-chart-text">
								</div>
							</div>
                        </div>                
                
			</main>
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


		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			crossorigin="anonymous"></script>
		<script src="/resources/js/scripts.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
			crossorigin="anonymous"></script>
		<script src="/resources/js/chart-hadmin.js"></script>
</body>
</html>
