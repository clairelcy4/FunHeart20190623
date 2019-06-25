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
<!-- <link rel="stylesheet" -->
<%-- 	href="${pageContext.request.contextPath}/vendor/css/font-awesome.min.css"> --%>

<!-- <script -->
<%-- 	src="${pageContext.request.contextPath}/javascript/jquery-1.9.1.js"></script> --%>
<%-- <c:set var='debug' value='true' scope='application' /> --%>

<nav id="fixedNav" class="navbar navbar-expand-md navbar-light">
	<!-- 左邊logo -->
	<a id="nav_logo" class="navbar-brand" href="/eFunHeart/index.jsp"><img
		src="${pageContext.request.contextPath}/vendor/images/00_0_FunHeartLogo.svg"
		alt=""></a>
	<div class="navRight">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<!-- 右邊選單 -->
		<div class="nav_menu collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">

				<li class="nav-item active"><a href="/eFunHeart/index.jsp"
					class="nav_menu_cell nav-link"> <img class="nav-item_img"
						src="${pageContext.request.contextPath}/vendor/images/00_0_home.png">
						<p class="nav-menu_link_zh">首頁</p>
						<p class="nav-menu_link_en">HOME</p> <span class="sr-only">(current)</span>
				</a></li>

				<li class="nav-item"><a href="/eFunHeart/_a4_about/About.jsp"
					class="nav_menu_cell nav-link"> <img class="nav-item_img"
						src="${pageContext.request.contextPath}/vendor/images/00_1_about.png">
						<p class="nav-menu_link_zh">關於Fun心玩</p>
						<p class="nav-menu_link_en">ABOUT</p>
				</a></li>
<!-- 				<li class="nav-item"><a href="/eFunHeart/_a5_news/News.jsp" -->
<!-- 					class="nav_menu_cell nav-link"> <img class="nav-item_img" -->
<%-- 						src="${pageContext.request.contextPath}/vendor/images/00_2_news.png"> --%>
<!-- 						<p id="nav-item_FunHeart" class="nav-menu_link_zh">最新消息</p> -->
<!-- 						<p class="nav-menu_link_en">NEWS</p> -->
<!-- 				</a></li> -->
				<li class="nav-item"><a
					href="<c:url value='/_a1_activity/DisplayActivities.do' />"
					class="nav_menu_cell nav-link"> <img class="nav-item_img"
						src="${pageContext.request.contextPath}/vendor/images/00_3_bills.png">
						<p class="nav-menu_link_zh">記帳</p>
						<p class="nav-menu_link_en">BILLS</p>
				</a> <!-- 						<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink"> -->
					<!-- 							<a class="dropdown-item" href="#">新增帳單</a> --> <%-- 							<a class="dropdown-item" href="<c:url value='/_a1_activity/DisplayActivities.do' />">查看帳單</a> --%>
					<%-- 				     		<a class="dropdown-item" href="<c:url value='/_a2_payBack/DisplayPayBack.do' />">帳單結算</a> --%>
					<!-- 						</div> --></li>


				<li class="nav-item"><a href="/eFunHeart/_a6_share/share.jsp"
					class="nav_menu_cell nav-link"> <img class="nav-item_img"
						src="${pageContext.request.contextPath}/vendor/images/00_6_share.png">
						<p class="nav-menu_link_zh">分享</p>
						<p class="nav-menu_link_en">SHARE</p>
				</a></li>



				<!-- 					<li class="nav-item dropdown"> -->
				<!-- 						<a href="" class="nav_menu_cell nav-link dropdown-toggle" role="button" -->
				<!-- 							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> -->
				<%-- 							<img class="nav-item_img" src="${pageContext.request.contextPath}/vendor/images/00_6_share.png"> --%>
				<!-- 							<p class="nav-menu_link_zh">分享</p> -->
				<!-- 							<p class="nav-menu_link_en">SHARE</p> -->
				<!-- 						</a> -->
				<!-- 						<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink"> -->
				<!-- 							<a class="dropdown-item" href="#">新增文章</a> -->
				<!-- 							<a class="dropdown-item" href="#">搜尋文章</a> -->
				<!-- 						</div> -->
				<!-- 					</li> -->
				<!-- 					<li class="nav-item dropdown"> -->
				<!-- 						<a href="" class="nav_menu_cell nav-link dropdown-toggle" role="button" -->
				<!-- 						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> -->
				<%-- 							<img class="nav-item_img" src="${pageContext.request.contextPath}/vendor/images/00_7_shopping.png"> --%>
				<!-- 							<p class="nav-menu_link_zh">採買</p> -->
				<!-- 							<p class="nav-menu_link_en">SHOP</p> -->
				<!-- 						</a> -->
				<!-- 						<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink"> -->
				<!-- 							<a class="dropdown-item" href="#">採買逛逛</a> -->
				<!-- 							<a class="dropdown-item" href="#">搜尋好物</a> -->
				<!-- 							<a class="dropdown-item" href="#">購物車</a> -->
				<!-- 							<a class="dropdown-item" href="#">結帳</a> -->
				<!-- 						</div> -->
				<!-- 					</li> -->
				<li class="nav-item dropdown"><a href=""
					class="nav_menu_cell nav-link dropdown-toggle" role="button"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<img class="nav-item_img"
						src="${pageContext.request.contextPath}/vendor/images/00_8_member.png">
						<p class="nav-menu_link_zh">會員</p>
						<p class="nav-menu_link_en">MEMBER</p>
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item"
							href="<c:url value='/_01_register/register.jsp' />"
							<c:if test="${!empty LoginOK}">
					     			onclick="return false;"
					     		</c:if>>註冊</a>
						<a class="dropdown-item"
							href="<c:url value='/_02_login/login.jsp' />"
							<c:if test="${!empty LoginOK}">
							     	onclick="return false;"
							     </c:if>>登入</a>
						<a class="dropdown-item"
							href="<c:url value='/_a3_buddyList/DisplayFriends.do' />">好友列表</a>
						<a class="dropdown-item"
							href="<c:url value='/_02_login/logout.jsp'/>"
							<c:if test="${empty LoginOK}">
				     				onclick="return false;"
				     			</c:if>>登出</a>
					</div></li>
			</ul>
		</div>
	</div>
