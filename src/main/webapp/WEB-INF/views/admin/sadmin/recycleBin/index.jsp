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
        <title>지점장</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="/resources/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
        <script type="text/javascript" src="/resources/js/sadmin_common.js" ></script>
        
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="/sadmin/index">${principal.memberDto.deliverStore.store_name}</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
              <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <div class="dropdown">
					  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
					    <c:if test="${principal.memberDto.deliverStore.store_status == 0}">영업 종료</c:if>
					    <c:if test="${principal.memberDto.deliverStore.store_status == 1}">정상 영업</c:if>
					  </button>
					  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					    <li><a class="dropdown-item store_status">정상 영업</a></li>
					    <li><a class="dropdown-item store_status">영업 종료</a></li>
					  </ul>
					</div>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="/sadmin/Msadmin" onclick="window.open(this.href, '_blank', 'width=400,height=800,toolbars=no,scrollbars=no'); return false;">Settings</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="/ed/logout.do">Logout</a></li>
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
                                            <a class="nav-link" href="/sadmin/menu?type=package">패키지</a>
                                            <a class="nav-link" href="/sadmin/menu?type=burger">버거＆세트</a>
                                            <a class="nav-link" href="/sadmin/menu?type=side">스낵＆사이드</a>
                                            <a class="nav-link" href="/sadmin/menu?type=drink">음료</a>
                                            <a class="nav-link" href="/sadmin/menu?type=dessert">디저트</a>
                                            <a class="nav-link" href="/sadmin/menu?type=happymeal">해피밀</a>
                                            <a class="nav-link" href="/sadmin/menu?type=emorning">이모닝</a>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">관리</div>
                             <a class="nav-link" href="/sadmin/order">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                주문관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            
                            <a class="nav-link" href="/sadmin/storeUpdate" onClick="window.open(this.href, '지점 정보 변경', 'width=500, height=1000, top=30, left=30, resizable=no, scrollbars=no, location=no'); return false;">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                매장정보 수정
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>

                            <div class="sb-sidenav-menu-heading">매출</div>
                            <a class="nav-link" href="/sadmin/charts">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                매출차트
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        일별 전지점 매출 그래프
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        월별 전지점 매출 그래프
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        </div>
 <!--                       <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                               지점별 발주목록
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <td>Caesar Vance</td>
                                            <td>Pre-Sales Support</td>
                                            <td>New York</td>
                                            <td>21</td>
                                            <td>2011/12/12</td>
                                            <td>$106,450</td>
                                        </tr>
                                        <tr>
                                            <td>Doris Wilder</td>
                                            <td>Sales Assistant</td>
                                            <td>Sidney</td>
                                            <td>23</td>
                                            <td>2010/09/20</td>
                                            <td>$85,600</td>
                                        </tr>
                                        <tr>
                                            <td>Angelica Ramos</td>
                                            <td>Chief Executive Officer (CEO)</td>
                                            <td>London</td>
                                            <td>47</td>
                                            <td>2009/10/09</td>
                                            <td>$1,200,000</td>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                        <tr>
                                            <th>지점명</th>
                                            <th>물품</th>
                                            <th>갯수</th>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div> -->
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; McDonald 2022</div>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="/resources/js/chart-area-demo.js"></script>
        <script src="/resources/js/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="/resources/js/datatables-simple-demo.js"></script>
    </body>
</html>
