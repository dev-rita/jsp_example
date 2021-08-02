<%@ page contentType="text/html; charset=UTF-8"%>
<%
String type=request.getParameter("type");

if(type==null){
	return;//종료
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<hr/>
<table border="1">
<tr>
<th>타입</th>
<td><strong><%=type %></strong></td>
</tr>
<tr>
<th>특징</th>
<td>
<% if(type.equals("A")){ %>
강한 내구성
<%}else if(type.equals("B")){ %>
뛰어난 대처 능력
<%} %>
</td>
</tr>
</table>
</body>
</html>