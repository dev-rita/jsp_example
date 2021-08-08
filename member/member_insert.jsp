<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
<script src="../js/jquery.js"></script><%--../는 한단계 상위 폴더로 이동 --%>
<script>
function check(){
	if($.trim($('#mem_id').val())==""){
		alert('아이디를 입력하세요!');
		$('#mem_id').val('').focus();
		return false;
	}
	
	if($.trim($('#mem_pwd').val())==""){
		alert('비번을 입력하세요!');
		$('#mem_pwd').val('').focus();
		return false;
	}
	
	if($.trim($('#mem_name').val())==""){
		alert('이름을 입력하세요!');
		$('#mem_name').val('').focus();
		return false;
	}
	
	if($.trim($('#mem_email').val())==""){
		alert('이메일을 입력하세요!');
		$('#mem_email').val('').focus();
		return false;
	}
}
</script>
</head>
<body>
<form method="post" action="member_insert_ok.jsp" onsubmit="return check();">
<table border="1">
<tr>
<th>아이디</th> <td><input name="mem_id" id="mem_id" size="14" /></td>
<%-- type 을 생략하면 기본으로 text이다. --%>
<th>비밀번호</th> <td><input type="password" name="mem_pwd" id="mem_pwd" size="14"/></td>
</tr>
<tr>
<th>회원이름</th><td><input name="mem_name" id="mem_name" size="14"/></td>
<th>이메일</th><td><input name="mem_email" id="mem_email" size="30"/></td>
</tr>

<tr>
<th colspan="4">
<input type="Submit" value="회원가입"/>
<input type="Reset" value="가입취소"/>
</th>
</tr>
</table>
</form>
</body>
</html>