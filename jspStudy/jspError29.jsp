<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
name 파라미터 값 출력:<%=request.getParameter("name").toUpperCase() %>
<%--http://localhost:8084/Njsp01/jspStudy/jspError29.jsp?name=d 쿼리문으로 name값을 넘겨야함 --%>
</body>
</html>