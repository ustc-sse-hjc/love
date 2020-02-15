<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<title>爱情回忆录</title>
<meta name="author" content="Codrops" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<style>
body {
	font-family: "Helvetica Neue", "Luxi Sans", "DejaVu Sans", Tahoma,
		"Hiragino Sans GB", "Microsoft Yahei", sans-serif;
	background: -webkit-linear-gradient(top, rgb(203, 235, 219) 0%,
		rgb(55, 148, 192) 120%);
	background: -moz-linear-gradient(top, rgb(203, 235, 219) 0%,
		rgb(55, 148, 192) 120%);
	background: -o-linear-gradient(top, rgb(203, 235, 219) 0%,
		rgb(55, 148, 192) 120%);
	background: -ms-linear-gradient(top, rgb(203, 235, 219) 0%,
		rgb(55, 148, 192) 120%);
	background: linear-gradient(top, rgb(203, 235, 219) 0%,
		rgb(55, 148, 192) 120%);
	color: #CFEBE4;
	font-size: 18px;
	line-height: 2;
	letter-spacing: 1.2px;
	margin: 0;
}
.ribbon {
	display: inline-block;
	float: right;
}

.ribbon:after, .ribbon:before {
	margin-top: 0.5em;
	content: "";
	float: left;
	border: 1.5em solid #fff;
}

.ribbon:after {
	border-right-color: transparent;
}

.ribbon:before {
	border-left-color: transparent;
}

.ribbon a:link, .ribbon a:visited {
	color: #CFEBE4;
	/* color: #000; */
	text-decoration: none;
	float: left;
	height: 3.5em;
	overflow: hidden;
}

.ribbon span {
	background: #fff;
	display: inline-block;
	line-height: 3em;
	padding: 0 1em;
	margin-top: 0.5em;
	position: relative;
	-webkit-transition: background-color 0.2s, margin-top 0.2s;
	/* Saf3.2+, Chrome */
	-moz-transition: background-color 0.2s, margin-top 0.2s; /* FF4+ */
	-ms-transition: background-color 0.2s, margin-top 0.2s; /* IE10 */
	-o-transition: background-color 0.2s, margin-top 0.2s;
	/* Opera 10.5+ */
	transition: background-color 0.2s, margin-top 0.2s;
}

.ribbon a:hover span {
	background: #fff;
	margin-top: 0;
}

.ribbon span:before {
	content: "";
	position: absolute;
	top: 3em;
	left: 0;
	border-right: 0.5em solid #9B8651;
	border-bottom: 0.5em solid #fff;
}

