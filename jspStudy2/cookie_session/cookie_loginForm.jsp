<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 로그인 폼</title>
<script src="../../js/jquery.js"></script><%--../../는 두 단계 상위 폴더 --%>
<script>
function login_check(){
	if($.trim($("#id").val())==""){
		alert("로그인 아이디를 입력하세요!");
		$('#id').val('').focus();//아이디 입력박스 초기화(val(''))하고 포커스 이동
		return false;
	}
	
	if($.trim($("#pwd").val()).length==0){
		alert("로그인 비번을 입력하세요!");
		$('#pwd').val('').focus();
		return false;
	}
}
</script>
</head>
<body>
<form method="post" action="cookie_LoginOk.jsp" onsubmit="return login_check();">
아이디:<input type="text" name="id" id="id" size="14"/>
비밀번호:<input type="password" name="pwd" id="pwd" size="14"/>
<input type="submit" value="로그인"/>
</form>
</body>
</html>