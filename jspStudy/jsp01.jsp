<%@ page contentType="text/html; charset=UTF-8"%><%-- <%@는 지시자. 파일형식과 언어코딩 타입 지정--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재시간</title>
</head>
<body>
지금:<%=new java.util.Date() %><%-- <%=는 jsp 스크립트 요소에서 표현식으로 출력용도로 활용된다. --%>
</body>
</html>