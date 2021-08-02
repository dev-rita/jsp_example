<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String name=request.getParameter("name");
	String value=request.getParameter("value");//name,value 파라미터 값을 전달 받아서 저장

	if(name != null && value != null){
		application.setAttribute(name,value);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application속성 설정</title>
</head>
<body>
<%
	if(name!=null && value != null){
%>
application 기본 객체의 속성 설정:<br/>
name:<%= name %> = value:<%=value %><br/>
application.getAttribute(name) = <%=application.getAttribute(name) %><br/>
application.getAttribute(value)= <%=application.getAttribute(value) %> 
<%}else{%>
application 기본 객체의 속성 설정 안함.
<% }%>
</body>
</html>