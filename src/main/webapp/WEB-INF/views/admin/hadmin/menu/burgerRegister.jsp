<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>메뉴 등록</title>
        <link href="${pageContext.request.contextPath}/resources/css/adminStyles.css" rel="stylesheet" />
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=66de1c95d1d79be93897b045b9aca54a&libraries=services"></script>
    </head>
<script type="text/javascript">
	$(document).ready(function() {
		
		// 메뉴 수정 시 
		$(function(){
			var set = $('.pageSetting').text();
			if(set =="수정"){
				$('.card-header').children('h3').text("메뉴 수정");
				$('#submit').text("메뉴 수정");
				$('#burger-container').children().remove();
				$('#burger-detail-container').children().remove();
				var link ="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/" ;
				var src = $('#img').val();
				var srcSet = $('#set_img').val();
				$('#burger-container').prepend('<img style="width:100%;" id="image" src="'+link+src+'">');
				$('#burger-detail-container').prepend('<img style="width:100%;" id="image" src="'+link+srcSet+'">');
			}else{
				$('#seq').remove();
			}
		})
		
		if($('.menuType').text() != ""){
			$('#type').val($('.menuType').text()).attr("selected", "selected");
			typeChanger();
			$('#category_code').val($('.category').text()).attr("selected","selected");
		}
		$('#type').on("change",function(){
			typeChanger();
		})
		
//		$("#burger_code").blur(function(){
//			var code = $('#burger_code').val();
//			$.ajax({
//				type : "get",
//				url : "bcodeChk.mdo",
//				data : {"b_code" : code},
//				success : function(data){
//					console.log("중복 확인 : " + data);
//					if (data == 1) {
//						$("#codetxt").html('<small><strong class="text-danger">이미 사용중인 코드 입니다.</strong></small>');
//						$("#burger_code").focus();
//						return false;
//					}else{
//						$("#codetxt").html('<small><strong class="text-success">사용 가능한 코드 입니다.</strong></small>');
//					}
//				},
//				error : function(){
//
//				}
//			})
//		});
		
		$("#cancle").on("click", function() {
			location.href = "burger.mdo";
		})
		$("#submit").on("click", function() {
			var regExp = /\s/g;
			if ($("#name").val() == "") {
				alert("이름을 입력하세요.");
				$("#name").focus();
				return false;
			}
			if ($("#kcal").val() == "") {
				alert("칼로리를 입력하세요.");
				$("#kcal").focus();
				return false;
			}
			if (regExp.test($("#kcal").val())) {
				alert("공백을 사용할 수 없습니다.");
				$("#kcal").focus();
				return false;
			}
			if ($("#price").val() == "") {
				alert("가격을 입력하세요.");
				$("#price").focus();
				return false;
			}
			if (regExp.test($("#price").val())) {
				alert("공백을 사용할 수 없습니다.");
				$("#price").focus();
				return false;
			}
			if ($("#img").val() == "") {
				alert("이미지를 업로드하세요.");
				$("#img").focus();
				return false;
			}
			if ($("#allergy").val() == "") {
				alert("알레르기 정보를 입력하세요.");
				$("#allergy").focus();
				return false;
			}
			var url ="";
			var set = $('.pageSetting').text();
			if(set=="수정"){
				url = "/hadmin/update";
			}else{
			 	url = "/hadmin/insert";
			}
			var form = $('#addBurger')[0];
			var formData = new FormData(form);
			$.ajax({
				url: url,
				type: 'post',
				processData: false,
				contentType: false,
				data: formData,
				success: function(data) {
					opener.location.reload();
					window.open("about:blank","_self").close();
				},
				error: function() {
					alert("중복이름입니다.");
				}
			});
		});

		$('#file1').on('fileselect', function(event, numFiles, label) {
			var input = $(this).parents(
					'.input-group').find(
					':text'), log = numFiles > 1 ? numFiles
					+ ' files selected'
					: label;

			if (input.length) {
				input.val(log);
			} else {
				if (log)
					alert(log);
			}
			var tmppath = URL.createObjectURL(event.target.files[0]);
			$('#image').attr("src", tmppath);
		});
		$(document).on('change',":file",function() {
			var input = $(this), numFiles = input
					.get(0).files ? input
					.get(0).files.length : 1, label = input
					.val();
			input.trigger('fileselect', [
					numFiles, label ]);
		});

		$('#file2').on('fileselect', function(event, numFiles, label) {
			var input = $(this).parents(
					'.input-group').find(
					':text'), log = numFiles > 1 ? numFiles
					+ ' files selected'
					: label;

			if (input.length) {
				input.val(log);
			} else {
				if (log)
					alert(log);
			}
			var tmppath = URL.createObjectURL(event.target.files[0]);
			$('#Dimage').attr("src", tmppath);
		});
		$(document).on('change',":file",function() {
			var input = $(this), numFiles = input
					.get(0).files ? input
					.get(0).files.length : 1, label = input
					.val();
			input.trigger('fileselect', [
					numFiles, label ]);
		});
	})
	function slideButton() {
		var img = $('#burger-container');
		if (img.attr("style") == "display:none;") {
			img.attr("style", "display:block;");
			$('#slideBtn').text("메뉴 미리보기 취소");
		} else {
			img.attr("style", "display:none;");
			$('#slideBtn').text("메뉴 미리보기");
		}
	};
	function slideDButton() {
		var img = $('#burger-detail-container');
		if (img.attr("style") == "display:none;") {
			img.attr("style", "display:block;");
			$('#slideDBtn').text("메뉴 미리보기 취소");
		} else {
			img.attr("style", "display:none;");
			$('#slideDBtn').text("메뉴 미리보기");
		}
	};
	function typeChanger(){
		var type = $('#type option:selected').val();
		$('#category_code').children().remove();
		$('.drinkmenuform').hide();
		if (type == 'burger'){
			$('#category_code').append("<option value=\"0\">신제품</option>");
			$('#category_code').append("<option value=\"1\">오리지날</option>");
			$('#category_code').append("<option value=\"2\">치즈</option>");
			$('#category_code').append("<option value=\"3\">불고기</option>");
			$('#category_code').append("<option value=\"4\">새우</option>");
			$('#category_code').append("<option value=\"9\">기타</option>");
		}else if(type == 'side'){
			$('#category_code').append("<option value=\"10\">신제품</option>");
			$('#category_code').append("<option value=\"11\">스낵랩</option>");
			$('#category_code').append("<option value=\"12\">치즈스틱</option>");
			$('#category_code').append("<option value=\"13\">이너겟</option>");
			$('#category_code').append("<option value=\"14\">치킨텐더</option>");
			$('#category_code').append("<option value=\"15\">소스</option>");
			$('#category_code').append("<option value=\"19\">기타</option>");
		}else if(type == 'drink'){
			$('.drinkmenuform').show();
			$('#category_code').append("<option value=\"20\">신제품</option>");
			$('#category_code').append("<option value=\"21\">커피</option>");
			$('#category_code').append("<option value=\"22\">라떼</option>");
			$('#category_code').append("<option value=\"23\">주스</option>");
			$('#category_code').append("<option value=\"24\">디카페인</option>");
			$('#category_code').append("<option value=\"25\">쉐이크</option>");
			$('#category_code').append("<option value=\"29\">기타</option>");
		}else if(type == 'dessert'){
			$('#category_code').append("<option value=\"30\">신제품</option>");
			$('#category_code').append("<option value=\"31\">맥플러리</option>");
			$('#category_code').append("<option value=\"32\">아이스크림</option>");
			$('#category_code').append("<option value=\"39\">기타</option>");
		}else if(type == 'happymeal'){
			$('#category_code').append("<option value=\"40\">해피밀</option>");
		}else if(type == 'emorning'){
			$('#category_code').append("<option value=\"50\">신제품</option>");
			$('#category_code').append("<option value=\"51\">머핀</option>");
			$('#category_code').append("<option value=\"52\">핫케익</option>");
			$('#category_code').append("<option value=\"55\">소스</option>");
			$('#category_code').append("<option value=\"59\">기타</option>");
		}else if(type == 'package'){
			$('#category_code').append("<option value=\"61\">플러스팩</option>");
			$('#category_code').append("<option value=\"62\">투게더팩</option>");
		}
	}
