<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<script src="../../../resources/js/prefixfree.min.js"></script>
	<!-- <link rel="stylesheet" href="../../../resources/css/StyleSheet.css" /> -->
	<style>
		#entrance_view{
			height: 800px;
		}
		
		section{
			width: 960px;
			height: 800px;
			position: relative;
			
			animation: rint 5s linear 0s infinite;
			
			transform-style: preserve-3d;
			-ms-transform-style: preserve-3d;
		}
		
		 @keyframes rint{
			from{
				transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg);
			}
			to{
				transform: rotateX(360deg) rotateY(360deg) rotateZ(360deg);
			}
		}
		
		.asp{
			width: 400px;
			height: 400px;
			position: absolute;
			left: 300;
			top: 300;
			/* opacity: 0.3; */
		}
		#asp_1{
			transform: rotateY(0deg) translate3d(0px, 0px, 200px);
			border: 1px solid black;
			background: grey;
		}
		#asp_2{
			transform: rotateY(90deg) translate3d(0px, 0px, 200px);
			border: 1px solid black;
			background: grey;
		}
		#asp_3{
			transform: rotateY(180deg) translate3d(0px, 0px, 200px);
			border: 1px solid black;
			background: grey;
		}
		#asp_4{
			transform: rotateY(270deg) translate3d(0px, 0px, 200px);
			border: 1px solid black;
			background: grey;
		}
		#asp_5{
			transform: rotateX(90deg) translate3d(0px, 0px, 200px);
			border: 1px solid black;
			background: grey;
		}
		#asp_6{
			
			transform: rotateX(270deg) translate3d(0px, 0px, 200px);
			border: 1px solid black;
			background: grey;
		}
		
		
	</style>
	
</head>
<body>
	<div id="entrance_view">
		<div id="entrance_space">
			<section>
				<div class="asp" id="asp_1"></div>
				<div class="asp" id="asp_2"></div>
				<div class="asp" id="asp_3"></div>
				<div class="asp" id="asp_4"></div>
				<div class="asp" id="asp_5"></div>
				<div class="asp" id="asp_6"></div>
			</section>
		</div>
	</div>
</body>
</html>