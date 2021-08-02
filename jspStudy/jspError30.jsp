<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
name 파라미터 값:
<% try{ %>
<%=request.getParameter("name").toUpperCase() %>
<%--http://localhost:8084/Njsp01/jspStudy/jspError30.jsp?name=d로 값을 줘야함 --%>
<%}catch(Exception ex){ %>
name 파라미터값이 없습니다.
<%} %>
</body>
</html>