</script>
    <body class="bg-black">
    <div id="map" style="width: 0px; height:0px;"></div>
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container1" style="max-width:100%;">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">메뉴 등록</h3></div>
                                    <div class="card-body">
                                        <form action="/hadmin/burger/insert" method="post" id="addBurger" enctype="multipart/form-data">
                                        	<div class="row mb-3">
                                                <div class="col-md-3">
                                                    <div class="form-floating">
                                                        <input class="form-control" id="name" name="name" type="text" placeholder="Enter your first name" 
                                                        	style="height: calc(3.5rem + 20px);" value="${dto.name }"/>
                                                        <label for="name">메뉴 이름</label>
                                                    </div>
                                                </div>
                                             </div>
                                             <div class="row mb-3">
                                                 <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input class="form-control" id="kcal" name="kcal" type="text" placeholder="Enter your first name" 
                                                        	style="height: calc(3.5rem + 20px);" value="${dto.kcal }"/>
                                                        <label for="kcal">메뉴 칼로리</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input class="form-control" id="price" name="price" type="text" placeholder="Enter your first name" 
                                                        	style="height: calc(3.5rem + 20px);" value="${dto.price }"/>
                                                        <label for="price">메뉴 가격</label>                                                        
                                                    </div>
                                                    <div class="form-floating drinkmenuform" style="display:none">
                                                        <input class="form-control" id="s_price" name="s_price" type="text" placeholder="Enter your first name" 
                                                        	style="height: calc(3.5rem + 20px);" value="${dto.s_price }"/>
                                                        <label for="price">스몰 가격</label>                                                        
                                                    </div>
                                                    <div class="form-floating drinkmenuform" style="display:none">
                                                        <input class="form-control" id="l_price" name="l_price" type="text" placeholder="Enter your first name" 
                                                        	style="height: calc(3.5rem + 20px);" value="${dto.l_price }"/>
                                                        <label for="price">라즈 가격</label>                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        	 <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                    	<select class="form-select" id="type" name="type" aria-label="Default select example"
                                                    		style="font-size: 13px; font-weight: 1000; padding-top: 1.1rem;">
                                                    		<option selected value="burger">버거</option>
                                                    		<option value="side">사이드</option>
                                                    		<option value="drink">음료</option>
                                                    		<option value="dessert">디저트</option>
															<option value="happymeal">해피밀</option>
															<option value="emorning">이모닝</option>
															<option value="package">패키지</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                 <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <select class="form-select" id="category_code" name="category_code" aria-label="Default select example"
                                                    		style="font-size: 13px; font-weight: 1000; padding-top: 1.1rem;">
                                                    		<option value="0">신제품</option>
                                                    		<option value="1">오리지날</option>
															<option value="2">치즈</option>
															<option value="3">불고기</option>
															<option value="4">새우</option>
															<option value="9">기타</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                             <div class="row mb-3">
                                             	<div class="col-md-12">
                                                   <div class="form-floating">
                                                       <input class="form-control" id="allergy" name="allergy" type="text" placeholder="Enter allergy information" 
                                                       	style="height: calc(3.5rem + 20px);" value="${dto.allergy }"/>
                                                       <label for="allergy">알레르기 정보</label>
                                                   </div>
                                                </div>
							           		</div>
                                            <!-- 필요없을듯해서 일단 주석
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                    	<select class="form-select" id="burger_type" name="burger_type" aria-label="Default select example"
                                                    		style="font-size: 13px; font-weight: 1000; padding-top: 1.1rem;">
                                                    		<option selected>전체</option>
															<option value="단품">단품</option>
															<option value="세트">세트</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                 <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input class="form-control" id="burger_regdate" name="burger_regdate" type="date"/>
                                                        <label for="burger_regdate">버거등록일</label>
                                                    </div>
                                                </div>
                                            </div>
                                       
                                            
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="burger_detail" name="burger_detail" type="text"/>
                                                <label for="burger_detail">상세설명 / 판매시간</label>
                                            </div>
                                             -->
                                            <div style="margin-top: 10px;">
	                                            <button type="button" id="slideBtn" onclick="slideButton();" class="btn btn-primary">이미지 미리보기</button>	
	                                            <div class="dessert-container" id="burger-container" style="display:none;">
	                                            	<img style="width:100%;" id="image">
                                            	</div>
                                            </div>
                                            
                                            <div class="row mb-3" style="margin-top: 20px;">
                                                <div class="input-group">
									                <label class="input-group-btn">
									                    <span class="btn btn-primary">
									                        Upload <input type="file" name="mainUploadFile" id="file1" style="display: none;" multiple>
									                    </span>
									                </label>
									                <input type="text" id="img" class="form-control" value="${dto.img_path }" readonly>
								           		</div>
								           		<small>기본 이미지 : 사진크기 240*180</small>
                                            </div>
                                            
                                            <div style="margin-top: 10px;">
	                                            <button type="button" id="slideDBtn" onclick="slideDButton();" class="btn btn-primary">이미지 미리보기</button>	
	                                            <div class="burger-detail-container" id="burger-detail-container" style="display:none;">
	                                            	<img style="width:100%;" id="Dimage">
                                            	</div>
                                            </div>
                                            <div class="row mb-3" style="margin-top: 20px;">
                                                <div class="input-group">
									                <label class="input-group-btn">
									                    <span class="btn btn-primary">
									                        Upload <input type="file" name="subUploadFile" id="file2" style="display: none;" multiple>
									                    </span>
									                </label>
									                <input type="text" id="set_img" value="${dto.set_img_path }" class="form-control" readonly>
								           		</div>
								           		<small>디테일 이미지 : 사진크기 772*530</small>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><a class="btn btn-danger btn-block" id="submit" style="background-color: #0d6efd; border:solid 1px #0d6efd;">메뉴 등록</a></div>
                                                <div class="d-grid" style="padding-top: 5px"><a class="btn btn-danger btn-block" id="cancle" style="background-color: #0d6efd; border:solid 1px #0d6efd;">취	소</a></div>
                                            </div>
                                            <input id="seq" name="seq" type="hidden" value="${dto.seq }">
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/js/adminScripts.js"></script>
        <div>	
	        <p class="pageSetting" hidden>${pageSetting}</p>
	        <p class="menuType" hidden>${dto.type }</p>
	        <p class="category" hidden>${dto.category_code }</p>
     	</div>
    </body>
</html>
