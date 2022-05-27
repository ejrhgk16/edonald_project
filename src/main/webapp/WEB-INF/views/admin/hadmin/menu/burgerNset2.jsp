<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>관리자 모드</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="/resources/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
 		<script type="text/javascript" src="/resources/js/hadmin_menu.js"></script>
    </head>
    <body class="sb-nav-fixed">
    	<p class="menuType" hidden>${type}</p>
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
						<a class="nav-link collapsed" href="usercheck.jsp"
							data-bs-toggle="collapse" data-bs-target="#collapseLayouts"
							aria-expanded="false" aria-controls="collapseLayouts">
							<div class="sb-nav-link-icon">
								<i class="fas fa-columns"></i>
							</div> 지점관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="/hadmin/userPage">회원관리</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapsePages" aria-expanded="false"
							aria-controls="collapsePages">
							<div class="sb-nav-link-icon">
								<i class="fas fa-book-open"></i>
							</div> 사이트관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
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
							</nav>
						</div>
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
                        <h1 class="mt-4">버거＆세트메뉴</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">버거＆세트메뉴</li>
                        </ol>
                       
                        
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                	맥도날드 버거＆세트메뉴 내역
                            </div>
                            <div>
                            <br>
                           &nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-outline-dark btnRegister">등록</button>
                           
                            </div>
						<div class="card-body">
							<table id="datatablesSimple">

								<thead>
									<tr>
										<th scope="col">상품이름</th>
										<th scope="col">가격</th>
										<th scope="col">칼로리</th>
										<th scope="col" width="100">상태</th>	
										<th scope="col" width="100">투게더팩</th>
										<th scope="col" width="100">플러스팩</th>
										<th scope="col" width="100">라지세트</th>
										<th scope="col" width="100">세트</th>
										<th scope="col" width="100">이모닝</th>				
									</tr>
								</thead>
								<tbody>
									<c:forEach var="list" items="${list}" varStatus="status">
										<tr>
											<td class="list_seq" hidden>${list.seq}</td>
											<td class="each-menu">${list.name}</td>
											<td class="each-menu">${list.price} 원</td>
											<td class="each-menu">${list.kcal} kcal</td>
				                            <td>
				                                <select name="status" class="status_selecter">
				                                    <option value="0" <c:if test="${list.status eq 0}">selected="selected"</c:if>>비활성화</option>
				                                    <option value="1" <c:if test="${list.status eq 1}">selected="selected"</c:if>>오후메뉴</option>
				                                    <option value="2" <c:if test="${list.status eq 2}">selected="selected"</c:if>>오전메뉴</option>
				                                    <option value="3" <c:if test="${list.status eq 3}">selected="selected"</c:if>>일반메뉴</option>
				                                </select>
				                            </td>
				                            <td>
				                            	<div class="form-check text-center">
				                            		<label>
												  		<input class="form-check-input sub_to" type="checkbox" value="to" id="sub_to_${list.seq}" <c:if test="${list.sub_to eq 1}">checked="checked"</c:if>>
											  		</label>
												</div>
				                            </td>
				                            <td>
				                            	<div class="form-check text-center">
				                            	<label>
												  <input class="form-check-input sub_pl" type="checkbox" value="pl" id="sub_pl_${list.seq}" <c:if test="${list.sub_pl eq 1}">checked="checked"</c:if>>
												 </label>
												</div>
				                            </td>
				                            <td>
				                            	<div class="form-check text-center">
				                            	<label>
												  <input class="form-check-input sub_ls" type="checkbox" value="ls" id="sub_ls_${list.seq}" <c:if test="${list.sub_ls eq 1}">checked="checked"</c:if>>
												 </label>
												</div>
				                            </td>
				                            <td>
				                            	<div class="form-check text-center">
				                            	<label>
												  <input class="form-check-input sub_s" type="checkbox" value="s" id="sub_s_${list.seq}" <c:if test="${list.sub_s eq 1}">checked="checked"</c:if>>
												 </label>
												</div>
				                            </td>
				                            <td>
				                            	<div class="form-check text-center">
				                            	<label>
												  <input class="form-check-input sub_em" type="checkbox" value="em" id="sub_em_${list.seq}" <c:if test="${list.sub_em eq 1}">checked="checked"</c:if>>
												 </label>
												</div>
				                            </td>
				                            <td>
				                            	<button type="button" class="btn btn-outline-dark btnModify">수정</button>
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
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resources/js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="/resources/js/datatables-simple-demo.js"></script>
    </body>
</html>
