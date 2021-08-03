<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String id=(String)session.getAttribute("id");//세션 아이디값을 Object타입으로 구했기 때문에 다운캐스팅해 좌측 변수에 저장시킴
	boolean result=id==null?false:true;//3항 조건 연산자
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 여부 검사</title>
</head>
<body>
<%if(result){//==true가 생략됨 %>
아이디="<%=id %>"로 로그인 한 상태
<%}else{ %>
로그인 하지 않은 상태
<%} %>
</body>
</html>