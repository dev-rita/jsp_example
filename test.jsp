<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
서버정보 
<%=application.getServerInfo() %>

서블릿정보
<%=application.getMajorVersion()%>.<%= application.getMinorVersion() %>

JSP정보
<%= JspFactory.getDefaultFactory().getEngineInfo().getSpecificationVersion() %>
</body>
</html>