<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

	<style>
		#portfolio_space{
			height: 1100px;
		}
		
		#portfolio_space > #portfolio_content{
			width: 960px;
			height: 900px;
			margin: 0 auto;
		}
		
		#portfolio_space > #portfolio_content > #portfolio_article{
			height: 200px;
		}
		
		#portfolio_space > #portfolio_content > #portfolio_article > #portfolio_tbl {
			width: 700px;
			height: 200px;
			float: left;
		}
		
		#portfolio_space > #portfolio_content > #portfolio_article > #portfolio_enter {
			position: relative;
			width: 250px;
			height: 180px;
			float: right;
			/* text-align: center; */
			border-radius: 100px;
			background-color: black;
			cursor: pointer;
		}
		
		#port_item {
			background-color: #757575;
			color: white;
			text-align: center;
			font-weight: bold;
		}
		#port_info {
			color: black;
			text-align: center;
		}
		
		#portfolio_blank {
			width: 10px;
		}
		
		#line{
			height: 3px;
			background-color: #636363;
		}
		
		/* 포트폴리오 click div */
		#enter_bluish{
			position:absolute; 
			width: 250px;
			height: 180px;
			background-image: url("../../../resources/images/portfolio/bluish.png");
			opacity: 0.5;
			border-radius: 100px;
			z-index: 5;
		}
		#enter_papaf{
			position:absolute; 
			width: 250px;
			height: 180px;
			background-image: url("../../../resources/images/portfolio/papaf.png");
			opacity: 0.5;
			border-radius: 100px;
			z-index: 5;
		}
		#enter_kiwii{
			position:absolute; 
			width: 250px;
			height: 180px;
			background-image: url("../../../resources/images/portfolio/kiwii.png");
			opacity: 0.5;
			border-radius: 100px;
			z-index: 5;
		}
		#enter_ggumddakji{
			position:absolute; 
			width: 250px;
			height: 180px;
			background-image: url("../../../resources/images/portfolio/ggumddakji.png");
			opacity: 0.5;
			border-radius: 100px;
			z-index: 5;
		}
		
		/* 포트폴리오 click font */
		#click_bluish{
			position: absolute;
			top: 70;
			left: 100;
			z-index: 10;
		}
		#click_papaf{
			position: absolute;
			top: 70;
			left: 100;
			z-index: 10;
		}
		#click_kiwii{
			position: absolute;
			top: 70;
			left: 100;
			z-index: 10;
		}
		#click_ggumddakji{
			position: absolute;
			top: 70;
			left: 100;
			z-index: 10;
		}
	</style>
	
	<script>
		function portfolioEnter(portfolio){
			document.portfolioFrm.action = portfolio;		
			document.portfolioFrm.submit();
		}
	
	</script>
