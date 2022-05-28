<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!-- Spring Security Login Session 처리 -->
<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addressBook</title>
<link rel="stylesheet" href="kor/css/main.css">
<link rel="stylesheet" href="kor/css/local.css">
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="/resources/js/main.js"></script>
</head>
<body>
	<div class="root">
		<div class="wrap container">
			<div class="global-header">

				<div class="header-actions row">
					<div class="language-selector"></div>
					<div class="my-account-quicklinks">
						<ul class="list-inline list-inline-divide">

							<c:choose>
								<c:when test="${empty principal.username }">
									<li class="list-item"><img
										src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/icon_profile_gray.png"
										alt="Profile" width="20" class="profile-grey-avator"></li>

									<li class="list-item" id="loginText"><a
										href="/ed/deliverHome">로그인</a></li>
								</c:when>
								<c:otherwise>
									<li class="list-item"><img
										src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/icon_profile_gray.png"
										alt="Profile" width="20" class="profile-grey-avator"> <b><span
											class="first-name">${principal.memberDto.user_name}</span></b></li>
									<li class="list-item"><a href="/ed/logout.do">로그아웃</a></li>
								</c:otherwise>
							</c:choose>

							<li class="list-item"><a
								class="list-item-target track-order-flag" href="#signin"
								data-toggle="modal" data-target="#signin">주문 조회</a></li>

						</ul>
					</div>
				</div>
				<div class="global-navbar navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<a class="navbar-brand wos-brand" href="/kr/home.html"> <img
							src="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/common/delivery/mcdelivery_logo_ko.jpg"
							alt="McDelivery&amp;trade;">

						</a>
					</div>
					<div class="main-navigation clearfix">
						<ul class="nav navbar-nav">

							<li class="menu-item menu-item-menu"><a
								class="menu-item-target" href="/ed/menuPage"> 메뉴 </a></li>


							<li class="menu-item menu-item-account dropdown selected"><a
								class="menu-item-target dropdown-toggle" href="#signin"
								data-toggle="modal" data-target="#signin">마이 페이지 </a></li>

							<li class="menu-item menu-item-support dropdown "><a
								class="menu-item-target dropdown-toggle" href="#"
								data-toggle="dropdown" aria-expanded="false"> 기타정보<span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="/ed/ect/useInfo"
										target="_self">이용약관</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="/ed/ect/userInfo"
										target="_self">개인정보 처리방침</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="/ed/ect/question"
										target="_self">자주 묻는 질문</a></li>
								</ul></li>

						</ul>
					</div>
				</div>



			</div>
			<div class="main" role="main">
				<div class="row row-narrow">
					<div class="page-sidebar">
						<div class="sidebar-menu">
							<h2 class="menu-category">마이 페이지</h2>
							<ul class="menu">
								<li class="menu-item"><a class="menu-item-target"
									href="/member/mypage/trackOrder">주문 조회</a></li>

								<li class="menu-item selected"><a class="menu-item-target"
									href="/member/mypage/addressBook">주소록</a></li>

								<li class="menu-item"><a class="menu-item-target"
									href="/member/changeAccount">계정 설정</a></li>
								<li class="menu-item"><a class="menu-item-target"
									href="/member/changePassword">비밀번호 변경</a></li>

							</ul>
						</div>
					</div>

					<div class="col-xs-10 type-flama">
						<div class="page-title">
							<h1>주소록</h1>
						</div>
						<div class="page-content">

							<table class="table-default table-panel table-addressbook">
								<thead>
									<tr>
										<th scope="colgroup" colspan="2"><h3>주소</h3></th>
										<th scope="col"><h3>배달 시 유의사항</h3></th>
										<th scope="col"></th>
									</tr>



								</thead>
								<tfoot>
									<tr>
										<td colspan="4" class="actions"><a
											class="btn btn-red btn-lg" href="/kr/address.html">새로운 주소
												추가</a> <a class="btn btn-red btn-lg" href="/kr/home.html">메인화면으로
												이동</a></td>
									</tr>
								</tfoot>
								<tbody>
									<tr>
										<td class="address-number">1</td>
										<td class="address-details">
											<div>서울특별시 강북구 미아동 791-961 4층</div>

											<div></div>
										</td>
										<td class="special-instructions"></td>
										<td class="controls"><a class="text-gray-light"
											href="/kr/address.html?addressType=1" title="주소 변경하기"><i
												class="fa mcd mcd-edit icon"></i></a></td>
									</tr>
									<!-- <tr>
						<td class="address-number">1</td>
						<td class="address-details">
							<div>Address Line 1</div>
							<div>Address Line 2</div>
							<div>Address Line 3</div>
						</td>
						<td class="special-instructions">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum quidem vitae mollitia commodi corporis suscipit esse laboriosam blanditiis labore minus.</td>
						<td class="controls"><a href="/index.php?r=site/page&amp;view=account-edit-address" class="text-gray-light"><i class="fa mcd mcd-edit icon"></i></a> <a href="" class="text-gray-light"><i class="fa mcd mcd-remove icon"></i></a></td>
					</tr>
					<tr>
						<td class="address-number">2</td>
						<td class="address-details">
							<div>Address Line 1</div>
							<div>Address Line 2</div>
							<div>Address Line 3</div>
						</td>
						<td class="special-instructions">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum quidem vitae mollitia commodi corporis suscipit esse laboriosam blanditiis labore minus.</td>
						<td class="controls"><a href="/index.php?r=site/page&amp;view=account-edit-address" class="text-gray-light"><i class="fa mcd mcd-edit icon"></i></a> <a href="" class="text-gray-light"><i class="fa mcd mcd-remove icon"></i></a></td>
					</tr> -->
								</tbody>
							</table>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="global-footer">
			<div class="footer-disclaimer">
				<div class="container">
					<div class="text-center">
						한국맥도날드(유) | 대표자: 앤토니 마티네즈 | 서울특별시 종로구 종로 51 종로타워 14층 | 전화번호:
						1600-5252 | 사업자등록번호: 101-81-26409 | 호스팅서비스 제공자: 아마존 웹 서비스 <br>
						<br>공정위 사업자 링크 정보: <a
							href="https://www.ftc.go.kr/bizCommPop.do?wrkr_no=1018126409"
							target="_blank">한국맥도날드(유)</a>
					</div>
					<div class="text-center text-ucase">Copyright © 2014 All
						Rights Reserved By McDonald's™</div>
					<div class="text-center text-ucase">골든 아치 로고와 "i'm lovin'
						it"은 맥도날드 고유의 상표입니다.</div>


				</div>
			</div>

		</div>

	</div>

	



</body>
</html>