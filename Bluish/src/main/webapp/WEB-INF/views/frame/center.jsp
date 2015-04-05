<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<style>
		#menu_title{
			height: 70px;
			background-color: #24468A;
		}
		
		#menu_title > #title_text {
			margin: 0 auto;
			width: 960px;
			height: 70px;
		}
		
		#menu_title > #title_text > ul > li{
			float: left;
			margin-top: 12px;
			color: white;
		}
		
		#blank_space {
			height: 40px;
		}
		
		#content_space {
			width: 960px;
			margin: 0 auto;
		}
	</style>
</head>
<body>
	<div id="menu_title">
		<div id="title_text">
			<ul>
				<li><font size="6px;">${title}</font></li>
			</ul>
		</div>
	</div>
	<div id="blank_space"></div>
	<div id="content_space">
		<jsp:include page="${view }"></jsp:include>
	</div>
	<br><br>
</body>
</html>