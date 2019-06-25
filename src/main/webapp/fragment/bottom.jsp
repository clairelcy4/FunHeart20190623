<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pure-min.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/grids-responsive-min.css"
	type="text/css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/vendor/css/style.css">
<!-- <script -->
<%-- 	src="${pageContext.request.contextPath}/javascript/jquery-1.9.1.js"></script> --%>
<%-- <c:set var='debug' value='true' scope='application' /> --%>


<footer>
	<div class="footers">
		<!-- footer網站地圖 -->
		<div class="footer_top">
			<a href="/eFunHeart/_a4_about/About.jsp" class="footer_link footer_link_left"><span>關於Fun心玩</span></a>
			<span class="footer_link_span">|</span> 
<!-- 			<a href="/eFunHeart/_a5_news/News.jsp" -->
<!-- 				class="footer_link footer_link_left"><span>最新消息</span></a> <span -->
<!-- 				class="footer_link_span">|</span>  -->
				<a href="<c:url value='/_a1_activity/DisplayActivities.do' />"
				class="footer_link footer_link_left"><span>記帳</span></a> <span
				class="footer_link_span">|</span>
			<!-- 				<a href="" -->
			<!-- 				class="footer_link footer_link_left"><span>揪團</span></a> <span -->
			<!-- 				class="footer_link_span">|</span> <a href="" -->
			<!-- 				class="footer_link footer_link_left"><span>互助</span></a> <span -->
			<!-- 				class="footer_link_span">|</span>  -->
			<a href=""
				class="footer_link footer_link_left"><span>分享</span></a> <span
				class="footer_link_span">|</span> <a href=""
				class="footer_link footer_link_left"><span>購物</span></a>
		</div>
		<div class="footer_middle">
			<div class="footer_buttons">
				<a href="" class="footer_button">
					<div class="footer_button_background"></div>
					<div class="footer_button_text footer_button_text_main">LANGUAGE</div>
					<div class="footer_button_text footer_button_text_hover">
						<span>L</span><span>A</span><span>N</span><span>G</span><span>U</span><span>A</span><span>G</span><span>E</span>
					</div>
				</a>
				<div class="footer_button_space"></div>
				<a href="" class="footer_button">
					<div class="footer_button_background"></div>
					<div class="footer_button_text footer_button_text_main">常見問題</div>
					<div class="footer_button_text footer_button_text_hover">
						<span>常</span><span>見</span><span>問</span><span>題</span>
					</div>
				</a>
				<div class="footer_button_space"></div>
				<a href="" class="footer_button">
					<div class="footer_button_background"></div>
					<div class="footer_button_text footer_button_text_main">聯繫我們</div>
					<div class="footer_button_text footer_button_text_hover">
						<span>聯</span><span>繫</span><span>我</span><span>們</span>
					</div>
				</a>
			</div>
		</div>
		<div class="footer_bottom">
			<div class="footer_policy">
				<a href="" class="footer_bottom_text">網站條款</a>
			</div>
			<div class="footer_copyright footer_bottom_text">COPYRIGHT ©
				2019 FunHeart</div>
		</div>
	</div>

</footer>

