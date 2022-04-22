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
        <title>관리자 모드</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">00지점?</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
              <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
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
                        <li><a class="dropdown-item" href="login.html">Login</a></li>
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../css/styles.css" rel="stylesheet" />

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
</head>
<body>
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light bg-light" th:replace="/fragment/navigation :: menu(${user})">

</nav>

<div class="container-fluid mt-3">
    <div class="row">

        <!-- SIDE BAR -->
        <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse" th:replace="/fragment/navigation :: side(${user})">

        </nav>

        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                
                <h1 class="h2">회원관리</h1>
            </div>
            <div class="table-responsive">
                <table class="table table-striped table-sm">
                    <thead>
                    <tr>
                    </tr>
                        <th scope="col">이름</th>
                        <th scope="col">회원이름</th>
                        <th scope="col">회원전화번호</th>
                        <th scope="col">권한</th>
                        <th scope="col">권한수정</th>
                        <th scope="col">유저이메일</th>
                        <th scope="col">문자수신동의</th>
                        <th scope="col">이메일수신동의</th>
                        <th scope="col">업데이트</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr th:each="users : ${userList}">
                        <form th:action="@{/user/change/{id}(id=${users.id})}" method="post" class="d-flex">
                            <td th:text="${users.getId()}">1</td>
                            <td th:text="${users.getName()}">name</td>
                            <td th:text="${users.getUsername()}">username</td>
                            <td th:text="${users.getRole()}">role</td>
                            <td>
                                <select name="role">
                                    <option value="ROLE_SELLER">일반회원</option>
                                    <option value="ROLE_USER">관리자</option>
                                    <option value="ROLE_USER">정지</option>
                                </select>
                            </td>
                            <td th:text="${users.getEmail()}">ddd@ddd.ddd</td>
                            <td th:text="${users.getMoney()}">yes</td>
                            <td th:text="${users.getCreateDate()}">yes</td>
                            <td>
                                <button class="btn btn-outline-dark flex-shrink-0" type="submit">
                                    업데이트
                                </button>
                            </td>
                        </form>
                    </tr>
                    </tbody>
                </table>
            </div>
        </main>
    </div>
</div>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="/js/scripts.js"></script>
</body>
</html>