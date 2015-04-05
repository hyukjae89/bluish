<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<style>
		#board_update_view_space{
			height: 1000px;
		}
		
		#board_update_name{
			border: 0;
			background-color: #EAEAEA;
			font-size: 15px;
		}
		
		#board_update_subject{
			border: 0;
			background-color: #EAEAEA;
			font-size: 15px;
		}
		
		#board_update_content{
			width: 960px;
			height: 700px;
			border: 0;
			background-color: #EAEAEA;
			font-size: 15px;
		}
		
		#info_item{
 			font-weight: bold;
 		}
 		
 		#btn{
 			float: left;
 			border: 1px solid black;
 		}
 		
 		textarea{
 			resize: none;
 		}
	</style>
	
	<script>
		function boardSubmit(){
			if(document.boardUpdateFrm.board_update_subject.value == ""){
				alert("제목을 입력해 주세요.");
				document.boardUpdateFrm.board_update_subject.focus();
			}
			else if(document.boardUpdateFrm.board_update_content.value == ""){
				alert("내용을 입력해 주세요.");
				document.boardUpdateFrm.board_update_content.focus();
			}
			else{
				document.boardUpdateFrm.submit();
			}
		}	
	</script>
</head>
<body>
	<div id="board_update_view_space">
		<form name="boardUpdateFrm" method="post" action="boardupdate">
			<table id="board_update_tbl">
				<tr>
					<td id="info_item" width="110px">작성자</td>
					<td width="850px"><input type="text" id="board_update_name" name="name" value="${sessionScope.nameKey }"></td>
				</tr>
				
				<tr height="50px;">
					<td id="info_item" width="110px">제&nbsp;목</td>
					<td width="850px"><input type="text" id="board_update_subject" name="subject" size="120" value="${subject }"></td>
				</tr>
				<tr><td colspan="2"><br><hr><br></td></tr>
				<tr>
					<td colspan="2"><textarea id="board_update_content" name="content">${content }</textarea></td>
				</tr>
				<tr>
					<td colspan="2"><br></td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<input type="button" value="확인" onclick="boardSubmit()">&nbsp;&nbsp;<input type="button" value="취소">
					</td>
				</tr>
			</table>
			<input type="hidden" name="category" value="${category }">
			<input type="hidden" name="num" value="${num }">
		</form>
	</div>
</body>
</html>