.ribbon span:after {
	content: "";
	position: absolute;
	top: 3em;
	right: 0;
	border-left: 0.5em solid #9B8651;
	border-bottom: 0.5em solid #fff;
}
</style>
<body>
	<div class="ribbon">
		<a href='http://39.106.142.139:8080/LovePro/index.jsp'><span>秦</span></a> 
		<a href='http://39.106.142.139:8080/LovePro/lovehome.jsp'><span>梦</span></a>
		<a href='http://39.106.142.139:8080/LovePro/letter.jsp'><span>螺</span></a>
	</div>
	<div class="content">
		<center>
			<br> <br> <span
				style="font-size: 30px; font-weight: bolder; -webkit-text-stroke: 1px #3299cc; color: transparent;">爱情回忆墙<br />
			</span>
		</center>
		<header> </header>
		<div class="iw_wrapper">
			<ul class="iw_thumbs" id="iw_thumbs">
				<li><img src="thumbs/1.jpg" data-img="full/1.jpg" alt="Thumb1" />
					<div>
						<h2>最美宝宝</h2>
						<p>我记得这应该是你来我实习公司的路上拍的，真美.</p>
					</div></li>
				<li><img src="thumbs/2.jpg" data-img="full/2.jpg" alt="Thumb2" />
					<div>
						<h2>臭美宝宝</h2>
						<p>呀，这谁的衣服呀，穿上这么好看.</p>
					</div></li>
				<li><img src="thumbs/3.jpg" data-img="full/3.jpg" alt="Thumb3" />
					<div>
						<h2>羞羞...</h2>
						<p>emmmm，这张照片就比较羞羞了，都在回忆里.</p>
					</div></li>
				<li><img src="thumbs/8.jpg" data-img="full/8.jpg" alt="Thumb8" />
					<div>
						<h2>暖心梨膏</h2>
						<p>人家咳嗽了，宝宝送来的爱心梨膏，一喝就好❤.</p>
					</div></li>
				<li><img src="thumbs/9.jpg" data-img="full/9.jpg" alt="Thumb9" />
					<div>
						<h3>幸福时刻</h3>
						<p>一直想带你看我的比赛，然后在你面前耍帅，这样的比赛才有意义，谢谢宝贝来看我.</p>
					</div></li>
				<li><img src="thumbs/10.jpg" data-img="full/10.jpg"
					alt="Thumb10" />
					<div>
						<h3>霸道总裁胖宝</h3>
						<p>这是我们小两口第一次出去旅行啦，宝宝给我拍的照片，霸道总裁既视感，剧情一下就来了.</p>
					</div></li>
				<li><img src="thumbs/6.jpg" data-img="full/6.jpg" alt="Thumb6" />
					<div>
						<h3>老婆给我买的第一件衣服</h3>
						<p>老婆的眼光真好，这是我最帅的一件衣服，我很喜欢.</p>
					</div></li>
				<li><img src="thumbs/7.jpg" data-img="full/7.jpg" alt="Thumb7" />
					<div>
						<h3>老婆牌梨膏</h3>
						<p>老婆给的梨膏，又甜又暖.</p>
					</div></li>
				<li><img src="thumbs/4.jpg" data-img="full/4.jpg" alt="Thumb4" />
					<div>
						<h3>一起看樱花~</h3>
						<p>和老婆去看樱花~ 幸福！.</p>
					</div></li>
				<li><img src="thumbs/12.jpg" data-img="full/12.jpg"
					alt="Thumb12" />
					<div>
						<p style="font-size: 20px;">玉龙的见证</p>
						</br>
						<p>还记得吗，你和我曾在玉龙雪山的见证下，深情拥吻</p>
					</div></li>
				<li><img src="thumbs/5.jpg" data-img="full/5.jpg" alt="Thumb4" />
					<div>
						<h3>相约相山公园</h3>
						<p>就算放假回家了，也能和宝贝老婆一起出去玩~</p>
					</div></li>
				<li><img src="thumbs/20.jpg" data-img="full/20.jpg" alt="Thumb5" />
					<div>
						<h3>最美证件照</h3>
						<p>啦啦啦，这是我宝宝最美的证件照。啊，不对，这是全世界最美的证件照！</p>
					</div></li>
				<li><img src="thumbs/13.jpg" data-img="full/13.jpg" alt="Thumb6" />
					<div>
						<h3>丽江古城</h3>
						<p>我和宝宝第一次出去旅游，浪漫的丽江古城！.</p>
					</div></li>
				<li><img src="thumbs/14.jpg" data-img="full/14.jpg" alt="Thumb7" />
					<div>
						<h3>最酷二人组</h3>
						<p>看看我俩最酷的背影！这是啥河我也忘记惹...</p>
					</div></li>
				<li><img src="thumbs/15.jpg" data-img="full/15.jpg"
					alt="Thumb10" />
					<div>
						<h3>傻吊二人组</h3>
						<p>哈哈哈，在飞机上上的傻吊二人组，脸上写满幸福.</p>
					</div></li>
				<li><img src="thumbs/16.jpg" data-img="full/16.jpg"
					alt="Thumb11" />
					<div>
						<h3>宝贝最爱的蹦蹦床</h3>
						<p>和宝宝去玩网红跳跳床~宝宝竟然比我玩得好，哼！.</p>
					</div></li>
				<li><img src="thumbs/17.jpg" data-img="full/17.jpg" alt="Thumb3" />
					<div>
						<h3>我毕业啦~</h3>
						<p>一直想和心爱的人拍一张毕业照，谢谢宝宝帮我实现了❤.</p>
					</div></li>
				<li><img src="thumbs/18.jpg" data-img="full/18.jpg"
					alt="Thumb13" />
					<div>
						<h3>18禁</h3>
						<p>宝宝的美腿...不行了，我要擦一下鼻血.</p>
					</div></li>
				<li><img src="thumbs/19.jpg" data-img="full/19.jpg"
					alt="Thumb14" />
					<div>
						<h3>宝宝的研究生证</h3>
						<p>这是我见过的最可耐的证件照~</p>
					</div></li>
				<li><img src="thumbs/21.jpg" data-img="full/21.jpg" alt="Thumb1" />
					<div>
						<h3>偶的研究生证</h3>
						<p>emmm，这个就不多说啦.</p>
					</div></li>
				<li><img src="thumbs/22.jpg" data-img="full/22.jpg" alt="Thumb2" />
					<div>
						<h3>宝宝特意为我拍屏保</h3>
						<p>可爱宝宝靠着我拍照，超幸福！我愿意给你靠一辈子.</p>
					</div></li>
				<li><img src="thumbs/23.jpg" data-img="full/23.jpg"
					alt="Thumb11" />
					<div>
						<h3>一起回家啦</h3>
						<p>在回家的路上，来张美美的照片~</p>
					</div></li>
				<li><img src="thumbs/24.jpg" data-img="full/24.jpg"
					alt="Thumb12" />
					<div>
						<h3>老婆买的睡衣拖孩</h3>
						<p>老婆给我买的睡衣和拖孩~满满的爱.</p>
					</div></li>
				<li><img src="thumbs/25.jpg" data-img="full/25.jpg"
					alt="Thumb13" />
					<div>
						<h3>爱拍照的宝宝</h3>
						<p>无论到哪都要摆拍的宝宝~ 真美，我要做你一辈子的摄影师.</p>
					</div></li>
				<li><img src="thumbs/26.jpg" data-img="full/26.jpg"
					alt="Thumb14" />
					<div>
						<h2>可爱宝宝</h2>
						<p>嘟嘴的宝宝，真可爱，这嘴巴我可以亲一辈子.</p>
					</div></li>
				<li><img src="thumbs/29.jpg" data-img="full/29.jpg" alt="Thumb1" />
					<div>
						<h3>最爱的鞋子</h3>
						<p>宝宝送我的生日礼物，帅到爆炸的鞋子，也是我最爱的鞋子。</p>
					</div></li>
				<li><img src="thumbs/11.jpg" data-img="full/11.jpg" alt="Thumb2" />
					<div>
						<h3>第一个圣诞节</h3>
						<p>宝贝最喜欢的圣诞节，以后每年都陪你过.</p>
					</div></li>
				<li><img src="thumbs/6.jpg" data-img="full/6.jpg" alt="Thumb3" />
					<div>
						<h3>老婆给我买的第一件衣服</h3>
						<p>老婆的眼光真好，这是我最帅的一件衣服，我很喜欢.</p>
					</div></li>
				<li><img src="thumbs/8.jpg" data-img="full/8.jpg" alt="Thumb4" />
					<div>
						<h2>暖心梨膏</h2>
						<p>人家咳嗽了，宝宝送来的爱心梨膏，一喝就好❤.</p>
					</div></li>
				<li><img src="thumbs/11.jpg" data-img="full/11.jpg"
					alt="Thumb1" />
					<div>
						<h3>第一个圣诞节</h3>
						<p>宝贝最喜欢的圣诞节，以后每年都陪你过.</p>
					</div></li>
				<li><img src="thumbs/2.jpg" data-img="full/2.jpg" alt="Thumb2" />
					<div>
						<h2>臭美宝宝</h2>
						<p>呀，这谁的衣服呀，穿上这么好看.</p>
					</div></li>
				<li><img src="thumbs/3.jpg" data-img="full/3.jpg" alt="Thumb3" />
					<div>
						<h2>羞羞...</h2>
						<p>emmmm，这张照片就比较羞羞了，都在回忆里.</p>
					</div></li>
				<li><img src="thumbs/4.jpg" data-img="full/4.jpg" alt="Thumb4" />
					<div>
						<h3>一起看樱花~</h3>
						<p>和老婆去看樱花~ 幸福！.</p>
					</div></li>
				<li><img src="thumbs/5.jpg" data-img="full/5.jpg" alt="Thumb5" />
					<div>
						<h3>相约相山公园</h3>
						<p>就算放假回家了，也能和宝贝老婆一起出去玩~</p>
					</div></li>
				<li><img src="thumbs/6.jpg" data-img="full/6.jpg" alt="Thumb6" />
					<div>
						<h3>老婆给我买的第一件衣服</h3>
						<p>老婆的眼光真好，这是我最帅的一件衣服，我很喜欢.</p>
					</div></li>
				<li><img src="thumbs/4.jpg" data-img="full/4.jpg" alt="Thumb7" />
					<div>
						<h3>一起看樱花</h3>
						<p>和老婆去看樱花~ 幸福！.</p>
					</div></li>
				<li><img src="thumbs/8.jpg" data-img="full/8.jpg" alt="Thumb8" />
					<div>
						<h2>暖心梨膏</h2>
						<p>人家咳嗽了，宝宝送来的爱心梨膏，一喝就好❤.</p>
					</div></li>
				<li><img src="thumbs/9.jpg" data-img="full/9.jpg" alt="Thumb9" />
					<div>
						<h3>幸福时刻</h3>
						<p>一直想带你看我的比赛，然后在你面前耍帅，这样的比赛才有意义，谢谢宝贝来看我.</p>
					</div></li>
				<li><img src="thumbs/10.jpg" data-img="full/10.jpg"
					alt="Thumb10" />
					<div>
						<h3>霸道总裁胖宝</h3>
						<p>这是我们小两口第一次出去旅行啦，宝宝给我拍的照片，霸道总裁既视感，剧情一下就来了.</p>
					</div></li>
				<li><img src="thumbs/11.jpg" data-img="full/11.jpg"
					alt="Thumb11" />
					<div>
						<h3>第一个圣诞节</h3>
						<p>宝贝最喜欢的圣诞节，以后每年都陪你过.</p>
					</div></li>
				<li><img src="thumbs/12.jpg" data-img="full/12.jpg"
					alt="Thumb11" />
					<div>
						<p style="font-size: 20px;">玉龙的见证</p>
						</br>
						<p>还记得吗，你和我曾在玉龙雪山的见证下，深情拥吻</p>
					</div></li>
				<li><img src="thumbs/13.jpg" data-img="full/13.jpg"
					alt="Thumb11" />
					<div>
						<h3>丽江古城</h3>
						<p>我和宝宝第一次出去旅游，浪漫的丽江古城！.</p>
					</div></li>
				<li><img src="thumbs/14.jpg" data-img="full/14.jpg"
					alt="Thumb11" />
					<div>
						<h3>最酷二人组</h3>
						<p>看看我俩最酷的背影！这是啥河我也忘记惹...</p>
					</div></li>
				<li><img src="thumbs/1.jpg" data-img="full/1.jpg" alt="Thumb12" />
					<div>
						<h2>最美宝宝</h2>
						<p>我记得这应该是你来我实习公司的路上拍的，真美.</p>
					</div></li>
				<li><img src="thumbs/13.jpg" data-img="full/13.jpg"
					alt="Thumb11" />
					<div>
						<h3>丽江古城</h3>
						<p>我和宝宝第一次出去旅游，浪漫的丽江古城！.</p>
					</div></li>
				<li><img src="thumbs/14.jpg" data-img="full/14.jpg"
					alt="Thumb11" />
					<div>
						<h3>最酷二人组</h3>
						<p>看看我俩最酷的背影！这是啥河我也忘记惹...</p>
					</div></li>
				<li><img src="thumbs/2.jpg" data-img="full/2.jpg" alt="Thumb1" />
					<div>
						<h2>臭美宝宝</h2>
						<p>呀，这谁的衣服呀，穿上这么好看.</p>
					</div></li>
				<li><img src="thumbs/4.jpg" data-img="full/4.jpg" alt="Thumb2" />
					<div>
						<h3>一起看樱花</h3>
						<p>和老婆去看樱花~ 幸福！.</p>
					</div></li>
				<li><img src="thumbs/6.jpg" data-img="full/6.jpg" alt="Thumb3" />
					<div>
						<h3>老婆给我买的第一件衣服</h3>
						<p>老婆的眼光真好，这是我最帅的一件衣服，我很喜欢.</p>
					</div></li>
			</ul>
		</div>
		<div id="iw_ribbon" class="iw_ribbon">
			<span class="iw_close"></span> <span class="iw_zoom">关闭</span>
		</div>
	</div>
	<div class="footer">
		<a class="left" href="#" target="_blank">螺宝与胖宝的甜美回忆</a>
	</div>
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/jquery.masonry.min.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript">
			$(window).load(function(){
				var $iw_thumbs			= $('#iw_thumbs'),
					$iw_ribbon			= $('#iw_ribbon'),
					$iw_ribbon_close	= $iw_ribbon.children('span.iw_close'),
					$iw_ribbon_zoom		= $iw_ribbon.children('span.iw_zoom');
					
					ImageWall	= (function() {
							// window width and height
						var w_dim,
						    // index of current image
							current				= -1,
							isRibbonShown		= false,
							isFullMode			= false,
							// ribbon / images animation settings
							ribbonAnim			= {speed : 500, easing : 'easeOutExpo'},
							imgAnim				= {speed : 400, easing : 'jswing'},
							// init function : call masonry, calculate window dimentions, initialize some events
							init				= function() {
								$iw_thumbs.imagesLoaded(function(){
									$iw_thumbs.masonry({
										isAnimated	: true
									});
								});
								getWindowsDim();
								initEventsHandler();
							},
							// calculate window dimentions
							getWindowsDim		= function() {
								w_dim = {
									width	: $(window).width(),
									height	: $(window).height()
								};
							},
							// initialize some events
							initEventsHandler	= function() {
								
								// click on a image
								$iw_thumbs.delegate('li', 'click', function() {
									if($iw_ribbon.is(':animated')) return false;
									
									var $el = $(this);
									
									if($el.data('ribbon')) {
										showFullImage($el);
									}
									else if(!isRibbonShown) {
										isRibbonShown = true;
										
										$el.data('ribbon',true);
										
										// set the current
										current = $el.index();
									
										showRibbon($el);
									}
								});
								
								// click ribbon close
								$iw_ribbon_close.bind('click', closeRibbon);
								
								// on window resize we need to recalculate the window dimentions
								$(window).bind('resize', function() {
											getWindowsDim();
											if($iw_ribbon.is(':animated'))
												return false;
											closeRibbon();
										 })
								         .bind('scroll', function() {
											if($iw_ribbon.is(':animated'))
												return false;
											closeRibbon();
										 });
								
							},
							showRibbon			= function($el) {
								var	$img	= $el.children('img'),
									$descrp	= $img.next();
								
								// fadeOut all the other images
								$iw_thumbs.children('li').not($el).animate({opacity : 0.2}, imgAnim.speed);
								
								// increase the image z-index, and set the height to 100px (default height)
								$img.css('z-index', 100)
									.data('originalHeight',$img.height())
									.stop()
									.animate({
										height 		: '100px'
									}, imgAnim.speed, imgAnim.easing);
								
								// the ribbon will animate from the left or right
								// depending on the position of the image
								var ribbonCssParam 		= {
										top	: $el.offset().top - $(window).scrollTop() - 6 + 'px'
									},
									descriptionCssParam,
									dir;
								
								if( $el.offset().left < (w_dim.width / 2) ) {
									dir = 'left';
									ribbonCssParam.left 	= 0;
									ribbonCssParam.right 	= 'auto';
								}
								else {
									dir = 'right';
									ribbonCssParam.right 	= 0;
									ribbonCssParam.left 	= 'auto';
								}
								
								$iw_ribbon.css(ribbonCssParam)
								          .show()
										  .stop()
										  .animate({width : '100%'}, ribbonAnim.speed, ribbonAnim.easing, function() {
												switch(dir) {
													case 'left' :
														descriptionCssParam		= {
															'left' 			: $img.outerWidth(true) + 'px',
															'text-align' 	: 'left'
														};
														break;
													case 'right' :	
														descriptionCssParam		= {
															'left' 			: '-200px',
															'text-align' 	: 'right'
														};
														break;
												};
												$descrp.css(descriptionCssParam).fadeIn();
												// show close button and zoom
												$iw_ribbon_close.show();
												$iw_ribbon_zoom.show();
										  });
								
							},
							// close the ribbon
							// when in full mode slides in the middle of the page
							// when not slides left
							closeRibbon			= function() {
								isRibbonShown 	= false
								
								$iw_ribbon_close.hide();
								$iw_ribbon_zoom.hide();
								
								if(!isFullMode) {
								
									// current wall image
									var $el	 		= $iw_thumbs.children('li').eq(current);
									
									resetWall($el);
									
									// slide out ribbon
									$iw_ribbon.stop()
											  .animate({width : '0%'}, ribbonAnim.speed, ribbonAnim.easing); 
										  
								}
								else {
									$iw_ribbon.stop().animate({
										opacity		: 0.8,
										height 		: '0px',
										marginTop	: w_dim.height/2 + 'px' // half of window height
									}, ribbonAnim.speed, function() {
										$iw_ribbon.css({
											'width'		: '0%',
											'height'	: '126px',
											'margin-top': '0px'
										}).children('img').remove();
									});
									
									isFullMode	= false;
								}
							},
							resetWall			= function($el) {
								var $img		= $el.children('img'),
									$descrp		= $img.next();
									
								$el.data('ribbon',false);
								
								// reset the image z-index and height
								$img.css('z-index',1).stop().animate({
									height 		: $img.data('originalHeight')
								}, imgAnim.speed,imgAnim.easing);
								
								// fadeOut the description
								$descrp.fadeOut();

								// fadeIn all the other images
								$iw_thumbs.children('li').not($el).animate({opacity : 1}, imgAnim.speed);								
							},
							showFullImage		= function($el) {
								isFullMode	= true;
								
								$iw_ribbon_close.hide();
								
								var	$img	= $el.children('img'),
									large	= $img.data('img'),
								
									// add a loading image on top of the image
									$loading = $('<span class="iw_loading"></span>');
								
								$el.append($loading);
								
								// preload large image
								$('<img/>').load(function() {
									var $largeImage	= $(this);
									
									$loading.remove();
									
									$iw_ribbon_zoom.hide();
									
									resizeImage($largeImage);
									
									// reset the current image in the wall
									resetWall($el);
									
									// animate ribbon in and out
									$iw_ribbon.stop().animate({
										opacity		: 1,
										height 		: '0px',
										marginTop	: '63px' // half of ribbons height
									}, ribbonAnim.speed, function() {
										// add the large image to the DOM
										$iw_ribbon.prepend($largeImage);
										
										$iw_ribbon_close.show();
										
										$iw_ribbon.animate({
											height 		: '100%',
											marginTop	: '0px',
											top			: '0px'
										}, ribbonAnim.speed);
									});
								}).attr('src',large);
									
							},
							resizeImage			= function($image) {
								var widthMargin		= 100,
									heightMargin 	= 100,
								
									windowH      	= w_dim.height - heightMargin,
									windowW      	= w_dim.width - widthMargin,
									theImage     	= new Image();
									
								theImage.src     	= $image.attr("src");
								
								var imgwidth     	= theImage.width,
									imgheight    	= theImage.height;

								if((imgwidth > windowW) || (imgheight > windowH)) {
									if(imgwidth > imgheight) {
										var newwidth 	= windowW,
											ratio 		= imgwidth / windowW,
											newheight 	= imgheight / ratio;
											
										theImage.height = newheight;
										theImage.width	= newwidth;
										
										if(newheight > windowH) {
											var newnewheight 	= windowH,
												newratio 		= newheight/windowH,
												newnewwidth 	= newwidth/newratio;
										
											theImage.width 		= newnewwidth;
											theImage.height		= newnewheight;
										}
									}
									else {
										var newheight 	= windowH,
											ratio 		= imgheight / windowH,
											newwidth 	= imgwidth / ratio;
										
										theImage.height = newheight;
										theImage.width	= newwidth;
										
										if(newwidth > windowW) {
											var newnewwidth 	= windowW,
											    newratio 		= newwidth/windowW,
												newnewheight 	= newheight/newratio;
									
											theImage.height 	= newnewheight;
											theImage.width		= newnewwidth;
										}
									}
								}
									
								$image.css({
									'width'			: theImage.width + 'px',
									'height'		: theImage.height + 'px',
									'margin-left'	: -theImage.width / 2 + 'px',
									'margin-top'	: -theImage.height / 2 + 'px'
								});							
							};
							
						return {init : init};	
					})();
				
				ImageWall.init();
			});
		</script>
</body>
</html>
