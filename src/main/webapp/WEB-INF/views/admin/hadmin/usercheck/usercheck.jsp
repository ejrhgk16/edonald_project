<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>관리자 모드</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="/resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>	
<script>
$(document).ready(function(){
	var self_url = new URL(window.location.href);
	var self_param = self_url.searchParams;
	var user_status = '0';
	var result_url = "/hadmin/userPage";
	if(self_param.get('user_status') == 0){
		$('.unactivityListBtn').text("정상 유저");
		$('.unactivityListBtn').attr("class","btn btn-outline-dark activityListBtn");
		$('.thBtn').text("활성화");
		$('.unactivityBtn').text("활성화");
		user_status ='1';
		result_url ="/hadmin/userPage?user_status=0";
	}

	$(document).on('click','.modifyBtn',function(){
		var url = "/hadmin/CMSadmin";
		var id = "id_" + $(this).attr("data-value");
		var email = $('#'+id).text();
		url += "?user_email=" + email;
		window.open(url, "a", "width=600, height=800, left=100, top=50, location=no");
	})
	
	$(document).on('click','.createSadminBtn',function(){
		var url = "/hadmin/CMSadmin";
		window.open(url, "a", "width=600, height=800, left=100, top=50, location=no");	
	})
	
	$(document).on('click','.unactivityBtn',function(){
		var id = "id_" + $(this).attr("data-value");
		var email = $('#'+id).text();
		
		$.ajax({
			url: "/hadmin/unactivity.do",
			type: 'POST',
			data:{
				user_email: email,
				user_status: user_status
			},
			success:function(){
				location.href = result_url;
			},
			error:function(){
				alert("error");
			}
		})
	})
		
	$('.unactivityListBtn').on('click',function(){
		location.href = "/hadmin/userPage?user_status=0";
	})
	$('.activityListBtn').on('click',function(){
		location.href = "/hadmin/userPage";
	})

	
})
</script>
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
					<h1 class="mt-4">유저관리</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="/hadmin/store">Dashboard</a></li>
						<li class="breadcrumb-item active">유저관리</li>
					</ol>


					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-table me-1"></i> 유저관리
						</div>
						<div>
							<br> &nbsp;&nbsp;&nbsp;
							 <button type="button" class="btn btn-outline-dark createSadminBtn">등록</button>
							 <button type="button" class="btn btn-outline-dark unactivityListBtn">활동 정지 목록</button>
						</div>
						<div class="card-body">
							<table id="datatablesSimple">

								<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">회원이름</th>
										<th scope="col">회원전화번호</th>
										<th scope="col">권한</th>
										<th scope="col">지점명</th>
										<th scope="col">유저이메일</th>
										<th scope="col">수정</th>
										<th scope="col" class="thBtn">정지</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="list" items="${list}" varStatus="status">
									<tr class="userForm">
			                            <td>${status.count}</td>
			                            <td>${list.user_name }</td>
			                            <td>${list.user_phone}</td>
			                            <td>${list.role}</td>
			                            <td>${list.store_name}</td>
			                            <td id="id_${status.count}">${list.user_email }</td>
			                            <td>
			                                <button class="btn btn-outline-dark flex-shrink-0 modifyBtn" data-value="${status.count}" type="button">
			                                    수정
			                                </button>
			                            </td>
			                            <td>
			                                <button class="btn btn-outline-dark flex-shrink-0 unactivityBtn" type="button" data-value="${status.count}">
			                                    정지
			                                </button>
			                            </td>
				                    </tr>								
								</c:forEach>
								</tbody>
							</table>
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
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="/resources/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="/resources/js/datatables-simple-demo.js"></script>
</body>
</html>
