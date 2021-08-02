<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext 기본 객체</title>
</head>
<body>
<%
 HttpServletRequest httpRequest=(HttpServletRequest)pageContext.getRequest();
//HttpServletRequest 서블릿은 사용자 폼에서 입력한 정보를 서버로 가져올 때 사용한다.
%>
request jsp 기본객체와 pageContext.getRequest()의 동일 여부: <%=request==httpRequest %><hr/>
pageContext.getOut()메소드를 이용한 데이터 출력:
<%
pageContext.getOut().println("안녕하세요");
//out.println()과 같다.
%>
</body>
</html>