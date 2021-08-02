<%@ page contentType="text/html; charset=UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");//method=post로 전달된 한글 자료를 서버에서 받을 때 안께지게 한다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
include 되기 전 name 파라미터 값:<%=request.getParameter("name") %>
<hr/>

<jsp:include page="body_sub.jsp" flush="false">
<jsp:param value="홍길동" name="name"/>
</jsp:include>

<hr/>
include 된 후 name 파라미터 값:<%=request.getParameter("name") %>
</body>
</html>