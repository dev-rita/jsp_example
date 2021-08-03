<%@ page contentType="text/html; charset=UTF-8"%>
<jsp:useBean id="member" class="com.abc.vo.MemberInfo" scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%=member.getName() %>(<%=member.getId() %>) 회원님 안녕하세요.
</body>
</html>