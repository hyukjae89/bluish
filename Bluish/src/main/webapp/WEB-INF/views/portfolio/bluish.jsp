<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

	<style>
		#bluish_space{
			height: 1100px;
		}
		
		#bluish_space > #bluish_content{
			width: 960px;
			height: 1100px;
			margin: 0 auto;
		}
		
		#bluish_space > #bluish_content > #bluish_tbl {
			width: 960px;
			height: 1000px;
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
		
		#port_item2 {
			background-color: #757575;
			color: white;
			font-weight: bold;
		}
		#port_info2 {
			color: black;
		}
	</style>
</head>
<body>
	<div id="bluish_space">
		<div id="bluish_content">
			<table id="bluish_tbl">
				<tr>
					<td id="port_item" width="150px;">구&nbsp;분</td>
					<td id="port_item" width="200px;">프로젝트&nbsp;명</td>
					<td id="port_item" width="90px;">참여인원</td>
					<td id="port_item" width="130px;">개발도구</td>
					<td id="port_item" width="130px;">협업도구</td>
					<td id="port_item" width="264px;">나의&nbsp;역할</td>
				</tr>
				<tr>
					<td id="port_info" width="150px;">Web</td>
					<td id="port_info" width="200px;">Bluish</td>
					<td id="port_info" width="90px;">1</td>
					<td id="port_info" width="130px;">Eclipse&nbsp;Juno</td>
					<td id="port_info" width="130px;"></td>
					<td id="port_info" width="264px;">전체 개발</td>
				</tr>
				<tr><td><br></td></tr>
				<tr>
					<td colspan="6" id="port_item2">&nbsp;&nbsp;프로젝트&nbsp;개요</td>
				</tr>
				<tr>
					<td colspan="6" id="port_info2">앞으로 개발자로서 경력 관리를 위한 포트폴리오 관리 웹 사이트</td>
				</tr>
				<tr><td><br></td></tr>
				<tr>
					<td colspan="6" id="port_item2">&nbsp;&nbsp;프로젝트&nbsp;특징</td>
				</tr>
				<tr>
					<td colspan="6" id="port_info2" height="120px;">
						1. 본 사이트가 해당 프로젝트의 결과물이며 계속 진행중입니다.<br><br>
						2. 이 프로젝트를 진행한 가장 큰 이유는 포트폴리오를 체계적으로 관리하기 위함입니다.<br><br>
						3. 포트폴리오 외에 8개의 카테고리로 구성되어 있는 게시판과 프로필을 만들었습니다.
					</td>
				</tr>
				<tr><td><br></td></tr>
				<tr>
					<td colspan="6" id="port_item2">&nbsp;&nbsp;개발&nbsp;내용</td>
				</tr>
				<tr>
					<td colspan="6" id="port_info2" height="430px">
						1. 서버는 Spring MVC 프레임워크를 사용하여 개발하였습니다.<br><br>
						2. 뷰는 HTML, CSS, Javascript, jQuery를 사용하여 개발하였습니다.<br><br>
						3. 데이터베이스는 MySQL를 사용하였습니다.<br><br>
						참조한 책은 다음과 같습니다.<br>
						<table height="260px">
							<tr>
								<td><img src="../../../resources/images/portfolio/bluish/ref_book01.jpg"></td>
								<td><img src="../../../resources/images/portfolio/bluish/ref_book02.jpg"></td>
								<td><img src="../../../resources/images/portfolio/bluish/ref_book03.jpg"></td>
								<td><img src="../../../resources/images/portfolio/bluish/ref_book04.jpg"></td>
								<td><img src="../../../resources/images/portfolio/bluish/ref_book05.jpg"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>