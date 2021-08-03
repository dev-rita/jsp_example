<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="util.Cookies" %>
<%
	response.addCookie(Cookies.createCookie("name","홍길동"));//쿠키이름, 값을 가진 쿠키 추가
	response.addCookie(Cookies.createCookie("id","abc56789","/Njsp01",-1));//쿠키이름, 값, 경로, 유효기간을 설정한 쿠키 추가
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>쿠키생성</h3>
</body>
</html>