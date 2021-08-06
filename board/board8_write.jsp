<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기</title>
<script src="../js/jquery.js"></script>
<script>
function w_check(){
	if($.trim($("#b_name").val()).length==0){
		alert("글쓴이를 입력하세요!");
		$("#b_name").val("").focus();//입력필드를 초기화하고 포커스 이동
		return false;
	}
	
	if($.trim($("#b_title").val()).length==0){
		alert("글제목을 입력하세요!");
		$("#b_title").val("").focus();//입력필드를 초기화하고 포커스 이동
		return false;
	}
	
	if($.trim($("#b_pwd").val()).length==0){
		alert("비밀번호를 입력하세요!");
		$("#b_pwd").val("").focus();//입력필드를 초기화하고 포커스 이동
		return false;
	}
	
	if($.trim($("#b_cont").val()).length==0){
		alert("내용을 입력하세요!");
		$("#b_cont").val("").focus();//입력필드를 초기화하고 포커스 이동
		return false;
	}
}
</script>
</head>
<body>
<form method="post" action="board8_ok.jsp" onsubmit="return w_check();">
글쓴이:<input name="b_name" id="b_name" size="14"/><br/><br/>
<%--type 속성을 생략하면 기본값으로 text이다. --%>
글제목:<input type="text" name="b_title" id="b_title" size="36"/><br/><br/>
비밀번호:<input type="password" name="b_pwd" id="b_pwd" size="14"/><br/><br/>
글내용:<textarea name="b_cont" id="b_cont" rows="10" cols="36"></textarea>
<hr/>
<input type="submit" value='전송'/>
<input type="reset" value="취소"/>
</form>
</body>
</html>