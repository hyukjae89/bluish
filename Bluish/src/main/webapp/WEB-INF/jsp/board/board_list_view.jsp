<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<style>
		#board_view_space{
			height: 780px;
		}
		
		#board_top_tbl{
			width: 960px;
		}
		
		#board_content_tbl{
			width: 960px;
		}
		
		#board_top_tbl{
			width: 960px;
	 		height: 20px; 
		}
		#board_list_tbl{
			width: 960px;
		}
		
		#atag_subject{
			color: black;
		}
		a{
			color: black;
		} 
		a:VISITED {
			color: black;
		}
	</style>
	
	<script>
		window.onload = function() {
			var tar = document.getElementsByTagName('table');
			
			for (var i = 0; i < 3; i++) {
				tar[i].style.height = tar[i].scrollHeight;
			}
			tar[4].style.height = tar[4].scrollHeight;	// board_list_tbl 높이 설정
		}
	</script>
</head>
<body>
	<div id="board_view_space">
		<table id="board_top_tbl">
			<tr>
				<td>Total : ${totalRecord} Articles(<font color="red">${nowPage}/${totalPage}Pages</font>)</td>
			</tr>
		</table>
		<table id="board_content_tbl">
			<tr>
				<td>
					<table id="board_top_tbl">
						<tr align="center" bgcolor="#D0D0D0">
							<td width="80px">번  호</td>
							<td width="700px">제  목</td>
							<td width="100px">날  짜</td>
							<td width="80px">조회수</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table id="board_list_tbl">
						<c:forEach var="bean" items="${listBean}">
						<tr>
							<td width="80px" align="center">
								<c:out value="${number}"></c:out>
								<c:set var="number" value="${number-1 }"></c:set>
							</td>
							<td width="700px">
								<c:set var="width" value="0"/>
								<c:if test="${bean.getPos() > 0 }">
										<c:set var="width" value="${1*bean.getRef()}"/>
										<c:forEach	var="i" begin="0" end="${width }">
											<c:out value="-"/> 								
										</c:forEach>
								</c:if> 
								<a id="atag_subject" href="boardinfo?num=${bean.getNum()}&category=${category}">${bean.getSubject()} </a>
							</td>
							<td width="100px" align="center">${ bean.getRegdate() }</td>
							<td width="80px" align="center">${ bean.getCount() }</td>
						</tr>
						<tr>
							<td colspan="4"><br></td>
						</tr>
						</c:forEach>
					</table>
				</td>
			</tr>
			<tr>
				<td><br></td>
			</tr>
			<tr>
				<td align="right"><a href="boardwrite?category=${category}">글쓰기</a></td>
			</tr>
			<tr>
				<td align="center">
					<c:if test="${totalRecord > 0 }">
						<c:set var="startPage" value="1" />
						<fmt:parseNumber value="${nowPage/10 }" integerOnly="true" var="result" />
						<c:if test="${nowPage%10 != 0 }">
							<c:set var="startPage" value="${result*10+1 }" />
						</c:if>
						<c:if test="${nowPage%10 == 0 }">
							<c:set var="startPage" value="${(result-1)*10+1 }" />
						</c:if>
						<!-- 화면아래 페이징 처리를 해야한는 소스를 작성  -->
						<c:set var="endPage" value="${startPage+pagePerBlock-1 }" />
						<c:if test="${endPage>pageCount }">
							<c:set var="endPage" value="${pageCount }" />
						</c:if>
						<c:if test="${startPage >10  }">
							<a href="boardlist?pageNum=${startPage-10}&category=${category}">[이전]</a>
						</c:if>
						<c:forEach var="m" begin="${startPage }" end="${endPage }">
							<a href="boardlist?pageNum=${m}&category=${category}">[${m}]</a>
						</c:forEach>
						<c:if test="${endPage <pageCount  }">
							<a href="boardlist?pageNum=${startPage+10}&category=${category}">[다음]</a>
						</c:if>
					</c:if>
				</td>
			</tr>
		</table>
		<hr>
	</div>
</body>
</html>