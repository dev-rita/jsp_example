<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Cookie cookie=new Cookie("oneh","1time");
	cookie.setMaxAge(60*60);//60ch(1분)*60=1시간 쿠키 유효시간, 초단위 설정
	response.addCookie(cookie);//쿠키추가
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>쿠키 유효시간이 1시간으로 설정. 쿠키이름은 oneh</h3>
</body>
</html>