</nav>

<a href="#section-space">
	<div class="MyPage_button MyPage_button_open">
		<span class="MyPage_button_text" style="font-size: 16px;">TOP</span>
	</div>
	<div class="MyPage_button MyPage_button_twinkle"></div>
</a>
<!--MyPage_button我的頁面-->
<!-- MyPage_button_CLOSE -->
<!-- <div class="MyPage_button MyPage_button_open"> -->
<!-- 	<span class="MyPage_button_text">MY</span> <span -->
<!-- 		class="MyPage_button_text">PAGE</span> -->
<!-- </div> -->


<!-- <!-- MyPage頁面 -->

<!-- <div class="MyPage_button MyPage_button_twinkle"></div> -->
<!-- <div class="MyPage_content"> -->
<!-- 	<div class="login_content"> -->
<!-- 		<!-- Login -->

<!-- 		<div class="login_content_LoginForm"> -->
<!-- 			<span class="login_content_LoginForm-logo"> <i -->
<!-- 				class="zmdi zmdi-landscape"></i> -->
<!-- 			</span> <span class="login_content_LoginForm-title">LOGIN</span> -->
<!-- 			<div class="wrap-input100"> -->
<!-- 				<input class="input100" type="text" name="username" -->
<!-- 					placeholder="Username"> <span class="focus-input100" -->
<!-- 					data-placeholder="&#xf207;"></span> -->
<!-- 			</div> -->
<!-- 			<div class="wrap-input100"> -->
<!-- 				<input class="input100" type="password" name="pass" -->
<!-- 					placeholder="Password"> <span class="focus-input100" -->
<!-- 					data-placeholder="&#xf191;"></span> -->
<!-- 			</div> -->
<!-- 			<div class="RememberMe_content"> -->
<!-- 				<input class="RememberMe_input" id="ckb1" type="checkbox" -->
<!-- 					name="remember-me"> <label class="RememberMe_label" -->
<!-- 					for="ckb1">記住我</label> -->
<!-- 			</div> -->
<!-- 			<div class="content-login_button"> -->
<!-- 				<button class="login_button">登入</button> -->
<!-- 			</div> -->
<!-- 			<span class="underLoginButton_content"> <a -->
<!-- 				class="underLoginButton_text underLoginButton_Register" href="#">註冊</a> -->
<!-- 				<span class="underLoginButton_text">|</span> <a -->
<!-- 				class="underLoginButton_text underLoginButton_ForgotPasspword" -->
<!-- 				href="#">忘記密碼</a> -->
<!-- 		</div> -->
<!-- 		<!-- ForgotPassword -->

