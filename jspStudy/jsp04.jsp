<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar 클래스 사용</title>
</head>
<body>
<%
	Calendar cal=Calendar.getInstance();//캘린더는 추상클래스로 new연산 키워드로 객체생성을 못한다.
%>
오늘은 <strong>
<%= cal.get(Calendar.YEAR) %>년&nbsp;<%--&nbsp;는 한칸의 빈공백 처리 --%>
<%= cal.get(Calendar.MONTH)+1 %>월&nbsp;<%--+1을 한 이유는 1월이 0으로 반환되기 때문 --%>
<%= cal.get(Calendar.DATE) %>일
</strong>입니다.
</body>
</html>