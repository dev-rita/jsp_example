<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
<script src="../../js/jquery.js"></script>
<script>
function login_check(){
	$id=$.trim($('#id').val());//trim()함수는 양쪽 공백을 제거
	if($id.length==0){
		alert("로그인 아이디를 입력하세요!");
		$('#id').val('').focus();
		return false;
	}
	
	if($.trim($('#pwd').val())==""){
		alert("로그인 비번을 입력하세요!");
		$('#pwd').val('').focus();
		return false;
	}
}
</script>
</head>
<body>
<form method="post" action="session_Login_ok.jsp" onsubmit="return login_check();">
아이디 :<input type="text" name="id" id="id" size="14"/>
비밀번호 : <input type="password" name="pwd" id="pwd" size="14"/>
<input type="submit" value="로그인"/>
</form>
</body>
</html>