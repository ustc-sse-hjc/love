<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>一封情书</title>

<link type="text/css" rel="stylesheet" href="./Love_files/default.css">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="./Love_files/jquery.min.js"></script>
<script type="text/javascript" src="./Love_files/jscex.min.js"></script>
<script type="text/javascript" src="./Love_files/jscex-parser.js"></script>
<script type="text/javascript" src="./Love_files/jscex-jit.js"></script>
<script type="text/javascript"
	src="./Love_files/jscex-builderbase.min.js"></script>
<script type="text/javascript" src="./Love_files/jscex-async.min.js"></script>
<script type="text/javascript"
	src="./Love_files/jscex-async-powerpack.min.js"></script>
<script type="text/javascript" src="./Love_files/functions.js"
	charset="utf-8"></script>
<script type="text/javascript" src="./Love_files/love.js"
	charset="utf-8"></script>

</head>
<style>
html {
	height: 100%;
}
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
	color: #FFFFFF;
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
	<div id="main">
		<div class="ribbon">
			<a href='http://39.106.142.139:8080/LovePro/index.jsp'><span>秦</span></a> 
			<a href='http://39.106.142.139:8080/LovePro/lovehome.jsp'><span>梦</span></a>
			<a href='http://39.106.142.139:8080/LovePro/letter.jsp'><span>螺</span></a>
		</div>
		<div id="wrap">
			<div id="text">
				<div id="code">
					<span class="say">秦梦螺，"宝贝老婆"是我想对你喊一辈子的昵称！</span><br> <span
						class="say"  >做梦都没想到当我给你写这封信的时候，会是现在这种情况。</span><br>
					<span class="say"  >还在学校的时候，我就开始构思，我该写些什么，能够感动你。</span><br>
					<span class="say"  >现在开始着手写才发现，我有限的文笔难以表达我对你的爱。</span><br>
					<span class="say"  >再加上最近发生的事，不知道你现在是恨我还是怪我，</span><br>
					<span class="say"  >我想让你知道虽然在家里面，我大部分时间是"懦弱"的，</span><br>
					<span class="say"  >但是在我们俩的事情上，我是够坚决的！</span><br>
					<span class="say"  >我对不起你，但我希望你不要怪我，因为我是真心爱你的。</span><br>
					<br> <span class="say"  >一年的时间，一眨眼就过去了，这一年里我们经历了太多。</span><br>
					<span class="say"  >从一个开始电视剧般的相知，到梦幻般的相恋，</span><br>
					<span class="say"  >一切都好像是命中注定。</span><br>
					<span class="say"  >我可以在这对你发誓，你是我最爱的女人，没有人能代替。</span><br>
					<span class="say"  >平时有些肉麻的话我可能说不出口，</span><br>
					<span class="say"  >但是我希望你知道我内心真的满满的都是对你的爱。</span><br>
					<span class="say"  >我希望你幸福，希望你快乐，你就应该是全世界最幸福的女人！</span><br>
					<!-- <span class="say"  >你的幸福快乐将会是我一生的追求。</span><br> -->
					<br> <span class="say"  >宝贝老婆，你要相信我！</span><br>
					<span class="say"  >我努力过为我们的未来撑起一片天空，</span><br>
					<!-- <span class="say"  >为我们的将来担负起一生的责任，</span><br> -->
					<span class="say"  >我愿意为你去做每一件能让你开心快乐的事。</span><br>
					<br>
					<span class="say"  >所有我们经历的点点滴滴，</span><br>
					<span class="say"  >都是我一辈子最美的回忆。</span><br>
					<span class="say"  >我会爱你一直到老。</span><br>
					<br> <span class="say"><span class="space"><span class="space">
						--永远爱你的胖宝.</span>
				</div>
			</div>

			<canvas id="canvas" width="1100" height="680"></canvas>
		</div>

	</div>

	<script>
		
	</script>

	<script>
		(function() {
			var canvas = $('#canvas');

			if (!canvas[0].getContext) {
				$("#error").show();
				return false;
			}

			var width = canvas.width();
			var height = canvas.height();

			canvas.attr("width", width);
			canvas.attr("height", height);

			var opts = {
				seed : {
					x : width / 2 - 20,
					color : "rgb(190, 26, 37)",
					scale : 2
				},
				branch : [ [
						535,
						680,
						570,
						250,
						500,
						200,
						30,
						100,
						[
								[
										540,
										500,
										455,
										417,
										340,
										400,
										13,
										100,
										[ [ 450, 435, 434, 430, 394, 395, 2, 40 ] ] ],
								[
										550,
										445,
										600,
										356,
										680,
										345,
										12,
										100,
										[ [ 578, 400, 648, 409, 661, 426, 3, 80 ] ] ],
								[ 539, 281, 537, 248, 534, 217, 3, 40 ],
								[
										546,
										397,
										413,
										247,
										328,
										244,
										9,
										80,
										[
												[ 427, 286, 383, 253, 371, 205,
														2, 40 ],
												[ 498, 345, 435, 315, 395, 330,
														4, 60 ] ] ],
								[
										546,
										357,
										608,
										252,
										678,
										221,
										6,
										100,
										[ [ 590, 293, 646, 277, 648, 271, 2, 80 ] ] ] ] ] ],
				bloom : {
					num : 700,
					width : 1080,
					height : 650,
				},
				footer : {
					width : 1200,
					height : 5,
					speed : 10,
				}
			}

			var tree = new Tree(canvas[0], width, height, opts);
			var seed = tree.seed;
			var foot = tree.footer;
			var hold = 1;

			canvas.click(function(e) {
				var offset = canvas.offset(), x, y;
				x = e.pageX - offset.left;
				y = e.pageY - offset.top;
				if (seed.hover(x, y)) {
					hold = 0;
					canvas.unbind("click");
					canvas.unbind("mousemove");
					canvas.removeClass('hand');
				}
			}).mousemove(function(e) {
				var offset = canvas.offset(), x, y;
				x = e.pageX - offset.left;
				y = e.pageY - offset.top;
				canvas.toggleClass('hand', seed.hover(x, y));
			});

			var seedAnimate = eval(Jscex.compile("async", function() {
				seed.draw();
				while (hold) {
					$await(Jscex.Async.sleep(10));
				}
				while (seed.canScale()) {
					seed.scale(0.95);
					$await(Jscex.Async.sleep(10));
				}
				while (seed.canMove()) {
					seed.move(0, 2);
					foot.draw();
					$await(Jscex.Async.sleep(10));
				}
			}));

			var growAnimate = eval(Jscex.compile("async", function() {
				do {
					tree.grow();
					$await(Jscex.Async.sleep(10));
				} while (tree.canGrow());
			}));

			var flowAnimate = eval(Jscex.compile("async", function() {
				do {
					tree.flower(2);
					$await(Jscex.Async.sleep(10));
				} while (tree.canFlower());
			}));

			var moveAnimate = eval(Jscex.compile("async", function() {
				tree.snapshot("p1", 240, 0, 610, 680);
				while (tree.move("p1", 500, 0)) {
					foot.draw();
					$await(Jscex.Async.sleep(10));
				}
				foot.draw();
				tree.snapshot("p1", 500, 0, 610, 680);

				// 会有闪烁不得意这样做, (＞﹏＜)
				/* canvas.parent().css("background",
						"url(" + tree.toDataURL('image/png') + ")");
				canvas.css("background", "#ffe");
				
				canvas.css("background", "none"); */
				
			}));

			var jumpAnimate = eval(Jscex.compile("async", function() {
				var ctx = tree.ctx;
				while (true) {
					tree.ctx.clearRect(0, 0, width, height);
					tree.jump();
					foot.draw();
					$await(Jscex.Async.sleep(25));
				}
			}));

			var textAnimate = eval(Jscex.compile("async", function() {
				$("#code").show().typewriter();
			}));

			var runAsync = eval(Jscex.compile("async", function() {
				$await(seedAnimate());
				$await(growAnimate());
				$await(flowAnimate());
				$await(moveAnimate());

				textAnimate().start();

				$await(jumpAnimate());
			}));

			runAsync().start();
		})();
	</script>



</body>
</html>