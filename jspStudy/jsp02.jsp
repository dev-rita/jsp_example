<%@ page contentType="text/html; charset=UTF-8"%>
<%-- < contentType="text/html; charset=UTF-8는 웹브라우저에 출력되는 문자/태그 와 언어 코딩 타입을 설정.--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HTML 문서의 제목</title>
</head>
<body>
<% 
//해당 영역을 스크립트 릿이라고 한다.자바문법을 따라간다.
	String bookTitle="JSP 웹 서버 프로그래밍";
	String author="홍길동";
%>
<strong><%=bookTitle %></strong>(저자명:<%=author %>)
<hr/>
</body>
</html>