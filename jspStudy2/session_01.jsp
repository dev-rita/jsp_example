<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="true" %><%--세션을 true로 지정해서 해당 페이지에 세션을 사용할 수 있게 한다. (기본 값은 true이기 때문에 생략 가능하다.) --%>
<%@ page import="java.util.Date,java.text.*" %>
<%
	Date time=new Date();
	SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//날짜 시간 출력형태 포맷 지정
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션정보</title>
</head>
<body>
세션id:<%=session.getId() %><hr/>
<%
	time.setTime(session.getCreationTime());//세션 생성 시간
%>
세션 생성 시간:<%=formatter.format(time) %><hr/>
<%
	time.setTime(session.getLastAccessedTime());//세션에 마지막으로 접근한 시간
%>
최근 접근시간:<%=formatter.format(time) %>
</body>
</html>