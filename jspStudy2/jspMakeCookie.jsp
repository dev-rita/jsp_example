<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Cookie cookie=new Cookie("name","홍길동");//쿠키이름 name, 쿠키값 홍길동으로 하는 쿠키 객체 생성
	response.addCookie(cookie);//쿠키 추가
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성</title>
</head>
<body>
쿠키이름:<%=cookie.getName()%>, 쿠키값:"<strong><%=cookie.getValue()%></strong>"
</body>
</html>