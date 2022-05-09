<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>버거 등록</title>
        <link href="${pageContext.request.contextPath}/resources/css/adminStyles.css" rel="stylesheet" />
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=66de1c95d1d79be93897b045b9aca54a&libraries=services"></script>
    </head>
<script type="text/javascript">
	$(document).ready(function() {
		
		$(function(){
			var set = $('.pageSetting').text();
			if(set =="수정"){
				$('.card-header').children('h3').text("버거 수정");
				$('#submit').text("버거 수정");
				$('#burger-container').children().remove();
				$('#burger-detail-container').children().remove();
				var link ="https://edonaldfile.s3.ap-northeast-2.amazonaws.com/" ;
				var src = $('#burger_img').val();
				var srcSet = $('#burger_set_img').val();
				$('#burger-container').prepend('<img style="width:100%;" id="image" src="'+link+src+'">');
				$('#burger-detail-container').prepend('<img style="width:100%;" id="image" src="'+link+srcSet+'">');
			}
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
		
		$("#burger_name").change(function(){
			var code = "b_"+$("#burger_name").val();
			$("#burger_code").val(code); 
		})
		$("#cancle").on("click", function() {
			location.href = "burger.mdo";
		})
		$("#submit").on("click", function() {
			var regExp = /\s/g;
			if ($("#burger_name").val() == "") {
				alert("버거 이름을 입력하세요.");
				$("#burger_name").focus();
				return false;
			}
			if ($("#burger_kcal").val() == "") {
				alert("버거 칼로리를 입력하세요.");
				$("#burger_kcal").focus();
				return false;
			}
			if (regExp.test($("#burger_kcal").val())) {
				alert("공백을 사용할 수 없습니다.");
				$("#burger_kcal").focus();
				return false;
			}
			if ($("#burger_price").val() == "") {
				alert("버거 가격을 입력하세요.");
				$("#burger_price").focus();
				return false;
			}
			if (regExp.test($("#burger_price").val())) {
				alert("공백을 사용할 수 없습니다.");
				$("#burger_price").focus();
				return false;
			}
			if ($("#burger_img").val() == "") {
				alert("버거 이미지를 업로드하세요.");
				$("#burger_img").focus();
				return false;
			}
			if ($("#burger_set_img").val() == "") {
				alert("세트 이미지를 업로드하세요.");
				$("#burger_set_img").focus();
				return false;
			}
			if ($("#burger_allergy").val() == "") {
				alert("알레르기 정보를 입력하세요.");
				$("#burger_allergy").focus();
				return false;
			}
			alert("클릭");
			var url ="";
			var set = $('.pageSetting').text();
			if(set=="수정"){
				url = "/hadmin/burger/update";
			}else{
			 	url = "/hadmin/burger/insert";
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
			$('#slideBtn').text("버거 미리보기 취소");
		} else {
			img.attr("style", "display:none;");
			$('#slideBtn').text("버거 미리보기");
		}
	};
	function slideDButton() {
		var img = $('#burger-detail-container');
		if (img.attr("style") == "display:none;") {
			img.attr("style", "display:block;");
			$('#slideDBtn').text("버거 미리보기 취소");
		} else {
			img.attr("style", "display:none;");
			$('#slideDBtn').text("버거 미리보기");
		}
	};
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
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">버거 등록</h3></div>
                                    <div class="card-body">
                                        <form action="/hadmin/burger/insert" method="post" id="addBurger" enctype="multipart/form-data">
                                        	<div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="burger_code" name="burger_code" type="text" placeholder="Enter your first name" 
                                                        	style="height: calc(3.5rem + 50px);" value="${dto.burger_code }"/>
                                                        <label for="burger_code">버거 코드 - 단품(100~199),세트(200~299)</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input class="form-control" id="burger_name" name="burger_name" type="text" placeholder="Enter your first name" 
                                                        	style="height: calc(3.5rem + 20px);" value="${dto.burger_name }"/>
                                                        <label for="burger_name">버거 이름</label>
                                                    </div>
                                                </div>
                                             </div>
                                             <div class="row mb-3">
                                                 <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input class="form-control" id="burger_kcal" name="burger_kcal" type="text" placeholder="Enter your first name" 
                                                        	style="height: calc(3.5rem + 20px);" value="${dto.burger_kcal }"/>
                                                        <label for="burger_kcal">버거 칼로리</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input class="form-control" id="burger_price" name="burger_price" type="text" placeholder="Enter your first name" 
                                                        	style="height: calc(3.5rem + 20px);" value="${dto.burger_price }"/>
                                                        <label for="burger_price">버거 가격</label>
                                                    </div>
                                                </div>
                                            </div>
                                        	 <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                    	<select class="form-select" id="burger_type" name="burger_type" aria-label="Default select example"
                                                    		style="font-size: 13px; font-weight: 1000; padding-top: 1.1rem;">
                                                    		<option value="0">단품</option>
															<option value="1">세트</option>
															<option selected value="2">라지세트</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                 <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <select class="form-select" id="category_code" name="category_code" aria-label="Default select example"
                                                    		style="font-size: 13px; font-weight: 1000; padding-top: 1.1rem;">
                                                    		<option value="0">신제품</option>
															<option value="1">치즈</option>
															<option value="2">불고기</option>
															<option value="3">오리지날</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                             <div class="row mb-3">
                                             	<div class="col-md-12">
                                                   <div class="form-floating">
                                                       <input class="form-control" id="burger_allergy" name="burger_allergy" type="text" placeholder="Enter allergy information" 
                                                       	style="height: calc(3.5rem + 20px);" value="${dto.burger_allergy }"/>
                                                       <label for="burger_allergy">알레르기 정보</label>
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
									                <input type="text" id="burger_img" class="form-control" value="${dto.burger_img_path }" readonly>
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
									                <input type="text" id="burger_set_img" value="${dto.burger_set_img_path }" class="form-control" readonly>
								           		</div>
								           		<small>디테일 이미지 : 사진크기 772*530</small>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><a class="btn btn-danger btn-block" id="submit" style="background-color: #0d6efd; border:solid 1px #0d6efd;">버거 등록</a></div>
                                                <div class="d-grid" style="padding-top: 5px"><a class="btn btn-danger btn-block" id="cancle" style="background-color: #0d6efd; border:solid 1px #0d6efd;">취	소</a></div>
                                            </div>
                                            <input id="b_seq" name="b_seq" type="hidden" value="${dto.b_seq }">
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
	        <p class="burgerType" hidden>${dto.burger_type }</p>
     	</div>
    </body>
</html>
