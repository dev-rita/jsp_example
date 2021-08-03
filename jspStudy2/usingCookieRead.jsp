<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="util.Cookies" %>
<%
	Cookies cookies=new Cookies(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
name 쿠키:<%=cookies.getValue("name") %><hr/>
<% if(cookies.exists("id")){%>
id 쿠키:<%=cookies.getValue("id") %><hr/>
<% }%>
</body>
</html>