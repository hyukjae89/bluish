<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<style>
		#board_list_space{
			height: 50px;
		}
		
		#board_list_space > #board_list_tbl{
			width: 960px;
			height: 50px;
		}
		
		#board_item {
			width: 120px;
			background-color: #3D3D3D;
			color: white; 
			cursor: pointer;
			
		}
		
	</style>
	
	<script>
		function boardEnter(board, category){
			document.boardFrm.action = board;
			document.boardFrm.category.value = category;
			document.boardFrm.submit();
		}
	</script>
</head>
<body>
	<div id="board_list_space">
		<table id="board_list_tbl">
			<tr align="center">
				<td id="board_item" onclick="boardEnter('boardlist', 'java')">Java</td>
				<td id="board_item" onclick="boardEnter('boardlist', 'jsp')">Jsp</td>
				<td id="board_item" onclick="boardEnter('boardlist', 'spring')">Spring</td>
				<td id="board_item" onclick="boardEnter('boardlist', 'javascript')">Javascript</td>
				<td id="board_item" onclick="boardEnter('boardlist', 'html5css')">HTML5+CSS</td>
				<td id="board_item" onclick="boardEnter('boardlist', 'android')">Android</td>
				<td id="board_item" onclick="boardEnter('boardlist', 'datastructure')">자료구조</td>
				<td id="board_item" onclick="boardEnter('boardlist', 'algorithm')">알고리즘</td>
			</tr>
		</table>
	</div>
	<form name="boardFrm" method="get">
		<input type="hidden" name="pageNum" value="1">
		<input type="hidden" name="category">
	</form>
</body>
</html>