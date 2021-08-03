<%@ page contentType="text/html; charset=UTF-8"%>
<%
	session.invalidate();//세션 종료 즉 만료 =>로그아웃
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>세션이 종료 되었습니다!</h3>
</body>
</html>