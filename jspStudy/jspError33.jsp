<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page buffer="1kb" %>
<%@ page errorPage="/error/viewErrorMessage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>버퍼 플러시 이후 에러 발생 결과</title>
</head>
<body>
<%
for(int i=1;i<=300;i++){
	out.println(i);
}
%>
<%=10/0 %><%-- 정상 상태 출력과 예외 에러가 함께 발생 --%>
</body>
</html>