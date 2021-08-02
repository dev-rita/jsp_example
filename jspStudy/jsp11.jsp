<%@ page contentType="text/html; charset=UTF-8"%>
<%!
//선언문 영역
public int add(int a, int b){
	int result=a+b;
	return result;
}

public int substract(int a, int b){
	return a-b;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 릿에서 선언부 사용하기</title>
</head>
<body>
<%
//스크립트 릿영역
int value01=3;
int value02=9;

int addResult=add(value01,value02);
int substractResult=substract(value01,value02);
%>
<%=value01 %>+<%=value02 %>=<%=addResult %>
<hr/>
<%=value01 %>-<%=value02 %>=<%=substractResult %>
<hr/>
</html>