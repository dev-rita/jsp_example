<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="util.Cookies" %>
<%
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	if(id.equals(pwd)){//로그인 성공 판단 기준
		response.addCookie(Cookies.createCookie("AUTH",id,"/",-1));//쿠키 이름, 쿠키값, 경로, 유효기간을 가진 쿠키 추가
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>로그인에 성공했습니다!</h3>
<%} else{ %>
<script>
alert('로그인에 실패했습니다!');
history.back();//history.go(-1)과 같다. 뒤로 한칸 이동
</script>
<%} %>
</body>
</html>