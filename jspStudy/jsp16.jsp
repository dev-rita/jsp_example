<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page buffer="1kb" autoFlush="false" %>
<%-- buffer="1kb"는 버퍼크기, autoFlush="false"는 버퍼가 다 차면 예외 오류를 발생시키고 작업을 중지한다. --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%for (int i=1;i<=10;i++){ %>
5678
<%} //1000일 시 버퍼가 다 차서 예외오류가 발생%>
</body>
</html>