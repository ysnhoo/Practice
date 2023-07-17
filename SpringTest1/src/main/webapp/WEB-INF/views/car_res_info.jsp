<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%--최신본 인증!--%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>해당 품목 상세보기</title>
	<link href="${pageContext.request.contextPath}/resources/css/common.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/car_res_info.css" rel="stylesheet">
<%-- 	<link href="${pageContext.request.contextPath}/resources/css/inc/top.css" rel="styleSheet"> --%>
<%-- 	<link href="${pageContext.request.contextPath}/resources/css/inc/footer.css" rel="styleSheet"> --%>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.0.js"></script>
</head>
<body>
	<header>
	<%--top 탑 활성화시 css도 살려야함--%>
<%-- <jsp:include page="../../../inc/top1.jsp"></jsp:include> --%>
	</header>
	<%--입력하지 않은 자료 보낼 때--%>
<%-- 		<input type="hidden" name="car_model" value="${map.car_info.car_model}"/> --%>
		
		<section id="sec_con" class="inr product_view">
		<div class="upperContainner">
		<%-- 슬라이드 쇼 --%>
			<div class="slide_wrap">
				<div class="slide_container">
					<div class="mySlides">
						<div class="numbertext">1&nbsp;&nbsp;/&nbsp;&nbsp;4</div>
						<img src="${pageContext.request.contextPath}/resources/upload/car/${map.car_info.car_file_path}/${map.car_info.car_file2}">
					</div>

					<div class="mySlides">
						<div class="numbertext">2&nbsp;&nbsp;/&nbsp;&nbsp;4</div>
						<img src="${pageContext.request.contextPath}/resources/upload/car/${map.car_info.car_file_path}/${map.car_info.car_file3}">
					</div>

					<div class="mySlides">
						<div class="numbertext">3&nbsp;&nbsp;/&nbsp;&nbsp;4</div>
						<img src="${pageContext.request.contextPath}/resources/upload/car/${map.car_info.car_file_path}/${map.car_info.car_file4}">
					</div>

					<div class="mySlides">
						<div class="numbertext">4&nbsp;&nbsp;/&nbsp;&nbsp;4</div>
						<img src="${pageContext.request.contextPath}/resources/upload/car/${map.car_info.car_file_path}/${map.car_info.car_file5}">
					</div>
					<a class="prev" onclick="plusSlides(-1)">❮</a> <a class="next"
						onclick="plusSlides(1)">❯</a>
				</div>

				<div class="row">
					<div class="column">
						<img class="demo cursor" src="${pageContext.request.contextPath}/resources/upload/car/${map.car_info.car_file_path}/${map.car_info.car_file2}"
							onclick="currentSlide(1)">
					</div>
					<div class="column">
						<img class="demo cursor" src="${pageContext.request.contextPath}/resources/upload/car/${map.car_info.car_file_path}/${map.car_info.car_file3}"
							onclick="currentSlide(2)">
					</div>
					<div class="column">
						<img class="demo cursor" src="${pageContext.request.contextPath}/resources/upload/car/${map.car_info.car_file_path}/${map.car_info.car_file4}"
							onclick="currentSlide(3)">
					</div>
					<div class="column">
						<img class="demo cursor" src="${pageContext.request.contextPath}/resources/upload/car/${map.car_info.car_file_path}/${map.car_info.car_file5}"
							onclick="currentSlide(4)">
					</div>
				</div>
			</div>
			<script>
			let slideIndex = 1;
			showSlides(slideIndex);

			function plusSlides(n) {
				showSlides(slideIndex += n);
			}

			function currentSlide(n) {
				showSlides(slideIndex = n);
			}

			function showSlides(n) {
				let i;
				let slides = document.getElementsByClassName("mySlides");
				let dots = document.getElementsByClassName("demo");
				if (n > slides.length) {
					slideIndex = 1
				}
				if (n < 1) {
					slideIndex = slides.length
				}
				for (i = 0; i < slides.length; i++) {
					slides[i].style.display = "none";
				}
				for (i = 0; i < dots.length; i++) {
					dots[i].className = dots[i].className
							.replace(" active", "");
				}
				slides[slideIndex - 1].style.display = "block";
				dots[slideIndex - 1].className += " active";
				}
			</script>
			<%-- 슬라이드쇼 끝 --%>
			
			
			<div class="view_info">

				<div class="view_cont">
					<p class="product_catrgory">홈 / 패션의류 / 남성의류 / 바지 / 팬츠 / 청바지 / 블랙야크 남성 기모바지 (33)</p>
					<div class="product_name">
						<h4>블랙야크 남성 기모바지 (33)</h4><span class="product_progress">예약중</span>
						<p>25,000원</p>
					</div>
					<div class="product_viewStatus">
					🕐&nbsp; 07-12&nbsp;&nbsp;&nbsp;&nbsp;👁‍🗨&nbsp; 10&nbsp;&nbsp;&nbsp;&nbsp;   ❤️&nbsp;  5
					</div>
					<div class="product_productStatus">
						상품 상태 : 중고<br>
						반품가능여부 : 불가<br>
						배송비 : 배송비 포함<br>
						거래지역 : 부산시 남구 대연동<br>
						거래 방법 : 안전페이, 직거래<br>
					</div>
					<div class="product_tag">
						#바지 #바지 #바지 #바지 #바지
					</div>
					<div class="button_array">
					<%-- 이후에 IF문 사용해서 찜 버튼 두개로 만들기(해제, 등록) --%>
					<a href="resPayment?car_idx=${map.car_idx}&res_rental_date=${map.res_rental_date}&res_return_date=${map.res_return_date}
                             &brc_rent_name=${map.brc_rent_name}&brc_return_name=${map.brc_return_name}" class="favorite_btn">
                    	♥ 찜 해제
                    </a>
                    <a href="resPayment?car_idx=${map.car_idx}&res_rental_date=${map.res_rental_date}&res_return_date=${map.res_return_date}
                             &brc_rent_name=${map.brc_rent_name}&brc_return_name=${map.brc_return_name}" class="chat_btn">
                    	1:1 대화톡
                    </a>
                    </div>
				</div>
			</div>
		</div>
		
	<div class="downContainner">

		<div class="view_more_info more_wrap_box">
			<p class="view_title">상품 정보</p>
			<div class="more_box">
				<div>
				<p>⚠️&nbsp;&nbsp;거래전 주의 사항</p>
					<br>
			판매자가 별도의 메신저로 결제링크를 보내거나 직거래(직접송금)을<br>
			유도하는 경우 사기일 가능성이 높으니 거래를 자제해 주시고<br>
				<span>중고나라 고객센터로 신고해주시기 바랍니다.</span>
				</div>
			</div>
			<div class="product_content">
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라쏼라
			쏼라쏼라쏼라쏼라
			</div>
		</div>
		
		
		<div class="seller_wrap more_wrap_box">

			<div class="seller_profile_wrap">
				<img class="seller_profile" src="${pageContext.request.contextPath}/resources/img/profile_m.png">
				<p class="seller_name">꾸미꾸미꾸</p>
				<p class="seller_Lv">브론즈 Lv1</p>
			</div>
			<div class="seller_products">
				<p class="seller_products_title">꾸미꾸미꾸님의 상품정보</p>
				<div class="more_product">
					<div>
						<img class="more_product_img" src="${pageContext.request.contextPath}/resources/img/first.jpg">
						<p class="more_product_name">사제 군장</p>
						<span>15,000원</span>
					</div>
					<div>
						<img class="more_product_img" src="${pageContext.request.contextPath}/resources/img/second.jpg">
						<p class="more_product_name">마우스</p>	
						<span>5,000원</span>
					</div>
					<div>
						<img class="more_product_img" src="${pageContext.request.contextPath}/resources/img/third.jpg">
						<p class="more_product_name">마우스2</p>
						<span>3,000원</span>
					</div>										
					<div class="review_wrap">
					<div class="view_tit_sec">
						<p class="view_tit">고객 리뷰</p>
						<a href="${pageContext.request.contextPath}/reviewList?pageNum=1&amount=&searchType=carModel&searchKeyword=${map.car_info.car_model}">더보기</a>
					</div>
					<div class="more_cont">
						<div class="rev_cont">
							<ul class=""> 
							 <c:forEach var="reviewListS" items="${map.reviewListS}">
								<li class="">
									<span class="write_s"><span>
														<!-- 별점 구현 -->
													<c:set var="starLank" value="5"/>
													 <c:choose>
				  											<c:when test="${starLank eq 0}">
																	<span>★</span>
															<span>★</span>
															<span>★</span>
															<span>★</span>
															<span>★</span>
				  											</c:when>
				  											<c:when test="${starLank eq 1}">
																	<span class="fill">★</span>
															<span>★</span>
															<span>★</span>
															<span>★</span>
															<span>★</span>
				  											</c:when>
				  											<c:when test="${starLank eq 2}">
																	<span class="fill">★</span>
															<span class="fill">★</span>
															<span>★</span>
															<span>★</span>
															<span>★</span>
				  											</c:when>
				  											<c:when test="${starLank eq 3}">
																	<span class="fill">★</span>
															<span class="fill">★</span>
															<span class="fill">★</span>
															<span>★</span>
															<span>★</span>
				  											</c:when>
				  											<c:when test="${starLank eq 4}">
																	<span class="fill">★</span>
															<span class="fill">★</span>
															<span class="fill">★</span>
															<span class="fill">★</span>
															<span>★</span>
				  											</c:when>
				 												 <c:otherwise>
				  												<span class="fill">★</span>
															<span class="fill">★</span>
															<span class="fill">★</span>
				  												<span class="fill">★</span>
															<span class="fill">★</span>
														 </c:otherwise>
													</c:choose>
													<!-- 별점 구현 -->
													</span></span>
									<span class="rev_name">&nbsp;&nbsp;&nbsp;&nbsp; 
									<c:set var="name"       value="${reviewListS.rev_name}" />
									<c:set var="totalLength" value="${fn:length(name) }" />
									<c:set var="first"      value="${fn:substring(name, 0, 1) }" />
									<c:set var="last"      value="${fn:substring(name, 2, totalLength) }" />
									<td>
										<c:if test="${!empty  name}">
											<c:out value="${first}*${last}"/>
										</c:if>
									</td>
									</span>
									<span class="rev_txt">${reviewListS.rev_content}</span>
									<span class="rev_txt_hobertext">${reviewListS.rev_content}</span>
								</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				</div>
			</div>
		</div>
	</div>
		
	</section>
	<footer>
	<%--footer 풋터 활성화 시 css도 살려야함--%>
<%-- 		<jsp:include page="../../../inc/footer.jsp"></jsp:include> --%>
	</footer>
</body>
</html>




