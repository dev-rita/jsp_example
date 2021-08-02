<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 디렉티브</title>
</head>
<body>
<%
int number=10;
%>

<%@ include file="/jspStudy/includee.jspf" %>
<%--포함되어지는 파일의 확장자는 포함하는 파일 확장자와 구분하기 위해서 .jspf로 사용하는 경우가 있다.
그냥 jsp확장자로 해도 된다. jspf는 jsp의 소스코드 조각을 의미한다. --%>

공통변수 DATAFOLDER:"<%=dataFolder%>"
</body>
</html>