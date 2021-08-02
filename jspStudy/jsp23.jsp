<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
서버정보: <%=application.getServerInfo() %><hr/>
서블릿 메이저 버전:<%=application.getMajorVersion() %><hr/>
서블릿 마이너 버전:<%=application.getMinorVersion() %><hr/>
<%--서블릿 메이저버전.마이너버전=>4.0 --%>
</body>
</html>