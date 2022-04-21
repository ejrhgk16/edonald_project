<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>지점장</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.jsp">지점장</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
              <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
    매장상태
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><a class="dropdown-item" href="#">정상 영업</a></li>
    <li><a class="dropdown-item" href="#">영업 종료</a></li>
    <li><a class="dropdown-item" href="#">영업 준비중</a></li>
  </ul>
</div>
                </div>
 <!--               <div class="container">
	<h2>선택(select) 상자</h2>
	<select class="form-control">
	  <option>종로지점</option>
	  <option>종로지점</option>
	  <option>종로지점</option>
	  <option>종로지점</option>
	  <option>종로지점</option>
	</select>
</div>
<div class="container">
			<div class="row">
				<div class="col">
					<h1>Button</h1>
						<button type="button" class="btn btn-light">확인</button>
						<button type="button" class="btn btn-danger">로그아웃 <i class="fa fa-sign-out"></i></button>
                -->
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="login.jsp">Login</a></li>
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="index2.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <div class="sb-sidenav-menu-heading">관리</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                매뉴관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="checkmenu.jsp">추천메뉴</a>
                                            <a class="nav-link" href="burgerNset.jsp">버거＆세트</a>
                                            <a class="nav-link" href="snackNside.jsp">스낵＆사이드</a>
                                            <a class="nav-link" href="drink.jsp">음료</a>
                                            <a class="nav-link" href="dessert.jsp">디저트</a>
                                            <a class="nav-link" href="happymeal.jsp">해피밀</a>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">관리</div>
                             <a class="nav-link" href="order.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                주문관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            
                            <a class="nav-link" href="storeUpdate.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                매장정보 수정
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>

                            <div class="sb-sidenav-menu-heading">매출</div>
                            <a class="nav-link" href="charts.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                매출차트
                            </a>
                            <a class="nav-link" href="tables.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                매출테이블
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">추천메뉴</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                            <li class="breadcrumb-item active">추천메뉴</li>
                        </ol>
                       
                        
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                	맥도날드 추천메뉴 내역
                            </div>
                            <div>
                            <br>
                           &nbsp;&nbsp;&nbsp;<button type="button" onclick="window.open('admincreate.jsp');"class="btn btn-outline-dark">등록</button>&nbsp;<button type="button" class="btn btn-outline-dark">저장</button>
                           
                            </div>
                            						<div class="card-body">
							<table id="datatablesSimple">

								<thead>
									<tr>
										<th>상품이름</th>
										<th>가격</th>
										<th>코드</th>
										<th>칼로리</th>
										<th>상태</th>										
										
									</tr>
								</thead>
								<tbody>

									<c:forEach var="list" items="${list}">
										<tr>
											<td>${list.b_name}</td>
											<td>${list.b_price}</td>
											<td>${list.b_code}</td>
											<td>${list.b_kcal}</td>
                            <td>
                                <select name="role">
                                    <option value="ROLE_SELLER">활성화</option>
                                    <option value="ROLE_USER">비활성화</option>
                                </select>
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
                            
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
