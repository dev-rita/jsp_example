<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="util.Cookies" %>
<%
	Cookies cookies=new Cookies(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 여부 판단</title>
</head>
<body>
<%
	if(cookies.exists("AUTH")){
%>
아이디 "<%=cookies.getValue("AUTH") %>"로 로그인 한 상태
<%--getValue()로 AUTH 쿠키이름에 대한 쿠키값을 구함. --%>
<%} else{ %>
로그인 하지 않은 상태
<%} %>
</body>
</html>