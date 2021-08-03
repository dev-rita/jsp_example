<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String writer=request.getParameter("writer");
	String title=request.getParameter("title");
	String cont=request.getParameter("cont");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
작성자:<%=writer %><hr/>
제목:<%out.println(title+"<hr/>"); %>
글 내용:<%=cont %>
</body>
</html>