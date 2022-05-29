<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>지점장</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="/resources/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
        <script>
        	$(document).ready(function(){
        		
        		$("#exceldown").on("click", function(e){
        			e.preventDefault();
        			location.href="/sadmin/getExcel"

        		})
        		
        		setInterval(function(){
        			
        			window.location.reload();
    
        		},5000);
        		
        		
        		$(document).on('change','.orderselect',function(e){
        			e.stopPropagation();
        			var order_seq= $(this).parent().parent().attr('data-value');
        			var order_status = $(this).val();
        			var wait_time = $(this).find("option:selected").attr('data-value');

        			var url = "/sadmin/order.do?order_seq="+order_seq+"&order_status="+order_status;
        			if(wait_time != null){
        				url += "&wait_time="+wait_time;
        			}
        			$.ajax({
        				url: url,
        				type: 'get',
        				success:function(){
        					
        				},
        				error:function(){
        					alert("error");
        				}
        			});
        			
        			if($(this).val() == 5){
						window.location.reload();
					}
        			if(wait_time != null){
        				setTimeout(function(){
        					window.location.reload();
        				},1500)
        				
        			}

        		})
        			$(document).on('click','.orderbutton',function(e){
        			e.stopPropagation();
        			var order_seq= $(this).parent().parent().attr('data-value');
        			var order_status = $(this).attr('data-value');
        			
        			var url = "/sadmin/order.do?order_seq="+order_seq+"&order_status="+order_status;
        			$.ajax({
        				url: url,
        				type: 'get',
        				success:function(){
        					window.location.reload();
        				},
        				error:function(){
        					alert("error");
        				}
        			});

        		})
        		
        		
        	})
        	 function comma(str) {
			    str = String(str);
			    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
			}
        </script>
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
						<button type="button" class="btn btn-light orderbutton" data-value="2">확인</button>
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
			<h1 class="mt-4">주문</h1>
			<ol class="breadcrumb mb-4">
				<li class="breadcrumb-item"><a href="">EDonald</a></li>
				<li class="breadcrumb-item active">주문</li>
			</ol>
			<div class="card mb-4">
				<div class="card-body">
					매장 주문 관리 <a id="exceldown" href="">주문내역 액셀로 다운</a>
				</div>
			</div>
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table me-1"></i>주문현황
				</div>
				<form action="">
				<div class="card-body">
					<table id="datatablesSimple">
						<thead>
							<tr>
								<th style="display:none;">seq</th>
								<th>주문코드</th>
								<th>주문 시간</th>
								<th>주소</th>
								<th>주문자</th>
								<th>주문자번호</th>
								<th>결제 방식</th>
								<th>결제금액</th>
								<th>주문 상태</th>
								<th>주문 취소</th>
							</tr>
						</thead>
						<tbody class="listbody">
						<script>
						<c:forEach items="${list}" var="list" varStatus="status">
						var price = comma(${list.final_price});
						</script>
						<!-- <fmt:formatDate var="orderDate" value="${list.order_date}" pattern="yyyy.MM.dd HH:mm:ss"/>  -->
							<tr class="headrow" id="${status.index }_row" data-value="${list.order_seq }">
								<td style="display:none;">${list.order_seq}</td>
								<td>${list.merchanuid }</td>
								<td>${list.order_date}</td>
								<td>${list.user_address}</td>
								<td>${list.user_name}</td>
								<td>${list.user_phone}</td>
								<td>${list.payment_type }</td>
								<td><script>document.write(price)</script></td>
								
									<c:choose>
										<c:when test="${list.order_status eq 0 }">
											<td data-value="${list.order_date }">
												<select class="orderselect">
													<option value="2" data-value="15">15분</option>
													<option value="2" data-value="30">30분</option>
													<option value="2" data-value="45">45분</option>
													<option value="2" data-value="60">1시간</option>
													<option value="2" data-value="75">1시간 15분</option>
													<option value="2" data-value="90">1시간 30분</option>
													<option value="2" data-value="105">1시간 45분</option>
													<option value="2" data-value="120">2시간</option>
												</select>
											</td>
											<td>
												<button type="button" class="btn btn-light orderbutton" data-value="1">Cancel</button>
											</td>
											<c:forEach items="${list.cartList}" var="cartList" varStatus="status2">
												<tr class="hiddenrow ${status.index }_row" style="background-color: #eeeeee;">
										    	<td>${cartList.cart_product_name} ${cartList.comp_type } ${cartList.cart_product_quant }개</td>
												 <c:if test="${!empty cartList.comp1_name }"><td colspan="100%">${cartList.comp1_name }
												 <c:if test="${!empty cartList.comp2_name }">, ${cartList.comp2_name }</c:if>
												 <c:if test="${!empty cartList.comp3_name }">, ${cartList.comp3_name }</c:if>
												 <c:if test="${!empty cartList.comp4_name }">, ${cartList.comp4_name }</c:if>
												 <c:if test="${!empty cartList.comp5_name }">, ${cartList.comp5_name }</c:if>
												 <c:if test="${!empty cartList.comp6_name }">, ${cartList.comp6_name }</c:if>
												 <c:if test="${!empty cartList.comp7_name }">, ${cartList.comp7_name }</c:if>
												 <c:if test="${!empty cartList.comp8_name }">, ${cartList.comp8_name }</c:if>
												 </td></c:if>
												 <c:if test="${empty cartList.comp1_name }"><td colspan="100%"></td></c:if>
												 </tr>
										    </c:forEach>
										    <c:if test="${!empty list.order_comment }">
										    	<tr class="hiddenrow" style="background-color: #eeeeee;">
										    		<td>고객 요구사항 </td>
										    		<td colspan="100%">${list.order_comment }</td>
										    	</tr>
									    	</c:if>
										</c:when>
										<c:when test="${list.order_status eq 1 }"><td colspan="100%">취소된 주문</td></c:when>
										<c:when test="${list.order_status eq 5 }"><td colspan="100%">배달 완료</td></c:when>
										<c:otherwise>
										<td>
											<select class="orderselect">
												<option value="2" <c:if test="${list.order_status eq 2 }">selected</c:if>>주문접수</option>
												<option value="3" <c:if test="${list.order_status eq 3 }">selected</c:if>>준비중</option>
												<option value="4" <c:if test="${list.order_status eq 4 }">selected</c:if>>배달중</option>
												<option value="5">배달완료</option>
											</select>
										</td>
										<td>
											<button type="button" class="btn btn-light orderbutton" data-value="1">Cancel</button>
										</td>
										<c:forEach items="${list.cartList}" var="cartList" varStatus="status2">
											<tr class="hiddenrow ${status.index }_row" style="background-color: #eeeeee;">
									    	<td>${cartList.cart_product_name} ${cartList.comp_type } ${cartList.cart_product_quant }개</td>
											 <c:if test="${!empty cartList.comp1_name }"><td colspan="100%">${cartList.comp1_name }
											 <c:if test="${!empty cartList.comp2_name }">, ${cartList.comp2_name }</c:if>
											 <c:if test="${!empty cartList.comp3_name }">, ${cartList.comp3_name }</c:if>
											 <c:if test="${!empty cartList.comp4_name }">, ${cartList.comp4_name }</c:if>
											 <c:if test="${!empty cartList.comp5_name }">, ${cartList.comp5_name }</c:if>
											 <c:if test="${!empty cartList.comp6_name }">, ${cartList.comp6_name }</c:if>
											 <c:if test="${!empty cartList.comp7_name }">, ${cartList.comp7_name }</c:if>
											 <c:if test="${!empty cartList.comp8_name }">, ${cartList.comp8_name }</c:if>
											 </td></c:if>
											 <c:if test="${empty cartList.comp1_name }"><td colspan="100%"></td></c:if>
											 </tr>
									    </c:forEach>
									    <c:if test="${!empty list.order_comment }">
									    	<tr class="hiddenrow" style="background-color: #eeeeee;">
									    		<td>고객 요구사항 </td>
									    		<td colspan="100%">${list.order_comment }</td>
									    	</tr>
								    	</c:if>
										</c:otherwise>
									</c:choose>
							</tr>
					    
					    <script>
						</c:forEach>
						</script>
						</tbody>	
					</table>
				</div>
				</form>
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
