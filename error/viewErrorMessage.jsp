<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page isErrorPage="true" %><%--isErrorPage="true"로 지정하면 해당 jsp페이지는 에러페이지가 된다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
요청 처리 과정에서 에러가 발생하였습니다.<br/>
빠른 시간 내에 문제를 해결하도록 하겠습니다.
<hr/>
에러타입 : <%=exception.getClass().getName()%><br/>
에러메시지:<B><%=exception.getMessage() %></B><hr/>
</body>
</html>