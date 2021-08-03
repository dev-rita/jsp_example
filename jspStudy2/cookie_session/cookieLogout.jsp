<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="util.Cookies" %>
<%
	response.addCookie(Cookies.createCookie("AUTH","","/",0));//쿠키이름, 쿠키값, 경로, 유효기간을 0으로 하면서 쿠키 만료 즉 로그아웃
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<h3>로그아웃 되었습니다.</h3>
</body>
</html> 