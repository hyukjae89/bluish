<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<style>
		#login_view{
			height: 850px;
		}
		
		#login_tbl{
			margin: 0 auto;
			font-size: 30px;
		}
		
		#login_fail_content{
			height: 50px;
			margin: 0 auto;
			font-size: 15px;
			text-align: center;
		}
		
		#ok{
			width: 50px;
			height: 35px;
			background-color: white;
			border-radius: 50px;
			text-align: center;
			padding-top: 15px;
			
			cursor: pointer;
		}
	</style>
	<script>
		function memberCheck(){
			if(document.memberLoginFrm.id.value == ""){
				alert("ID를 입력해 주세요.");
				document.memberLoginFrm.id.focus();
			}
			else if(document.memberLoginFrm.pass.value == ""){
				alert("비밀번호를 입력해 주세요.");
				document.memberLoginFrm.pass.focus();
			}
			else{
				document.memberLoginFrm.submit();
			}
		}	
	</script>
</head>
<body>
	<div id="login_view">
		<div id="login_content">
			<br><br><br><br><br><br><br><br><br><br><br>
			<div id="login_fail_content">
				${login_fail_mention }
			</div>
			<form name="memberLoginFrm" method="post" action="membercheck">
				<table id="login_tbl">
					<tr>
						<td colspan="6"><hr><br></td>
					</tr>
					<tr>
						<td>ID&nbsp;&nbsp;</td>
						<td><input type="text" name="id"></td>
						<td colspan="2">&nbsp;</td>
						<td rowspan="2"><div id="ok" onclick="memberCheck()"><font size="3px;">Login</font></div></td> 
					</tr>
					<tr>
						<td>Password&nbsp;&nbsp;</td>
						<td><input type="password" name="pass"></td>
					</tr>
					<tr>
						<td colspan="6"><br><hr></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>