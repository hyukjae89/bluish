<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<style>
		#board_write_view_space{
			height: 1000px;
		}
		
		#board_write_name{
			border: 0;
			background-color: #EAEAEA;
			font-size: 15px;
		}
		
		#board_write_subject{
			border: 0;
			background-color: #EAEAEA;
			font-size: 15px;
		}
		
		#board_write_content{
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
	</style>
	
	<script>
		function boardSubmit(){
			if(document.boardWriteFrm.board_write_subject.value == ""){
				alert("제목을 입력해 주세요.");
				document.boardWriteFrm.board_write_subject.focus();
			}
			else if(document.boardWriteFrm.board_write_content.value == ""){
				alert("내용을 입력해 주세요.");
				document.boardWriteFrm.board_write_content.focus();
			}
			else{
				document.boardWriteFrm.submit();
			}
		}	
	</script>
</head>
<body>
	<div id="board_write_view_space">
		<form name="boardWriteFrm" method="post" action="boardwrite">
			<table id="board_write_tbl">
				<tr>
					<td id="info_item" width="110px">작성자</td>
					<td width="850px"><input type="text" id="board_write_name" name="name" value="${sessionScope.nameKey }"></td>
				</tr>
				
				<tr height="50px;">
					<td id="info_item" width="110px">제&nbsp;목</td>
					<td width="850px"><input type="text" id="board_write_subject" name="subject" size="120"></td>
				</tr>
				<tr><td colspan="2"><br><hr><br></td></tr>
				<tr>
					<td colspan="2"><textarea id="board_write_content" name="content"></textarea></td>
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
		</form>
	</div>
</body>
</html>