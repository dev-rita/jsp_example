<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 기본 객체 속성 보기</title>
</head>
<body>
<%
Enumeration<String> attrEnum=application.getAttributeNames();//속성 이름 목록을 구함.

while(attrEnum.hasMoreElements()){
	String name=attrEnum.nextElement();//키 속성 이름을 구함
	Object value=application.getAttribute(name);//키 속성 이름에 대한 값을 구함
	
	out.println("application 속성:<b>"+name+"</b>="+value+"<br/>");
}
%>
</body>
</html>