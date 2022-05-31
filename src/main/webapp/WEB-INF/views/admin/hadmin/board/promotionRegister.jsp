<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>배너 등록</title>
        <link href="/resources/css/adminStyles.css" rel="stylesheet" />
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=66de1c95d1d79be93897b045b9aca54a&libraries=services"></script>
    </head>
<script type="text/javascript">
 	$(document).ready(function(){
	 	$("#cancle").on("click",function(){ 
	   		
	   		 location.href = "banner.mdo";
	   	 })
	   	$("#submit").on("click",function(){
			 if($("#p_title").val()==""){
				 alert("프로모션 제목을 입력하세요.");
				 $("#pr_title").focus();
				 return false;
			 }
			 if($("#p_img").val()==""){
				 alert("프로모션 이미지를 업로드하세요.");
				 $("#p_img").focus();
				 return false;
			 }
			 
			 var url="/hadmin/promotionInsert.do";
			 
			 if($('#p_seq').val() != null){
				url ="/hadmin/promotionUpdate.do";
	 		 }
			 var form = $('#addPromotion')[0];
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
						alert("잘못된 프로모션입니다.");
					}
				})
		 });
	 	
 	 $(':file').on('fileselect', function(event, numFiles, label) {

          var input = $(this).parents('.input-group').find(':text'),
              log = numFiles > 1 ? numFiles + ' files selected' : label;

          if( input.length ) {
              input.val(log);
          }
          var tmppath = URL.createObjectURL(event.target.files[0]);
			$('#image').attr("src", tmppath);
      });
 	  $(document).on('change', ':file', function() {
 	     var input = $(this),
 	         numFiles = input.get(0).files ? input.get(0).files.length : 1,
 	         label = input.val();
 	     input.trigger('fileselect', [numFiles, label]);
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
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">프로모션 등록</h3></div>
                                    <div class="card-body">
                                        <form action="bannerRegister.mdo" method="post" id="addPromotion" name="addPromotion" enctype="multipart/form-data">
                                        	<div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="p_title" name="p_title" type="text" placeholder="Enter your first name" 
                                                        	style="height: calc(3.5rem + 20px);" value="${promotion.p_title }"/>
                                                        <label for="p_title">프로모션 제목</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div style="display: inline-flex; margin-top: 10px;">
	                                            <button type="button" id="slideBtn" onclick="slideButton();" class="btn btn-primary">프로모션 미리보기</button>
	                                            <div class="dessert-container" id="burger-container" style="display:none;">
	                                            	<img style="width:100%;" id="image" src="${promotion.p_img }">
                                            	</div>	
	                                
                                            </div>
                                            <div class="row mb-3">
                                                <div class="input-group">
									                <label class="input-group-btn">
									                    <span class="btn btn-primary">
									                        Upload <input type="file" name="mainUploadFile" id="mainUploadFile" style="display: none;" multiple>
									                    </span>
									                </label>
								                <input type="text" id="p_img" class="form-control" value="${promotion.p_img }" readonly>
								            </div>
								            <c:if test="${empty promotin.p_title}">
								            <div class="form-check text-center">
			                            		<label>
			                            			진행중
											  		<input class="form-check-input sub_to" type="checkbox" id="p_status" name="p_status" 
											  		<c:choose>
												  		<c:when test="${promotion.p_status eq 1}">value="1" checked="checked"</c:when>
												  		<c:otherwise>value="1"</c:otherwise>
											  		</c:choose> />
										  		</label>
											</div>
								            
								            </c:if>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><a class="btn btn-danger btn-block" id="submit" style="background-color: #0d6efd; border:solid 1px #0d6efd;">프로모션 등록</a></div>
                                                <div class="d-grid" style="padding-top: 5px"><a class="btn btn-danger btn-block" id="cancle" style="background-color: #0d6efd; border:solid 1px #0d6efd;">취	소</a></div>
                                            </div>
                                            <c:if test="${!empty promotion.p_seq }">
                                            	<input type="hidden" id="p_seq" name="p_seq" value="${promotion.p_seq }"/>
                                            </c:if>
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
        <script src="${pageContext.request.contextPath}/resources/js/banner.js"></script>
         <script>
var slider = {
		setup : function( target )
		{
			var sTarget = target.find('.swiper');
			sTarget.addClass('swiper-container');
			sTarget.find('>ul , >ol').addClass('swiper-wrapper');
			sTarget.find('>ul>li , >ol>li').addClass('swiper-slide');

			if( target.find('.swiper').data('swipe') )
			{
				target.find('.swiper').data('swipe').destroy();
				target.find('.indicator .bar').stop().css('width','0');
				// target.find('.slide-invisible-blank').remove();
			}

			var opt = {};
			if( target.hasClass('basicSwiper') )
			{
				// console.log('-- basic -')
				var transitionVisible = function()
				{
					bar.stop().css('width','0');
					target.find('.swiper-slide').css('visibility','visible');
				}
				var transitionHidden = function()
				{
					target.find('.swiper-slide').css('visibility','hidden');
					if( target.hasClass('swiperType02') ){
						target.find('.swiper-slide-next').css('visibility','visible');
					}
					target.find('.swiper-slide-active').css('visibility','visible');
				}
				opt = {
					delay : 5000 , 
					loop: true,
					navigation : {
						nextEl: target.find('.next'),
						prevEl: target.find('.prev'),
					},
					on : {
						transitionEnd : function(  )
						{
							if( target.find('.indicator button').hasClass('pause') ){
								nextH();
							}
							transitionHidden();
						},
						sliderMove 	:	transitionVisible,
						// slideChange 	:	transitionVisible,
						transitionStart	:	transitionVisible,
						// touchStart		:	transitionVisible
					}
				}
				// 다른 타입
				if( target.hasClass('swiperType02') ){
					opt.slidesPerView = 2;
					opt.slidesPerGroup =  2;
					opt.spaceBetween = 50;
				}

				var bar			= target.find('.indicator .bar');
				var inButton	= target.find('.indicator button');
				inButton.off().addClass('pause')

				inButton.on('click' , function(evt)
				{
					evt.preventDefault();
					if( $(this).hasClass('pause')  ){
						bar.stop().css('width','0');
						$(this).removeClass('pause');
						$(this).text('재생');
					}else{
						$(this).addClass('pause');
						$(this).text('정지');
						nextH();
					}
				});

				inButton.on('keydown',function( evt )
				{
					if( !evt.shiftKey ){
						nextH();
					}
					
				});
				inButton.on('keyup',function( evt )
				{
					if( evt.shiftKey ){
						transitionVisible();
						transitionHidden();
					}
				});

				target.find('.prev').off().on('keyup',function( evt ){
					if( evt.shiftKey ){
						nextH();
					}else{
						transitionVisible();
						transitionHidden();
					}
				})
			}
		}
	}
</script>
    </body>
</html>
