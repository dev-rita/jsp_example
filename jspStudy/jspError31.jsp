<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page errorPage="/error/viewErrorMessage.jsp" %>
<%--예외가 발생하면 errorPage속성에서 지정한 jsp에러페이지가 실행. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
name 파라미터 값:<%=request.getParameter("name").toUpperCase() %>
</body>
</html>