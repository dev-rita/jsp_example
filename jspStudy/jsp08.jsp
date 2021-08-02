<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 합구하기</title>
</head>
<body>
<%
  int total=0;
  int i=1;
  
  while(i<=10){
	  total=total+i;
	  i=i+1;
  }
  
  out.println("1부터 10까지의 누적합="+total+"<hr/>");
%>

<%
  int sum=0;
  for(int k=11;k<=20;k++){
	  sum=sum+k;
  }
%>
11부터 20까지의 합=<%=sum%> 입니다.
</body>
</html>