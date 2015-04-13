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
							<td id="item">��&nbsp;��</td>
							<td id="info">��&nbsp;��&nbsp;��</td>
						</tr>
						<tr>
							<td id="item">��&nbsp;��</td>
							<td id="info">���ѹα�</td>
						</tr>
						<tr>
							<td id="item">��ȭ��ȣ</td>
							<td id="info">031.263.1225</td>
							<td id="item">�޴���ȭ��ȣ</td>
							<td id="info">010.9163.7845</td>
						</tr>
						<tr>
							<td id="item">�������</td>
							<td id="info">1989.05.29</td>
							<td id="item">��&nbsp;��</td>
							<td id="info">����</td>
						</tr>
						<tr>
							<td id="item">�̸���</td>
							<td id="info">hyukjae89@naver.com</td>
						</tr>
					</table>
				</div>
			</div>
			<br><br>
			<div id="profile_info_etc">
				<font id="profile_info_title">�з»���</font>
				<table id="profile_info_academic_ability_tbl">
					<tr>
						<td id="item_ab">��&nbsp;��</td>
						<td id="item_ab">��&nbsp;��</td>
						<td id="item_ab">���г��</td>
						<td id="item_ab">�������</td>
						<td id="item_ab">��&nbsp;��</td>
						<td id="item_ab">������</td>
						<td id="item_ab">��������</td>
					</tr>
					<tr>
						<td id="info_ab">����б�</td>
						<td id="info_ab">�Ѽְ���б�</td>
						<td id="info_ab">2005.03</td>
						<td id="info_ab">2008.02</td>
						<td id="info_ab"></td>
						<td id="info_ab">���</td>
						<td id="info_ab">����</td>
					</tr>
					<tr>
						<td id="info_ab">���б�</td>
						<td id="info_ab">�ܱ����б�</td>
						<td id="info_ab">2008.03</td>
						<td id="info_ab">2015.02</td>
						<td id="info_ab">��ǻ�Ͱ���</td>
						<td id="info_ab">�泲</td>
						<td id="info_ab">����</td>
					</tr>
				</table>
				<br><br>
				<font id="profile_info_title">��������</font>
				<table id="profile_info_army_tbl">
					<tr>
						<td id="item_ar">��������</td>
						<td id="info_ar" width="400px">����&nbsp;��������</td>
						<td id="item_ar">��&nbsp;��</td>
						<td id="info_ar">����</td>
					</tr>
					<tr>
						<td id="item_ar">�����Ⱓ</td>
						<td id="info_ar" colspan="3">2009.05.04&nbsp;~&nbsp;2011.03.05</td>
					</tr>
				</table>
				<br><br>
				<font id="profile_info_title">����/����</font>
				<table id="profile_info_edu_tbl">
					<tr>
						<td id="item_ar">������</td>
						<td id="info_ar" width="400px">[û�����]Enterprise&nbsp;Java&nbsp;������</td>
						<td id="item_ar">��&nbsp;��</td>
						<td id="info_ar">�ＺSDS</td>
					</tr>
					<tr>
						<td id="item_ar">��&nbsp;��</td>
						<td id="info_ar" colspan="3">2013.05.02&nbsp;~&nbsp;2013.12.31</td>
					</tr>
				</table>
				<br><br>
				<font id="profile_info_title">�ڰݻ���</font>
				<table id="profile_info_certificate_tbl">
					<tr>
						<td id="item_ar">�ڰ���</td>
						<td id="info_ar" width="300px">����ó�����</td>
						<td id="item_ar">��&nbsp;��</td>
						<td id="info_ar" width="300px">���</td>
					</tr>
					<tr>
						<td id="item_ar">�����</td>
						<td id="info_ar">2013.12.02</td>
						<td id="item_ar">�߱ޱ��</td>
						<td id="info_ar">�ѱ�����η°���</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>