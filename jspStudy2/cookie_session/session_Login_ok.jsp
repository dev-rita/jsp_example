<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");//method="post"로 전달되는 한글을 서버에서 받을 때 안깨지게 한다.
	
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	
	if(id.equals(pwd)){//내용물만 같아도 참
		session.setAttribute("id",id);//세션 id 속성 키 이름에 id 값 저장
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
<h3>로그인에 성공했습니다!</h3>
<% }else{ %>
<script>
alert("로그인에 실패했습니다!");
history.go(-1);//history.back()과 같다. 뒤로 한칸 이동한다.
</script>
<%} %>
</body>
</html>