<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Portfolio</title>
	<!-- 콘텐츠 -->
	<style>
		* { 
			margin: 0; padding: 0; 
			font-family: 'Nanum Gothic Coding', serif;
			font-family: 'Play', sans-serif;
		}
		li { list-style: none; }
		a { text-decoration: none; }
		img { border: 0; }
		body{ background-color: #E1E1E1;}
	</style>
</head>
<body>
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header> 
	<div id="content">
		<article class="main_article">
			<jsp:include page="center.jsp"></jsp:include>
		</article>
	</div>
	<br>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>