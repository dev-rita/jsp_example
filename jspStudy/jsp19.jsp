<%@ page contentType="text/html; charset=UTF-8"%>
<%
int grade=13;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<% if(grade>10) {%>
A학점
<%} else if(grade>5){ %>
B학점
<%} %>
<hr/>
<%if(grade>10) {
	out.println("A학점");
}else if(grade>5){
	out.println("B학점");
}
%>
</body>
</html>