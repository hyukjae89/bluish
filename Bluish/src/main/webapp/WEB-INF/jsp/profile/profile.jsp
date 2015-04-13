<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

	<style>
		#profile_space {
			width: 860px;
			height: 900px;
			
			margin: 0 auto;
			padding: 50px 50px;
			
			background-color: #FDFDFD;
			box-shadow: 5px 5px 5px 8px gray;
		}
		
		#profile_space > #profile_content {
			width: 800px;
			height: 900px;
			
			margin: 0 auto;
		}
		
		#profile_space > #profile_content > #profile_identity {
			height: 210px;
			margin: 0 auto;
		}
		
		#profile_photo {
			float: left;
			width: 156px;
		}
		
		#profile_info_basic {
			width: 600px;
			height: 210px;
			
			margin: 0 15px;
			
			float: left;
			
			
		}
		
		#profile_info_basic > #profile_info_basic_tbl {
			width: 630px;
			height: 210px;
			
			border-top: 5px solid black;
			border-bottom: 5px solid black;
		}
		
		#item{
			padding-left: 8px;
			background-color: #D8D8D8;
			font-weight: bold;
		}
		
		#info{
			padding-left: 8px;
		}
		
		#profile_info_etc {
			height: 650px;
			margin: 0 auto;
		}
		
		#profile_info_etc > #profile_info_academic_ability_tbl {
			width: 800px;
			height: 130px;
			
			border-top: 5px solid black;
			border-bottom: 5px solid black;
		}
		
		#item_ab{
			text-align: center;
			background-color: #D8D8D8;
			font-weight: bold;
		}
		
		#info_ab{
			text-align: center;
		}
		
		#profile_info_etc > #profile_info_army_tbl {
			width: 800px;
			height: 90px;
			
			border-top: 5px solid black;
			border-bottom: 5px solid black;
		}
		#item_ar {
			background-color: #D8D8D8;
			font-weight: bold;
			width: 100px;
			padding-left: 8px;
		}
		#info_ar{
			padding-left: 8px;
		}
		
		#profile_info_etc > #profile_info_edu_tbl {
			width: 800px;
			height: 90px;
			
			border-top: 5px solid black;
			border-bottom: 5px solid black;
		}
		
		#profile_info_etc > #profile_info_certificate_tbl {
			width: 800px;
			height: 90px;
			
			border-top: 5px solid black;
			border-bottom: 5px solid black;
		}
		
		#profile_info_title{
			font-weight: bold;
		}
	</style>
</head>
<body>
	<div id="profile_space">
		<div id="profile_content">
			<div id="profile_identity">
				<div id="profile_photo">
					<img src="../../../resources/images/profile/applyphoto.jpg">
				</div>
				<div id="profile_info_basic">
					<table id="profile_info_basic_tbl">
						<tr>
							<td id="item">성&nbsp;명</td>
							<td id="info">권&nbsp;혁&nbsp;재</td>
						</tr>
						<tr>
							<td id="item">국&nbsp;적</td>
							<td id="info">대한민국</td>
						</tr>
						<tr>
							<td id="item">전화번호</td>
							<td id="info">031.263.1225</td>
							<td id="item">휴대전화번호</td>
							<td id="info">010.9163.7845</td>
						</tr>
						<tr>
							<td id="item">생년월일</td>
							<td id="info">1989.05.29</td>
							<td id="item">성&nbsp;별</td>
							<td id="info">남성</td>
						</tr>
						<tr>
							<td id="item">이메일</td>
							<td id="info">hyukjae89@naver.com</td>
						</tr>
					</table>
				</div>
			</div>
			<br><br>
			<div id="profile_info_etc">
				<font id="profile_info_title">학력사항</font>
				<table id="profile_info_academic_ability_tbl">
					<tr>
						<td id="item_ab">학&nbsp;력</td>
						<td id="item_ab">학&nbsp;교</td>
						<td id="item_ab">입학년월</td>
						<td id="item_ab">졸업년월</td>
						<td id="item_ab">전&nbsp;공</td>
						<td id="item_ab">소재지</td>
						<td id="item_ab">졸업구분</td>
					</tr>
					<tr>
						<td id="info_ab">고등학교</td>
						<td id="info_ab">한솔고등학교</td>
						<td id="info_ab">2005.03</td>
						<td id="info_ab">2008.02</td>
						<td id="info_ab"></td>
						<td id="info_ab">경기</td>
						<td id="info_ab">졸업</td>
					</tr>
					<tr>
						<td id="info_ab">대학교</td>
						<td id="info_ab">단국대학교</td>
						<td id="info_ab">2008.03</td>
						<td id="info_ab">2015.02</td>
						<td id="info_ab">컴퓨터과학</td>
						<td id="info_ab">충남</td>
						<td id="info_ab">졸업</td>
					</tr>
				</table>
				<br><br>
				<font id="profile_info_title">병역사항</font>
				<table id="profile_info_army_tbl">
					<tr>
						<td id="item_ar">병역구분</td>
						<td id="info_ar" width="400px">병장&nbsp;만기제대</td>
						<td id="item_ar">군&nbsp;별</td>
						<td id="info_ar">육군</td>
					</tr>
					<tr>
						<td id="item_ar">복무기간</td>
						<td id="info_ar" colspan="3">2009.05.04&nbsp;~&nbsp;2011.03.05</td>
					</tr>
				</table>
				<br><br>
				<font id="profile_info_title">교육/연수</font>
				<table id="profile_info_edu_tbl">
					<tr>
						<td id="item_ar">과정명</td>
						<td id="info_ar" width="400px">[청년취업]Enterprise&nbsp;Java&nbsp;개발자</td>
						<td id="item_ar">기&nbsp;관</td>
						<td id="info_ar">삼성SDS</td>
					</tr>
					<tr>
						<td id="item_ar">기&nbsp;간</td>
						<td id="info_ar" colspan="3">2013.05.02&nbsp;~&nbsp;2013.12.31</td>
					</tr>
				</table>
				<br><br>
				<font id="profile_info_title">자격사항</font>
				<table id="profile_info_certificate_tbl">
					<tr>
						<td id="item_ar">자격증</td>
						<td id="info_ar" width="300px">정보처리기사</td>
						<td id="item_ar">등&nbsp;급</td>
						<td id="info_ar" width="300px">기사</td>
					</tr>
					<tr>
						<td id="item_ar">취득일</td>
						<td id="info_ar">2013.12.02</td>
						<td id="item_ar">발급기관</td>
						<td id="info_ar">한국산업인력공단</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>