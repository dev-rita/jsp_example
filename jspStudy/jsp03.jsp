<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date" %><%--외부 패키지 클래스등을 읽어들이는 임포트 --%>
<%
//이 영역을 jsp 스크립트 요소에서 스크립트 릿이라고 한다. 자바 문법을 따라간다.
Date now=new Date();//날짜 객체 생성
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간</title>
</head>
<body>
현재 시간:<%=now %><hr/>
</body>
</html>