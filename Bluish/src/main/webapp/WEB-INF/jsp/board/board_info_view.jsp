<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<style>
		#board_info_view_space{
		}
		
		#board_info_tbl{
			width: 960px;
		}
		
		#board_info_content{
			/* overflow-y: scroll; */
			overflow: hidden;
			width: 960px;
			border: 0;
 			background-color: #E1E1E1;
 			
 			font-size: 15px;
 		}
 		
 		#info_item{
 			font-weight: bold;
 		}
 		textarea{
 			resize: none;
 		}
 		
 		#btn_space{
 			width: 960px;
 			height: 30px;
 		}
 		#btn{
 			width: 120px;
 			height: 25px;
 			float: right;
 		}
 		
 		#deleteBtn{
 			width: 50px;
 			background-color: grey;
 			text-align: center;
 			float: left;
 			cursor: pointer;
 		}
 		#updateBtn{
 			width: 50px;
 			background-color: grey;
 			text-align: center;
 			float: right;
 			cursor: pointer;
 		}
	</style>
	
	<script>
		window.onload = function() {
			var tar = document.getElementsByTagName('textarea');
			var dynHeight = 0;
			
			for (var i = 0; i < tar.length; i++) {
				tar[i].style.height = tar[i].scrollHeight;
				dynHeight += tar[i].scrollHeight;
			}
			
			var view_space = document.getElementById('board_info_view_space');
			
			if(dynHeight < 780){
				view_space.style.height = 780+"px";
			}
		};
		
		function deleteboard(category){
			document.deleteFrm.category.value = category;
			document.deleteFrm.submit();
		};
		
		function updateboard(category){
			document.updateFrm.category.value = category;
			document.updateFrm.submit();
		};
	</script>
</head>
<body>
	<div id="board_info_view_space">
		<table id="board_info_tbl">
			<tr>
				<td id="info_item" width="110px">작성자</td>
				<td width="510px">${bean.getName() }</td>
				<td id="info_item" width="110px" align="center">날&nbsp;짜</td>
				<td width="110px" align="center">${bean.getRegdate() }</td>
				<td id="info_item" width="60px" align="center">조회수</td>
				<td width="60px" align="center">${bean.getCount() }</td>
			</tr>
			
			<tr>
				<td id="info_item" width="110px">제&nbsp;목</td>
				<td colspan="5">${bean.getSubject() }</td>
			</tr>
			<tr><td colspan="6"><br><hr><br></td></tr>
			<tr>
				<td  colspan="6"><textarea id="board_info_content" readonly="readonly">${bean.getContent() }</textarea></td>
			</tr>
		</table>
		<br>
		<div id="btn_space">
			<div id="btn">
				<div id="deleteBtn" onclick="deleteboard('${category }')"><font size="4px" color="white">삭제</font></div>
				<div id="updateBtn" onclick="updateboard('${category }')"><font size="4px" color="white">수정</font></div>
			</div>
		</div>
	</div>
	<form name="deleteFrm" action="boarddelete" method="post">
		<input type="hidden" name="num" value="${num}">
		<input type="hidden" name="category">
	</form>
	<form name="updateFrm" action="boardupdateview" method="post">
		<input type="hidden" name="num" value="${num}">
		<input type="hidden" name="category">
	</form>
</body>
</html>