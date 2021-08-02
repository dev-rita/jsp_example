<%@ page contentType="text/html; charset=UTF-8"%>
<%!
public int multiply(int a, int b){
	int result=a*b;
	return result;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언부를 사용한 두 정수값의 곲</title>
</head>
<body>
10*25=<strong><%=multiply(10,20) %></strong>
</body>
</html>