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
        		var newrow = 0;
        		setInterval(function(){
        			var firstid = $('.headrow').eq(0).attr('id');
					var firstseq = $('#'+firstid).attr('data-value');
					var url = "/sadmin/neworder.do?order_seq=" + firstseq;
					$.ajax({
						url: url,
						type: 'GET',
						success:function(res){
							var html = "";
							$.each(res,function(index,item){
								html += "<tr class=\"headrow\" id=\""+newrow+"_new_row\" data-value=\""+item.order_seq+"\">";
								html += "<td style=\"display:none;\">"+item.order_seq+"</td>";
								html += "<td>"+item.order_date+"</td>";
								html += "<td>"+item.user_address+"</td>";
								html += "<td>"+item.user_name+"</td>";
								html += "<td>"+item.user_phone+"</td>";
								html += "<td>"+comma(item.final_price)+"</td>";
								html += "<td><button type=\"button\" class=\"btn btn-light orderbutton\" data-value=\"2\"><img src=\"https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EC%A3%BC%EB%AC%B8%EC%A0%91%EC%88%98+off.png\" style=\"width:25%;heigth:25%;\" alt=\"\"></button>";
								html += "<button type=\"button\" class=\"btn btn-light orderbutton\" data-value=\"3\"><img src=\"https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EC%A4%80%EB%B9%84%EC%A4%91+off.png\" style=\"width:25%;heigth:25%;\" alt=\"\"></button>";
								html += "<button type=\"button\" class=\"btn btn-light orderbutton\" data-value=\"4\"><img src=\"https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EB%B0%B0%EB%8B%AC%EC%A4%91+off.png\" style=\"width:25%;heigth:25%;\" alt=\"\"></button>";
								html += "<button type=\"button\" class=\"btn btn-light orderbutton\" data-value=\"5\"><img src=\"https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EB%B0%B0%EB%8B%AC%EC%99%84%EB%A3%8C+off.png\" style=\"width:25%;heigth:25%;\" alt=\"\"></button>";
								html += "<button type=\"button\" class=\"btn btn-light orderbutton\" data-value=\"1\">Cancel</button></td></tr>";

								html += "<tr class=\"hiddenrow "+newrow+"_new_row\" style=\"display:none;background-color: #eeeeee;\">";
								html += "<td>"+item.cartList.cart_product_name+" "+item.cartList.comp_type+" "+item.cartList.cart_product_quant+"개</td>";
								if(item.cartList.comp1_name != null){
									html += "<td colspan=\"100%\">"+item.cartList.comp1_name;	
									if(item.cartList.comp2_name != null){
										html += ", "+item.cartList.comp2_name;	
									}
									if(item.cartList.comp3_name != null){
										html += ", "+item.cartList.comp3_name;
									}
									if(item.cartList.comp4_name != null){
										html += ", "+item.cartList.comp4_name;
									}
									if(item.cartList.comp5_name != null){
										html += ", "+item.cartList.comp5_name;
									}
									if(item.cartList.comp6_name != null){
										html += ", "+item.cartList.comp6_name;
									}
									if(item.cartList.comp7_name != null){
										html += ", "+item.cartList.comp7_name;
									}
									if(item.cartList.comp8_name != null){
										html += ", "+item.cartList.comp8_name;
									}
									html +="</td>";
								}
								html += "</tr>";
								newrow ++;
							})
							$('.listbody').prepend(html);
						},
						error:function(){
							alert('error');
						}
					})
        		},5000);
 			 
        		$(document).on('click','.headrow',function(){
       				var id = $(this).attr("id");
        			if($('.'+id).attr('style') == "display:;background-color: #eeeeee;"){
        				$('.'+id).attr('style','display:none;background-color: #eeeeee;');	
        			}else{
        				$('.'+id).attr('style','display:;background-color: #eeeeee;');
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
        					
        				},
        				error:function(){
        					alert("error");
        				}
        			});
        			var btn = $(this).parent().children('button');
        			for(var i = 0 ; i < btn.length -1;i++){
        				var img = btn.eq(i).children();
    					var src = img.attr('src');
    					src = src.replace('on.png','off.png');
    					img.attr('src',src);
        				if(order_status >= btn.eq(i).attr('data-value')){
        					var img = btn.eq(i).children();
        					var src = img.attr('src');
        					src = src.replace('off.png','on.png');
        					img.attr('src',src);
        				}

        			}
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
					매장 주문 관리 <a target="_blank" href="">WDonald 주문관리</a>
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
								<th>주문 날짜</th>
								<th>주소</th>
								<th>주문자</th>
								<th>주문자번호</th>
								<th>결제금액</th>
								<th>주문 상태</th>
							</tr>
						</thead>
						<tbody class="listbody">
						<script>
						<c:forEach items="${list}" var="list" varStatus="status">
						var price = comma(${list.final_price});
						console.log(price);
						</script>
						<!-- <fmt:formatDate var="orderDate" value="${list.order_date}" pattern="yyyy.MM.dd HH:mm:ss"/>  -->
							<tr class="headrow" id="${status.index }_row" data-value="${list.order_seq }">
								<td style="display:none;">${list.order_seq}</td>
								<td>${list.order_date}</td>
								<td>${list.user_address}</td>
								<td>${list.user_name}</td>
								<td>${list.user_phone}</td>
								<td><script>document.write(price)</script></td>
								<td>
									<c:if test="${list.order_status eq 0}">
										<button type="button" class="btn btn-light orderbutton" data-value="2"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EC%A3%BC%EB%AC%B8%EC%A0%91%EC%88%98+off.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light orderbutton" data-value="3"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EC%A4%80%EB%B9%84%EC%A4%91+off.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light orderbutton" data-value="4"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EB%B0%B0%EB%8B%AC%EC%A4%91+off.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light orderbutton" data-value="5"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EB%B0%B0%EB%8B%AC%EC%99%84%EB%A3%8C+off.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light orderbutton" data-value="1">Cancel</button>
									</c:if>
									<c:if test="${list.order_status eq 2}">
										<button type="button" class="btn btn-light orderbutton" data-value="2"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EC%A3%BC%EB%AC%B8%EC%A0%91%EC%88%98+on.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light orderbutton" data-value="3"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EC%A4%80%EB%B9%84%EC%A4%91+off.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light orderbutton" data-value="4"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EB%B0%B0%EB%8B%AC%EC%A4%91+off.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light orderbutton" data-value="5"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EB%B0%B0%EB%8B%AC%EC%99%84%EB%A3%8C+off.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light orderbutton" data-value="1">Cancel</button>
									</c:if>
									<c:if test="${list.order_status eq 3}">
										<button type="button" class="btn btn-light orderbutton" data-value="2"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EC%A3%BC%EB%AC%B8%EC%A0%91%EC%88%98+on.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light orderbutton" data-value="3"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EC%A4%80%EB%B9%84%EC%A4%91+on.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light orderbutton" data-value="4"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EB%B0%B0%EB%8B%AC%EC%A4%91+off.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light orderbutton" data-value="5"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EB%B0%B0%EB%8B%AC%EC%99%84%EB%A3%8C+off.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light orderbutton" data-value="1">Cancel</button>
									</c:if>
									<c:if test="${list.order_status eq 4}">
										<button type="button" class="btn btn-light orderbutton" data-value="2"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EC%A3%BC%EB%AC%B8%EC%A0%91%EC%88%98+on.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light orderbutton" data-value="3"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EC%A4%80%EB%B9%84%EC%A4%91+on.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light orderbutton" data-value="4"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EB%B0%B0%EB%8B%AC%EC%A4%91+on.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light orderbutton" data-value="5"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EB%B0%B0%EB%8B%AC%EC%99%84%EB%A3%8C+off.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light orderbutton" data-value="1">Cancel</button>
									</c:if>
									<c:if test="${list.order_status eq 5}">
										<button type="button" class="btn btn-light" data-value="2"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EC%A3%BC%EB%AC%B8%EC%A0%91%EC%88%98+on.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light" data-value="3"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EC%A4%80%EB%B9%84%EC%A4%91+on.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light" data-value="4"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EB%B0%B0%EB%8B%AC%EC%A4%91+on.png" style="width:25%;heigth:25%;" alt=""></button>
										<button type="button" class="btn btn-light" data-value="5"><img src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/%EB%B0%B0%EB%8B%AC%EC%99%84%EB%A3%8C+on.png" style="width:25%;heigth:25%;" alt=""></button>
									</c:if>
									<c:if test="${list.order_status eq 1}">주문 취소</c:if>
								</td>
							</tr>
					    <c:forEach items="${list.cartList}" var="cartList" varStatus="status2">
							<tr class="hiddenrow ${status.index }_row" style="display:none;background-color: #eeeeee;">
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
							 </tr>
					    </c:forEach>
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
