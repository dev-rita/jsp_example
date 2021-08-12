<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>컨트롤러를 통한 뷰페이지 연습</title>
<script src="./js/jquery.js"></script>
<script>
function check(){
	if($.trim($('#title').val())==''){
		alert('제목입력!');
		$('#title').val('').focus();
		return false;
	}
	
	if($.trim($('#content').val())==''){
		alert('내용입력!');
		$('#content').val('').focus();
		return false;
	}
}
</script>
</head>
<body>
<form method="post" action="/MVC/postOK" onsubmit="return check();">
<%-- action속성값의 MVC/postOK에서 /MVC는 컨텍스트 패스 경로, /postOK는 매핑주소. --%> 
제목:<input type="text" name="title" id="title" size="36"/><p>
내용:<textarea name="content" id="content" rows="10" cols="36"></textarea>
<hr/>
<input type="submit" value="전송"/>
<input type="reset" value="취소"/>
</form>
</body>
</html>