</head>
<body>
	<div id="portfolio_space">
		<div id="portfolio_content">
			<div id="portfolio_article">
				<table id="portfolio_tbl">
					<tr>
						<td id="port_item" width="150px;">구&nbsp;분</td>
						<td id="port_item" width="200px;">프로젝트&nbsp;명</td>
						<td id="port_item" width="90px;">참여인원</td>
						<td id="port_item" width="130px;">개발도구</td>
						<td id="port_item" width="130px;">협업도구</td>
					</tr>
					<tr>
						<td id="port_info" width="150px;">Web</td>
						<td id="port_info" width="200px;">Bluish</td>
						<td id="port_info" width="90px;">1</td>
						<td id="port_info" width="130px;">Eclipse&nbsp;Juno</td>
						<td id="port_info" width="130px;"></td>
					</tr>
					<tr>
						<td colspan="5" id="port_item">프로젝트&nbsp;개요</td>
					</tr>
					<tr>
						<td colspan="5" id="port_info">앞으로 개발자로서 경력 관리를 위한 포트폴리오 관리 웹 사이트</td>
					</tr>
				</table>
				<div id="portfolio_blank"></div>
				<div id="portfolio_enter" onclick="portfolioEnter('bluish')">
					<div id="enter_bluish"></div>
					<font id="click_bluish" size="5px;" style="color: white;">Click</font>
				</div>
				
			</div>
			<br><br><div id="line"></div><br><br>
			<div id="portfolio_article">
				<table id="portfolio_tbl">
					<tr>
						<td id="port_item" width="150px;">구&nbsp;분</td>
						<td id="port_item" width="200px;">프로젝트&nbsp;명</td>
						<td id="port_item" width="90px;">참여인원</td>
						<td id="port_item" width="130px;">개발도구</td>
						<td id="port_item" width="130px;">협업도구</td>
					</tr>
					<tr>
						<td id="port_info" width="150px;">Mobile&nbsp;Web</td>
						<td id="port_info" width="200px;">PAPAF</td>
						<td id="port_info" width="90px;">4</td>
						<td id="port_info">Eclipse&nbsp;Indigo</td>
						<td id="port_info" width="130px;"></td>
					</tr>
					<tr>
						<td colspan="5" id="port_item">프로젝트&nbsp;개요</td>
					</tr>
					<tr>
						<td colspan="5" id="port_info">개발자로서 성장해 가는 로드맵을 공유하기 위한 소셜 모바일 웹</td>
					</tr>
				</table>
				<div id="portfolio_blank"></div>
				<div id="portfolio_enter" onclick="portfolioEnter('papaf')">
					<div id="enter_papaf"></div>
					<font id="click_papaf" size="5px;" style="color: white;">Click</font>
				</div>
				
			</div>
			<br><br><div id="line"></div><br><br>
			<div id="portfolio_article">
				<table id="portfolio_tbl">
					<tr>
						<td id="port_item" width="150px;">구&nbsp;분</td>
						<td id="port_item" width="200px;">프로젝트&nbsp;명</td>
						<td id="port_item" width="90px;">참여인원</td>
						<td id="port_item" width="130px;">개발도구</td>
						<td id="port_item" width="130px;">협업도구</td>
					</tr>
					<tr>
						<td id="port_info" width="150px;">Android&nbsp;App</td>
						<td id="port_info" width="200px;">Kiwii</td>
						<td id="port_info" width="90px;">4</td>
						<td id="port_info" width="130px;">Unity</td>
						<td id="port_info" width="130px;">GitHub</td>
					</tr>
					<tr>
						<td colspan="5" id="port_item">프로젝트&nbsp;개요</td>
					</tr>
					<tr>
						<td colspan="5" id="port_info">프로그래밍을 쉽게 이해할 수 있도록 게임 요소를 넣어서 만든 앱</td>
					</tr>
				</table>
				<div id="portfolio_blank"></div>
				<div id="portfolio_enter" onclick="portfolioEnter('kiwii')">
					<div id="enter_kiwii"></div>
					<font id="click_kiwii" size="5px;" style="color: white;">Click</font>
				</div>
				
			</div>
			<br><br><div id="line"></div><br><br>
			<div id="portfolio_article">
				<table id="portfolio_tbl">
					<tr>
						<td id="port_item" width="150px;">구&nbsp;분</td>
						<td id="port_item" width="200px;">프로젝트&nbsp;명</td>
						<td id="port_item" width="90px;">참여인원</td>
						<td id="port_item" width="130px;">개발도구</td>
						<td id="port_item" width="130px;">협업도구</td>
					</tr>
					<tr>
						<td id="port_info" width="150px;">Android&nbsp;App</td>
						<td id="port_info" width="200px;">껌딱지</td>
						<td id="port_info" width="90px;">3</td>
						<td id="port_info" width="130px;">Android Studio</td>
						<td id="port_info" width="130px;">Yobi</td>
					</tr>
					<tr>
						<td colspan="5" id="port_item">프로젝트&nbsp;개요</td>
					</tr>
					<tr>
						<td colspan="5" id="port_info">통화 전 상대의 메모 보기 또는 통화 후 상대의 메모를 저장하기 위한 앱</td>
					</tr>
				</table>
				<div id="portfolio_blank"></div>
				<div id="portfolio_enter" onclick="portfolioEnter('ggumddakji')">
					<div id="enter_ggumddakji"></div>
					<font id="click_ggumddakji" size="5px;" style="color: white;">Click</font>
				</div>
				
			</div>
		</div>
	</div>
	<form name="portfolioFrm" method="post"></form>
</body>
</html>