<!-- 		<div class="login_content_ForgotPassword"> -->
<!-- 			<p> -->
<!-- 				忘記密碼了嗎？<br> 請輸入您的Email，我們將協助您重新設置密碼。<br> <br> -->
<!-- 			</p> -->
<!-- 			<div class="wrap-input100" data-placeholder=""> -->
<!-- 				<input class="input100" type="email" name="email" -->
<!-- 					placeholder="&emsp;&emsp;&emsp;&emsp;abc@gmail.com"> <span -->
<!-- 					class="focus-input100" data-placeholder="Email"></span> -->
<!-- 			</div> -->
<!-- 			<div class="content-login_button"> -->
<!-- 				<button class="login_button">送出</button> -->
<!-- 			</div> -->
<!-- 			<span class="underLoginButton_content"> <a -->
<!-- 				class="underLoginButton_text underLoginButton_Login" href="#">登入</a> -->
<!-- 				<span class="underLoginButton_text">|</span> <a -->
<!-- 				class="underLoginButton_text underLoginButton_Register" href="#">註冊</a> -->
<!-- 		</div> -->
<!-- 		<!-- Register -->

<!-- 		<div class="login_content_RegisterForm"> -->
<!-- 			<div class="wrap-input100"> -->
<!-- 				<input class="input100" type="text" name="username" -->
<!-- 					placeholder="&emsp;&emsp;&emsp;&emsp;Username"> <span -->
<!-- 					class="focus-input100" data-placeholder="帳號"></span> -->
<!-- 			</div> -->
<!-- 			<div class="wrap-input100"> -->
<!-- 				<input class="input100" type="password" name="pass" -->
<!-- 					placeholder="&emsp;&emsp;&emsp;&emsp;Password"> <span -->
<!-- 					class="focus-input100" data-placeholder="密碼"></span> -->
<!-- 			</div> -->
<!-- 			<div class="wrap-input100"> -->
<!-- 				<input class="input100" type="text" name="LasttName" -->
<!-- 					placeholder="&emsp;&emsp;&emsp;&emsp;王"> <span -->
<!-- 					class="focus-input100" data-placeholder="姓氏"></span> -->
<!-- 			</div> -->
<!-- 			<div class="wrap-input100"> -->
<!-- 				<input class="input100" type="text" name="FirstName" -->
<!-- 					placeholder="&emsp;&emsp;&emsp;&emsp;小明"> <span -->
<!-- 					class="focus-input100" data-placeholder="名字"></span> -->
<!-- 			</div> -->
<!-- 			<div class="wrap-input100" data-placeholder=""> -->
<!-- 				<input class="input100" type="email" name="email" -->
<!-- 					placeholder="&emsp;&emsp;&emsp;&emsp;abc@gmail.com"> <span -->
<!-- 					class="focus-input100" data-placeholder="Email"></span> -->
<!-- 			</div> -->
<!-- 			<div class="wrap-input100"> -->
<!-- 				<input class="input100" type="file" name="memberPhoto"> <span -->
<!-- 					class="focus-input100" data-placeholder="頭像"></span> -->
<!-- 			</div> -->
<!-- 			<div class="content-login_button"> -->
<!-- 				<button class="login_button">註冊</button> -->
<!-- 			</div> -->
<!-- 			<span class="underLoginButton_content"> <a -->
<!-- 				class="underLoginButton_text underLoginButton_Login" href="#">已經註冊過了</a> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- 	<!-- MyPage_button_CLOSE -->

<!-- 	<span class="MyPage_button MyPage_button_close">&times;</span> <span -->
<!-- 		class="MyPage_button MyPage_button_twinkle MyPage_button_close_back"></span> -->
<!-- </div> -->

