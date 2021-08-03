<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 입력폼</title>
<script src="../js/jquery.js"></script>
<script>
function check(){
	$id=$.trim($('#id').val());//trim함수는 양쪽 공백 제거
	if($id.length==0){//length는 문자 길이, 첫 문자는 1부터 시작
		alert('아이디 입력!');
		$('#id').val('').focus();//아이디 입력박스 초기화 하고 포커스 이동
		return false;
	}
	
	if($.trim($('#name').val())==""){
		alert("이름을 입력!");
		$('#name').val("").focus();
		return false;
	}
	
	if($.trim($("#email").val())==""){
		alert("이메일을 입력하세요!");
		$("#email").val("").focus();
		return false;
	}
}
</script>
</head>
<body>
<form method="post" action="join_ok.jsp" onsubmit="return check();">
<h3>회원가입폼</h3>
아이디:<input type="text" name="id" id="id" size="14"/><br/><br/>
회원이름:<input type="text" name="name" id="name" size="14"/> <br/><br/>
이메일:<input type="text" name="email" id="email" size="26"/><hr/>
<input type="submit" value="회원가입"/>
<input type="reset" value="가입취소"/>
</form>
</body>
</html>