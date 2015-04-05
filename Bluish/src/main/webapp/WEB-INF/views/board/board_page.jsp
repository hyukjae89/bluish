<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<style>
		/* #board_space{
			height: 1100px;
		} */
	</style>
</head>
<body>
	<div id="board_space">
		<div id="board_list">
			<jsp:include page="board_entire_list.jsp"></jsp:include>
		</div>
		<br>
		<div id="board_view">
			<jsp:include page="${board_view }"></jsp:include>
		</div>
	</div>
</body>
</html>