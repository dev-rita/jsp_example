<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재시간</title>
</head>
<body>
<%
 Calendar c=(Calendar)request.getAttribute("time");//time속성 키 이름에 저장된 캘린더를 구함
 
 int year=c.get(Calendar.YEAR);
 int month=c.get(Calendar.MONTH)+1;//월 값에 +1을 한 이유는 1월이 0으로 반환되기 때문이다.
 int date=c.get(Calendar.DATE);
 int hour=c.get(Calendar.HOUR_OF_DAY);//24시간 값
 int minute=c.get(Calendar.MINUTE);
 int second=c.get(Calendar.SECOND);
 
 out.println(year+"년"+month+"월"+date+"일<hr/>");
 out.println(hour+"시"+minute+"분"+second+"초 입니다.");
%>
</body>
</html>