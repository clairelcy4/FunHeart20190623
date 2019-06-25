<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>放心玩-首頁</title>
<!-- css -->
<link rel="stylesheet" type="text/css"
	href="./vendor/fonts/iconic/css/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css"
	href="./vendor/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./vendor/css/style.css">
<link rel="stylesheet" href="./vendor/css/about.css">
<!-- css_owl.carousel -->
<link rel="stylesheet" type="text/css"
	href="./vendor/css/owl.carousel.min.css">
<link rel="stylesheet" type="text/css"
	href="./vendor/css/owl.theme.default.css">
<!-- css_OverlayScrollbars -->
<link rel="stylesheet" type="text/css"
	href="./vendor/css/OverlayScrollbars.css">
<!-- css_animate bounceIn -->
<link rel="stylesheet" type="text/css" href="./vendor/css/animate.css">
</head>

<body>
	<jsp:include page="/fragment/top.jsp" />
	<!-- 預留section高度防止置頂時被遮住 -->
	<section id="section-space"></section>
	<!-- 	<div style="padding-left: 50px"> -->
	<%-- 		<span class="pure-form-message-inline">${AdminLoginOKString}${OssanLoginOK}${logoutMessage}${MsgOK.InsertOK}</span> --%>
	<!-- 			// 顯示MsgOK.InsertOK後，就要立刻移除，以免每次回到首 頁都會顯示新增成功的訊息 -->
	<!-- 			session.removeAttribute("MsgOK"); -->
	<!-- 			session.removeAttribute("OssanLoginOK"); -->
	<!-- 	</div> -->

	<video width="100%" autoplay loop>
		<source src="./vendor/images/about/funHeart_about.mp4"
			type="video/mp4">
		Your browser does not support HTML5 video.
	</video>
	<!-- 		iframe會多出space因為自帶body是黑色 -->
	<!-- 		<div class="embed-responsive embed-responsive-16by9"> -->
	<!-- 			<iframe class="embed-responsive-item" -->
	<!-- 				src="../vendor/images/about/funHeart_about.mp4" frameborder="0" -->
	<!-- 				marginwidth="0" marginheight="0" hspace="0" vspace="0" -->
	<!-- 				frameborder="0" scrolling="no"> </iframe> -->
	<!-- 		</div> -->

	<!-- 	<div class="text_box margin: 0px auto;" style="background: url('./vendor/images/about/about_second_background.jpeg'); height:100%;"> -->
	<div class="text_box margin: 0px auto;" >
		<div class="col justify-content-center">
			<div class="col focus text-center p-3 wow flipInY">
				<h1 id="about_title" class="mb-4">
					Fun心玩 你的旅行好夥伴</h1>
				<h2 id="about_text1" class="about_text pb-2">與我們一起開啟新旅程</h2>
				<h2 id="about_text2" class="about_text pb-1">探索旅行體驗的更多可能</h2>
			</div>
		</div>
	</div>

	<!-- sections -->
	<section class="HOME_content">

		<!-- first_section!!!!!!! NEWS & ABOUT -->
		<div id="first_section" class="section_content">
			<!--slider-->
			<div id="news_slideBoard">
				<div id="carouselExampleIndicators"
					class="carousel slide container coverflow" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item news_slider_image active">
							<img src="./vendor/images/news_slider_image/01_BlueCave.jpg"
								class="d-block w-100" alt="...">
							<div class="carousel-caption d-md-block">
								<h5>青之洞窟潛水</h5>
								<p>美麗海水族館門票與青之洞窟潛水套餐超值方案！提供免費水中攝影＆魚飼料。</p>
							</div>
						</div>
						<div class="carousel-item news_slider_image">
							<img
								src="./vendor/images/news_slider_image/02_RyukyuMuraMatusri.jpg"
								class="d-block w-100" alt="...">
							<div class="carousel-caption d-md-block">
								<h5>2019琉球村夏日祭BBQ食放題</h5>
								<p>享受沖繩的夏夜的沖繩料理！豐盛自助式晚餐後有表演秀、遊戲大會、螢火蟲、星座觀察等行程♪</p>
							</div>
						</div>
						<div class="carousel-item news_slider_image">
							<img
								src="./vendor/images/news_slider_image/03_StarlightCruise.jpg"
								class="d-block w-100" alt="...">
							<div class="carousel-caption d-md-block">
								<h5>石垣島滿天星斗~銀河郵輪~</h5>
								<p>石垣島為日本最多可以觀星的地點，可見84種星座。1至6月期間可以看見「南十字星」。</p>
							</div>
						</div>
						<div class="carousel-item news_slider_image">
							<img
								src="./vendor/images/news_slider_image/04_RyukyuAmazingNight.jpg"
								class="d-block w-100" alt="...">
							<div class="carousel-caption d-md-block">
								<h5>Ryukyu Amazing Night</h5>
								<p>不需要語言！不需要沖繩文化知識! 體驗「CULTURE」×「MUSIC」合而為一的速度感</p>
							</div>
						</div>
						<div class="carousel-item news_slider_image">
							<img
								src="./vendor/images/news_slider_image/05_yotsutake_kokusai_main1.jpg"
								class="d-block w-100" alt="...">
							<div class="carousel-caption d-md-block">
								<h5>琉球舞蹈 & 涮涮鍋</h5>
								<p>這裡不僅可以感受到琉球王國的風情，更能享受到古老的琉球傳統料理。</p>
							</div>
						</div>
						<div class="carousel-item news_slider_image">
							<img src="./vendor/images/news_slider_image/06_TowedUmbrella.jpg"
								class="d-block w-100" alt="...">
							<div class="carousel-caption d-md-block">
								<h5>【超優惠方案】拖曳傘+海中漫步♪</h5>
								<p>能同時眺望絕美景色的拖曳傘和享受海底世界的海中漫步的套裝行程！</p>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<!--about-->
			<div id="about">
				<div class="homeSection_introduction introduction_space">
					<div class="homeSection_text_content">
						<h1 class="homeSection_text homeSection_title">旅遊放心也FUN心</h1>
						<h3 class="homeSection_text homeSection_subtitle">簡單 · 方便 ·
							有趣</h3>
						<p class="homeSection_text homeSection_content">
							出門旅遊看似微不足道的疑難雜症<br> 消費分帳、旅遊資訊交流輕鬆搞定<br>
						</p>
					</div>
					<div>
						<a class="button_ReadMore" href="_a4_about/About.jsp">了解更多
							&#8594;</a>
						<!-- 						<button type="button" class="button_ReadMore" -->
						<%-- 							onclick="javascript:location.href= --%>
						<%-- 	             	'./_a1_activity/DisplayActivities.do?activityNo=${activityBean.activityNo}'">了解更多 --%>
						<!-- 							&#8594;</button> -->
					</div>
				</div>
				<div id="about_image">
					<img src="./vendor/images/traveller.svg" id="about_traveller">
				</div>
			</div>
		</div>


		<div class="section_hr section_content"></div>


		<!-- second_section!!!!!!! BILLS -->
		<div id="second_section" class="section_content">
			<img src="./vendor/images/bills_cancel.svg" alt="" class="bills_bad">
			<img src="./vendor/images/BILLS_Calculator.svg" alt=""
				class="bills_imageCalculator introduction_space"> <img
				src="./vendor/images/bills_checked.svg" alt="" class="bills_good">
			<img src="./vendor/images/bills_mobile-app.svg" alt=""
				class="bills_imageSmartphone introduction_space">
			<div class="homeSection_introduction introduction_space">
				<div class="homeSection_text_content">
					<h1 class="homeSection_text homeSection_title">輕鬆記帳</h1>
					<h3 class="homeSection_text homeSection_subtitle">
						跟分帳的不愉快說掰掰&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
					<p class="homeSection_text homeSection_content">
						清晰易懂的操作介面<br> 複雜的分帳結果一目了然<br>
					</p>
				</div>
				<div>
					<button type="button" class="button_ReadMore"
						onclick="javascript:location.href=
	             	'./_a1_activity/DisplayActivities.do?activityNo=${activityBean.activityNo}'">記帳去
						&#8594;</button>
				</div>
			</div>
		</div>


		<div class="section_hr section_content"></div>


		<!-- third_section!!!!!!! SHARING -->
		<div id="third_section" class="section_content">
			<div class="homeSection_introduction introduction_space">
				<div class="homeSection_text_content">
					<h1 class="homeSection_text homeSection_title">分享交流</h1>
					<h3 class="homeSection_text homeSection_subtitle">旅行趣聞 · 揪團結伴
						· Q&A</h3>
					<p class="homeSection_text homeSection_content">
						彼此分享旅途樂趣新知<br> 合作揪團享受優惠與解決困難<br>
					</p>
				</div>
				<div>
					<button type="button" class="button_ReadMore">新增文章 &#8594;</button>
				</div>
				<div class="share_search_form">
					<div class="share_search_form_item">
						<label for="share_Keyword" class="share_search_form_title">關鍵字搜尋</label>
						<input type="search" name="Keyword"
							class="share_search_form_title_box"
							style="box-shadow: inset 1px 1px 3px #ccc;" placeholder="搜尋">
					</div>
					<div class="share_search_form_item searchBox">
						<div>
							<label for="share_Area" class="share_search_form_title">地區</label>
							<select name="share_Area" class="share_Area">
								<option value=""></option>
								<option value="沖繩">沖繩</option>
								<option value="關東">關東</option>
								<option value="關西">關西</option>
								<option value="東北">東北</option>
								<option value="北海道">北海道</option>
							</select>
						</div>
						<div class="share_search_buttons">
							<button class="share_search_button button_ReadMore">搜尋文章
								&#8594;</button>
						</div>
					</div>
				</div>
			</div>
			<div class="share_posts">
				<!-- List group -->
				<div class="list-group" id="share_nav-tabContent" role="tablist">
					<a
						class="share_hotest_title list-group-item-light list-group-item-action show active"
						data-toggle="list" href="#hotestSharing" role="tab">分享</a> <a
						class="share_hotest_title list-group-item-light list-group-item-action show"
						data-toggle="list" href="#hotestGroupbuying" role="tab">揪團</a> <a
						class="share_hotest_title list-group-item-light list-group-item-action show"
						data-toggle="list" href="#hotesthelping" role="tab">互助</a>
				</div>
				<!-- Tab panes -->
				<div class="tab-content">
					<!-- 分享 -->
					<div class="tab-pane share_hotest_content fade show active"
						id="hotestSharing" role="tabpanel">
						<ul class="list-unstyled">
							<li class="media my-4"><img
								src="./vendor/images/news_slider_image/share_沖繩石垣島.jpg"
								class="share_hotest_listImage" alt="...">
								<div class="media-body share_hotest_list">
									<h4 class="mt-0 mb-1">[沖繩石垣島]</h4>
									郵輪旅行的，因為有吃、有玩、有表演，也滿適合帶老人家跟小朋友一起旅行，所有的設施活動都在船上。這次搭盛世公主號很豪華，在裡面感覺就像貴婦般的生活，總之有興趣的朋友有機會來體驗吧！
								</div></li>
							<li class="media my-4"><img
								src="./vendor/images/news_slider_image/share_日本北海道.jpg"
								class="share_hotest_listImage" alt="...">
								<div class="media-body share_hotest_list">
									<h4 class="mt-0 mb-1">[北海道旭川市]</h4>
									推薦喜歡貓咪的朋友 到了旭川可以到Vii cafe 品嚐甜點及貓咪唷！ 店裡有四隻貓，雖然如此但是進去完全沒有味道
									而且貓完全不會造成客人的困擾 甜點也算用心製作，真心推薦。
								</div></li>
							<li class="media my-4"><img
								src="./vendor/images/news_slider_image/share_沖繩努卡佳.webp"
								class="share_hotest_listImage" alt="...">
								<div class="media-body share_hotest_list">
									<h4 class="mt-0 mb-1">[沖繩努卡佳]</h4>
									努卡佳STARDUST 閃耀新光聖誕節🎄 亮晶晶的好夢幻好美麗~ 入場券可以免費兌換一杯飲品哦 提供給彭友參考
									展期：11/2～2/28 我的購票方式：全家超商 金額：1000日圓/人
								</div></li>
							<li class="media my-4"><img
								src="./vendor/images/news_slider_image/share_沖繩石垣島.jpg"
								class="share_hotest_listImage" alt="...">
								<div class="media-body share_hotest_list">
									<h4 class="mt-0 mb-1">[沖繩石垣島]</h4>
									郵輪旅行的，因為有吃、有玩、有表演，也滿適合帶老人家跟小朋友一起旅行，所有的設施活動都在船上。這次搭盛世公主號很豪華，在裡面感覺就像貴婦般的生活，總之有興趣的朋友有機會來體驗吧！
								</div></li>
							<li class="media my-4"><img
								src="./vendor/images/news_slider_image/share_日本北海道.jpg"
								class="share_hotest_listImage" alt="...">
								<div class="media-body share_hotest_list">
									<h4 class="mt-0 mb-1">[北海道旭川市]</h4>
									推薦喜歡貓咪的朋友 到了旭川可以到Vii cafe 品嚐甜點及貓咪唷！ 店裡有四隻貓，雖然如此但是進去完全沒有味道
									而且貓完全不會造成客人的困擾 甜點也算用心製作，真心推薦。
								</div></li>
							<li class="media my-4"><img
								src="./vendor/images/news_slider_image/share_沖繩努卡佳.webp"
								class="share_hotest_listImage" alt="...">
								<div class="media-body share_hotest_list">
									<h4 class="mt-0 mb-1">[沖繩努卡佳]</h4>
									努卡佳STARDUST 閃耀新光聖誕節🎄 亮晶晶的好夢幻好美麗~ 入場券可以免費兌換一杯飲品哦 提供給彭友參考
									展期：11/2～2/28 我的購票方式：全家超商 金額：1000日圓/人
								</div></li>

						</ul>
					</div>
					<!-- 揪團 -->
					<div class="tab-pane share_hotest_content fade"
						id="hotestGroupbuying" role="tabpanel">
						<ul class="list-unstyled">
							<li class="media my-4"><img
								src="./vendor/images/news_slider_image/640_4df1fed9d2fd62a65f3ea59a950ccf0c.jpg"
								class="share_hotest_listImage" alt="...">
								<div class="media-body share_hotest_list">
									<h4 class="mt-0 mb-1">[潛水四人8折-三缺一]</h4>
									BESTDIVE船潛套餐-搭船靠近青洞去玩水，搭船大約5-10分鐘， 抵達青洞外圍大約200公尺遠的距離，
									從船上跳下水，往青洞游去。需20歲以上唷！
								</div></li>
							<li class="media my-4"><img
								src="./vendor/images/news_slider_image/7148d31e128161554cd13aad7e6d987f.jpg"
								class="share_hotest_listImage" alt="...">
								<div class="media-body share_hotest_list">
									<h4 class="mt-0 mb-1">[沖繩自駕揪車友]</h4>
									租車業者：OTS，預計5天租賃HA級別的5人座車，目前我們2個男生希望再揪2人，其中1人會開車比較好。
								</div></li>
							<li class="media my-4"><img
								src="./vendor/images/news_slider_image/a0000770_main.jpg"
								class="share_hotest_listImage" alt="...">
								<div class="media-body share_hotest_list">
									<h4 class="mt-0 mb-1">[札幌廉航團購]</h4>
									Peach廉價航空的四人團購專案，還缺1人可用優惠價8折，高雄-札幌機場來回。航班去程時間為2019.08.03的紅眼班機，回程是2019.08.09早上9:30.
								</div></li>
						</ul>
					</div>
					<!-- 互助 -->
					<div class="tab-pane share_hotest_content fade" id="hotesthelping"
						role="tabpanel">
						<ul class="list-unstyled">
							<li class="media my-4"><img
								src="./vendor/images/news_slider_image/share手機遺失.jpg"
								class="share_hotest_listImage" alt="...">
								<div class="media-body share_hotest_list">
									<h4 class="mt-0 mb-1">[手機遺失怎麼處理比較好]</h4>
									不好意思 打擾大家 我有手機遺失在宜野灣 off house 手機款式型號：I phone XR
									（紅色、藍色保護框、背蓋有心電圖的圖案） 可是今天晚上就要離開沖繩了 我現在人在店裡，不知道怎麼辦
								</div></li>
							<li class="media my-4"><img
								src="./vendor/images/news_slider_image/share飯店加價.jpg"
								class="share_hotest_listImage" alt="...">
								<div class="media-body share_hotest_list">
									<h4 class="mt-0 mb-1">[帶1歲小孩入住飯店會被要求加價嗎]</h4>
									請問一個問題.. 我們兩大3小（分別是8歲3歲1歲）， 基本上1歲的小孩，是免費的。 請問如果我們訂房時，
									以2大2小（8歲跟3歲）訂房， 但是入住時，帶著1歲的小孩一起， 會被飯店要求加價嗎？ 這幾天發現，因為人數多，
									房價真的很不一樣，感覺貴很多..
								</div></li>
							<li class="media my-4"><img
								src="./vendor/images/news_slider_image/share那霸發燒.jpg"
								class="share_hotest_listImage" alt="...">
								<div class="media-body share_hotest_list">
									<h4 class="mt-0 mb-1">[在沖繩那霸小孩突然發燒]</h4>
									不好意思發問ㄧ下，小孩發燒，剛已吃過退燒藥水，現在在休息，現在怕吃了退燒藥水沒有用的話，想帶他去看醫生，但現在也很晚了，想問各位有什麼方法跟經驗的嗎？住在東橫inn沖繩那霸奧羅摩町站前，感謝各位
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="section_hr section_content"></div>

		<!-- forth_section!!!!!!! SHOP -->
		<div id="forth_section" class="section_content">
			<div class="homeSection_introduction introduction_space">
				<div class="homeSection_text_content">
					<h1 class="homeSection_text homeSection_title">旅行好物</h1>
					<h3 class="homeSection_text homeSection_subtitle">這些小幫手為旅程加分</h3>
					<p class="homeSection_text homeSection_content">
						出遠門打包行李好糾結<br> 看這些好物能不能幫你省空間又好心情<br>
					</p>
				</div>
				<div>
					<button type="button" class="button_ReadMore">採買逛逛 &#8594;</button>
				</div>
				<div class="share_search_form">
					<div class="share_search_form_item">
						<label for="share_Keyword" class="share_search_form_title">關鍵字搜尋</label>
						<input type="search" name="Keyword"
							class="share_search_form_title_box"
							style="box-shadow: inset 1px 1px 3px #ccc;" placeholder="搜尋">
					</div>
					<div class="share_search_form_item searchBox">
						<div>
							<label for="share_Area" class="share_search_form_title">分類</label>
							<select name="share_Area" class="share_Area">
								<option value=""></option>
								<option value="收納" selected>收納</option>
								<option value="飲食">飲食</option>
								<option value="衣著">衣著</option>
								<option value="盥洗">盥洗</option>
								<option value="寢具">寢具</option>
								<option value="3C">3C</option>
								<option value="美妝保養">美妝保養</option>
								<option value="安全防護">安全防護</option>
								<option value="嬰幼兒">嬰幼兒</option>
								<option value="配件">配件</option>
							</select>
						</div>
						<div class="share_search_buttons">
							<button class="share_search_button button_ReadMore">搜尋好物
								&#8594;</button>
						</div>
					</div>
				</div>
			</div>
			<!--slider-->
			<div id="shop_slideBoard" class="owl-carousel owl-theme">
				<div class="card item">
					<img src="./vendor/images/shop/120PET慕斯分裝瓶 50ml.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">PET慕斯分裝瓶</h5>
						<p class="card-text">可壓出泡沫的慕斯分裝瓶。</p>
						<a href="#" class="btn">$120</a>
					</div>
				</div>
				<div class="card item">
					<img src="./vendor/images/shop/300攜帶掛鉤.jpg" class="card-img-top"
						alt="...">
					<div class="card-body">
						<h5 class="card-title">攜帶掛鉤</h5>
						<p class="card-text">可隨時固定於桌邊，吊掛包包等物品，附收納套。</p>
						<a href="#" class="btn">$300</a>
					</div>
				</div>
				<div class="card item">
					<img src="./vendor/images/shop/300滑翔傘布旅行分類可折收納袋 淺灰.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">可折收納袋(淺灰)</h5>
						<p class="card-text">可收納旅行途中所需鞋款的鞋袋，單支收納，節省空間。</p>
						<a href="#" class="btn">$300</a>
					</div>
				</div>
				<div class="card item">
					<img src="./vendor/images/shop/430護照夾(灰).jpg" class="card-img-top"
						alt="...">
					<div class="card-body">
						<h5 class="card-title">護照夾(灰)</h5>
						<p class="card-text">可整齊收納機票、護照、卡片、錢等重要物品的薄型護照夾。</p>
						<a href="#" class="btn">$430</a>
					</div>
				</div>
				<div class="card item">
					<img src="./vendor/images/shop/430護照夾(藍).jpg" class="card-img-top"
						alt="...">
					<div class="card-body">
						<h5 class="card-title">護照夾(藍)</h5>
						<p class="card-text">可整齊收納機票、護照、卡片、錢等重要物品的薄型護照夾。</p>
						<a href="#" class="btn">$430</a>
					</div>
				</div>
				<div class="card item">
					<img src="./vendor/images/shop/90壓克力分裝盒:5層.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">壓克力分裝盒:5層</h5>
						<p class="card-text">方便您整理或攜帶飾品、迴紋針等事務用品及藥品等。</p>
						<a href="#" class="btn">$90</a>
					</div>
				</div>
				<div class="card item">
					<img src="./vendor/images/shop/590微粒貼身靠枕.中細型 雜灰x白.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">微粒貼身靠枕(白)</h5>
						<p class="card-text">使用微粒子填充物與伸縮性佳的枕套。</p>
						<a href="#" class="btn">$590</a>
					</div>
				</div>
				<div class="card item">
					<img src="./vendor/images/shop/520吊掛盒型收納包(灰).jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">吊掛收納包(灰)</h5>
						<p class="card-text">攤開後即可懸吊於浴室掛鉤等處使用；可收納一般200ml化妝水大小的瓶罐。</p>
						<a href="#" class="btn">$520</a>
					</div>
				</div>
	</section>

	<!-- 引入共同的頁尾 -->
	<jsp:include page="/fragment/bottom.jsp" />

	<!-- bootstrap -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
		integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
		integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
		crossorigin="anonymous"></script>
	<!-- js_OverlayScrollbars -->
	<script src="./vendor/js/OverlayScrollbars.js"></script>
	<!-- js -->
	<script src="./vendor/jquery/jquery-3.3.1.min.js"></script>
	<script src="./vendor/js/main.js"></script>
	<!-- js_owl.carousel -->
	<script src="./vendor/js/owl.carousel.js"></script>
	<!-- js_wow bounceIn -->
	<script src="./vendor/js/wow.min.js"></script>
	<script>
		wow = new WOW({
			boxClass : 'wow', // default
			animateClass : 'animated', // default
			offset : 0, // default
			mobile : true, // default
			live : true
		// default
		})
		wow.init();
	</script>
</body>
</html>