<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	java.util.Calendar cal=java.util.Calendar.getInstance();
	
	int year=cal.get(java.util.Calendar.YEAR);
	int month=cal.get(java.util.Calendar.MONTH)+1;
	int date=cal.get(java.util.Calendar.DATE);
	
	out.println("<strong>"+year+"년 "+month+"월 "+date+"일 입니다.</strong><hr/>");
%>
</body>
</html>