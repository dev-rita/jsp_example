<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1~10까지의 합</title>
</head>
<body>
<%
 int sum=0;
 for(int i=1; i<=10; i++){
	 sum+=i;
 }
%>
1부터 10까지의 합은 <b><%=sum %></b> 입니다.
<hr/>
<%
int total=0, i=11;
while(i<=20){
	total+=i;
	i=i+1;
}

out.println("11부터 20까지의 합은 "+total+"입니다.");
%>
</body>
</html>