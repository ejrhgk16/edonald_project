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
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="/resources/js/main.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div class="root">
		<div class="wrap container">
			<div class="global-header">

				<div class="header-actions row">
					<div class="language-selector">
					</div>
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
								class="menu-item-target" href="/ed/menuPage"> 메뉴
							</a></li>


							<li class="menu-item menu-item-account dropdown"><a
								class="menu-item-target dropdown-toggle" href="#signin"
								data-toggle="modal" data-target="#signin">마이 페이지
							</a></li>

							<li class="menu-item menu-item-support dropdown selected"><a
								class="menu-item-target dropdown-toggle" href="#"
								data-toggle="dropdown" aria-expanded="false">  기타정보<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="/ed/ect/useInfo" target="_self">이용약관</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="/ed/ect/userInfo" target="_self">개인정보
											처리방침</a></li>
									<li class="dropdown-menu-item"><a
										class="dropdown-menu-item-target" href="/ed/ect/question" target="_self">자주
											묻는 질문</a></li>
								</ul></li>

						</ul>
					</div>
				</div>


			</div>
			<div class="main" role="main">

				<div class="row row-narrow">
					<div class="page-sidebar">
						<div class="sidebar-menu">
							<h2 class="menu-category">기타정보</h2>
							<ul class="menu">


								<li class="menu-item selected"><a class="menu-item-target" id="이용약관"
									href="/ed/ect/useInfo"
									target="_self">이용약관</a></li>



								<li class="menu-item "><a class="menu-item-target"
									id="개인정보 처리방침"
									href="/ed/ect/userInfo"
									target="_self">개인정보 처리방침</a></li>



								<li class="menu-item "><a class="menu-item-target"
									id="자주 묻는 질문"
									href="/ed/ect/question"
									target="_self">자주 묻는 질문</a></li>



							</ul>

						</div>
					</div>
					<div class="col-xs-10">
						<div class="page-title">
							<h1>이용약관</h1>
						</div>
						<div class="panel-lg panel panel-default">
							<div class="panel-body">
								<div class="row">
									<div class="col-xs-12">
										<h2>제1조. 목적</h2>
										<p>
											이 약관은 한국맥도날드 유한회사 (이하 "회사")가 운영하는 맥딜리버리 인터넷 홈페이지(<a
												href="https://www.mcdelivery.co.kr/kr/" target="_blank">https://www.mcdelivery.co.kr/kr/</a>,
											이하 "홈페이지") 및 휴대용 단말기 또는 태블릿PC 등에서 구현되는 어플리케이션(이하 “어플리케이션”) 이용
											서비스와 관련하여 회사 및 회원의 권리, 의무, 책임사항, 기타 이용 조건 및 절차에 관한 사항을 규정함을
											목적으로 합니다.
										</p>
										<h2>제2조. 정의</h2>
										<p>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
										<ol>
											<li>"서비스"라 함은 구현되는 단말기(PC, TV, 휴대용 단말기 등의 각종 유무선 장치를
												포함)와 상관없이 회원이 홈페이지 및 어플리케이션으로부터 제공받아 이용할 수 있는 서비스를 말합니다.</li>
											<li>"회원"이라 함은 홈페이지 및 어플리케이션에 접속하여 이 약관에 따라 회원 가입 신청을 하고
												회사로부터 가입 승인을 받아 회사가 제공하는 서비스를 이용하는 이용자를 말합니다.</li>
											<li>"ID(아이디)"라 함은 회원의 식별과 서비스 이용을 위하여 회원이 정하고 회사가 승인하는
												문자와 숫자의 조합을 말합니다.</li>
											<li>"Password(비밀번호)"라 함은 회원이 부여 받은 ID와 일치되는 회원임을 확인하고
												비밀보호를 위해 회원 자신이 정한 문자와 숫자의 조합을 말합니다.</li>
										</ol>
										<h2>제3조. 약관의 효력과 변경</h2>
										<ol>
											<li>회사는 회원이 이 약관에 동의함을 전제로 가입 신청을 승인하며, 본 약관의 내용은 회원가입 시
												공지된 내용에 회원이 동의함으로써 효력이 발생합니다.</li>
											<li>이 약관의 내용은 회사에 의하여 관계법령에 위배되지 않는 범위 안에서 변경될 수 있으며,
												변경된 약관은 홈페이지 및 어플리케이션에서 확인할 수 있습니다. 변경된 약관은 회사가 홈페이지 및
												어플리케이션에 이를 게시하여 회원이 확인할 수 있는 상태에서 7일의 기간이 경과함과 동시에 그 효력이
												발생됩니다.</li>
											<li>회원은 개정된 약관에 동의하지 않을 경우 회원 탈퇴를 요청할 수 있고, 회원이 탈퇴를 하지
												않고 계속해서 홈페이지 및 어플리케이션을 사용하는 등의 서비스를 받는 경우 또는 위 제3조 제2항에 따라
												변경된 약관이 공지된 이후 7일의 기간이 경과한 때까지 탈퇴의 의사를 표시하지 않을 시에는 약관 변경에 대한
												동의의 의사를 표시한 것으로 간주됩니다.</li>
										</ol>
										<h2>제4조. 회원가입</h2>
										<ol>
											<li>홈페이지 및 어플리케이션 회원은 "본인 회원"만을 원칙으로 합니다.</li>
											<li>본인 회원이란 이 약관의 내용에 대하여 동의를 한 다음 홈페이지 및 어플리케이션 서비스의 회원
												신청 양식에 의거, 본인의 신상 정보를 사실에 입각하여 입력하는 방법으로 회원가입신청을 하고 회사로부터 회원
												가입 승인을 받으신 분을 의미합니다. 법인 혹은 단체회원으로 가입신청을 하실 수는 없습니다.</li>
											<li>만 14세 미만의 미성년자는 회원으로 가입할 수 없습니다.</li>
											<li>회사는 다음 사항에 해당하는 경우에는 가입승인을 유보, 거부할 수 있습니다.
												<ul class="lower-roman">
													<li>가명으로 회원 가입할 경우.</li>
													<li>혐오스럽거나 타인에게 불쾌감을 줄 수 있는 아이디로 회원가입을 할 경우.</li>
													<li>다른 사람의 명의를 빌리거나 도용하여 차명으로 신청하였을 경우.</li>
													<li>기타 가입신청 항목을 허위로 기재하거나 회사가 제시하는 내용을 기재하지 아니할 경우.</li>
													<li>법령에 위배되거나 미풍양속을 저해하고자 하는 목적으로 회원가입 신청을 할 경우(또는 그러한
														행위를 한 경우).</li>
													<li>가입신청자가 기존에 이 약관에 의하여 회원자격을 상실된 사실이 있는 경우(단, 별도로
														회사의 회원 재가입 승인을 득한 경우에는 예외로 함).</li>
												</ul>
											</li>
										</ol>
										<h2>제5조. 회원정보</h2>
										<ol>
											<li>회사는 관계법령이 정하는 바에 따라 회원의 개인정보를 보호하기 위해 노력합니다. 또한,
												개인정보의 보호 및 사용에 대해서는 관계법령뿐 아니라 회사의 개인정보처리방침이 적용됩니다.</li>
											<li>회원 가입 시 입력한 개인정보는 회원의 동의를 득하거나 관계법령에서 허용하는 경우를 제외하고는
												다른 용도로 사용되지 않으며, 또한 외부로 유출되지 않습니다.</li>
											<li>상기 제2항에도 불구하고 회사가 관계법령에 따라 수사기관 등 제3자에 대하여 회원의 개인정보를
												제공할 의무를 지게되는 경우, 회사는 관계법령을 준수하는 범위 내에서는 부득이하게 회원의 개인정보를 제공할
												수 있습니다.</li>
										</ol>
										<h2>제6조. 회원의 의무</h2>
										<ol>
											<li>회원은 이 약관에서 규정하는 사항과 기타 회사가 정한 이용규정 등 제반 규정, 공지사항 등
												회사가 공지하는 사항 및 관계법령을 준수하여야 합니다.</li>
											<li>ID와 Password에 대한 관리책임은 회원에게 있고 회원 본인이 직접 사용하여야 하며,
												본인이 아닌 타인이 이용하게 할 수 없습니다.</li>
											<li>회원 본인의 부주의로 ID와 Password가 타인에게 유출되어 발생할 수 있는 각종 손실 및
												손해등에 대한 책임은 회원 본인에게 귀속됩니다.</li>
											<li>회원은 회원가입신청 시 기재한 사항이 변경되었을 경우 온라인으로 수정을 하거나 전자우편 기타
												방법으로 회사에 대하여 그 변경사항을 알려야 하며, 변경사항을 회사에 알리지 않아서 회원에게 불이익 등
												문제점이 발생하는 경우 그에 대한 책임은 회원 본인에게 귀속됩니다.</li>
										</ol>
										<h2>제7조. 회원관리</h2>
										<ol>
											<li>회원은 언제든지 개인정보를 열람하고 정정 또는 동의철회(회원탈퇴)를 요청할 수 있습니다.</li>
											<li>개인정보의 수집에 대한 동의철회(회원탈퇴)를 하시려면 회원탈퇴를 누르시고 회원탈퇴를 하시면
												됩니다. 회원탈퇴의 경우, 회사가 관계법령 및 개인정보처리방침에 따라 회원정보를 보유하는 경우를 제외하고,
												탈퇴 즉시 회원의 모든 개인정보는 삭제 및 소멸됩니다.</li>
											<li>회원으로 가입되어 있는 분들은 누구나 동등한 자격으로 서비스를 이용하실 수 있습니다.</li>
										</ol>
										<h2>제8조. 회원정보의 이용</h2>
										<ol>
											<li>회원은 목적을 불문하고 서비스 이용과정에서 취득한 e-mail 주소 등 다른 이용자의
												개인정보를 사용하거나 제3자에게 제공할 수 없습니다.</li>
											<li>회원이 스팸메일 발송 등을 위하여 다른 회원들의 e-mail 주소를 사용하거나 이를 제3자에게
												제공하였을 경우, 이에 대한 모든 법적 책임은 해당 회원에게 있으며, 해당 회원은 이로 인하여 발생하는 모든
												손실 또는 손해로부터 회사가 면책되도록 하여야 합니다.</li>
										</ol>
										<h2>제9조. 저작권</h2>
										<ol>
											<li>회원이 홈페이지 및 어플리케이션에서 제공하는 각종 서비스에 대한 정보를 사전 동의 없이 외부로
												유출시켰을 경우, 해당 회원은 저작권법 등 관계법령에 의하여 제재를 받을 수 있습니다.</li>
											<li>회원은 홈페이지 및 어플리케이션에 등록되어 있는 회사의 Corporate
												Identity(CI) / Brand Identity(BI) 혹은 캐릭터 등의 이미지 파일을 무단으로
												사용하실 수 없으며, 위반사항 적발 시 해당 행위에 대한 법적 제재가 따른다는 사실을 인정하고 이에
												동의합니다.</li>
										</ol>
										<h2>제10조. 회원자격 중지 및 탈퇴</h2>
										<ol>
											<li>서비스 제공업자인 회사는 다음 사항 발생 시 별도의 통보절차 없이 회원의 자격을 정지하거나
												박탈할 수 있습니다.:
												<ul class="lower-roman">
													<li>회원가입 시 입력사항을 허위로 기재하는 등 이 약관 제4조 제4항 각호에 해당하는 경우.
														<p></p>
													</li>
													<li>홈페이지 및 어플리케이션 내에서, 회원들 간의 음란물 거래 또는 음란물 등록을 하였을
														경우.</li>
													<li>형사처벌의 대상 또는 민사상 불법행위가 되는 것으로 판단되는 행위가 적발된 경우. (불법
														상행위 포함)</li>
													<li>게시판 등 홈페이지 및 어플리케이션에서 욕설이나 저속한 문구를 사용하여, 타인에게 불쾌감을
														유발한다고 판단되는 경우.</li>
													<li>기타 관계법령, 이 약관, 서비스 이용과 관련하여 회사가 정한 다른 규정을 위반하는 행위를
														하는 경우.</li>
												</ul>
											</li>
											<li>회원이 홈페이지 및 어플리케이션를 이용한 부당광고 및 다른 회원들에게 피해를 주는 행위를
												하였을 경우, 회사는 1회에 한하여 해당 이용자에게 해당 행위를 중지할 것을 통보하며, 통보에도 불구하고
												그러한 행위가 지속될 때에는 별도의 통보 없이 해당 이용자의 회사 회원 자격을 정지 또는 박탈할 수
												있습니다.</li>
										</ol>
										<h2>제11조. 서비스 제공 및 이용</h2>
										<ol>
											<li>서비스는 회사의 업무상 또는 기술상 특별한 지장이 없는 한, 연중무휴 및 1일 24시간을
												원칙으로 합니다.</li>
											<li>제1항의 이용시간은 정기 점검 등의 필요로 인하여 회사가 정한 날과 시간에는 예외로 합니다.
												단, 부득이한 사유로 인해 서비스를 일시 중지할 경우에는 회사는 가급적 사전에 이를 공지하여야 하나,
												불가피한 경우에는 사후 통지로 갈음할 수 있습니다.</li>
											<li>홈페이지 및 어플리케이션 이용을 통하여 회원과 회사가 체결하는 제품구매계약의 내용은 각
												개별계약 체결 시 당사자가 정하는 조건에 따라 이루어집니다.</li>
											<li>맥딜리버리 서비스는 주문 접수 후에도 재료 부족 등 서비스를 제공하는 해당 매장의 사정에 따라
												회원에 대한 개별 연락 하에 변경 또는 취소될 수 있습니다.</li>
										</ol>
										<h2>제12조 정보 및 광고 제공 등</h2>
										<ol>
											<li>회사가 홈페이지 및 어플리케이션 서비스를 운영함에 있어 각종 이용규정 등의 정보를 게시물 등의
												방법을 통하여 회원에게 제공할 수 있습니다.</li>
											<li>회사는 홈페이지 및 어플리케이션을 통해 회원에게 광고, 행사, 상품, 서비스 및
												프로모션(쿠폰제공 등)을 제공할 수 있습니다.</li>
										</ol>
										<h2>제13조. 서비스 제공업자의 의무</h2>
										<ol>
											<li>회사는 특별한 사정이 없는 한 이용자가 신청한 서비스 제공 개시일에 서비스를 이용할 수 있도록
												합니다.</li>
											<li>회사는 이 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 의무가 있습니다.</li>
											<li>회사는 이 약관에서 특별히 정한 경우를 제외하고는 이용자의 개인정보를 본인의 승낙 없이
												타인에게 누설, 배포하여서는 아니 됩니다. 다만, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등
												관계법령에 의하여 국가기관 등의 적법한 요구가 있는 경우에는 예외로 합니다.</li>
											<li>회사는 회원으로부터 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 즉시 처리하여야
												합니다. 다만, 즉시 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 통보 하여야 합니다.</li>
										</ol>
										<h2>제14조. 기타사항 (서비스∙이용규정 안내 및 명기되지 않은 사항)</h2>
										<p>이 약관에서 정의하지 않은 용어나 정하지 않은 사항은 별도의 서비스 안내 및 이용규정 안내 등에서
											정의합니다. 더 자세한 내용은 홈페이지 또는 어플리케이션 상의 ‘자주 묻는 질문’ 란에서 확인하실 수
											있습니다. 홈페이지 또는 어플리케이션에 명기되지 않은 사항이나 그 해석에 관하여는 관계법령 또는 상관례에
											따릅니다.</p>
										<h2>제15조. 약관위반의 책임</h2>
										<ol>
											<li>이 약관을 위반함으로써 발생하는 모든 책임은 위반한 자가 부담하며, 이로 인하여 상대방에게
												손해를 입힌 경우에는 관계법령에 의거하여 법적 책임을 져야 합니다.</li>
											<li>홈페이지 및 어플리케이션 서비스 이용과 관련하여 회사와 회원 간에 발생하는 분쟁에 관한 소송은
												민사소송법 등에 의거한 관할법원에 제기합니다.</li>
										</ol>
										<h2>제16조. 면책조항</h2>
										<ol>
											<li>회사는 천재지변, 전쟁 기타 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는
												서비스 제공에 대한 책임이 면책됩니다.</li>
											<li>회사는 회원의 귀책사유로 인한 서비스 이용의 장애 또는 손해에 대하여 책임을 부담하지
												않습니다.</li>
										</ol>
										<h2>부칙</h2>
										<p>본 약관은 2016. 4. 1.부터 적용합니다.</p>
									</div>
								</div>
							</div>
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