<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클라이언트(사용자, 웹브라우저) 및 서버 정보</title>
</head>
<body>
프로토콜(통신규약):<%=request.getProtocol() %><br/>
전송방식:<%=request.getMethod() %><br/>
요청 URI:<%=request.getRequestURI() %><br/>
컨텍스트 패스 경로:<%=request.getContextPath() %><br/>
서버이름:<%=request.getServerName() %><br/>
서버포트:<%=request.getServerPort() %><br/>
</body>
</html>