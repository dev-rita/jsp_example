<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*,java.net.URL" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 기본 객체 사용하여 자원읽기 2</title>
</head>
<body>
<%
String path="/jspStudy/message/notice.txt";
char[] buf=new char[128];
int len=-1;
URL url=application.getResource(path);//path경로에 해당하는 자원에 접근할 수 있는 URL 객체 반환

try(InputStreamReader br=new InputStreamReader(url.openStream(),"utf-8")){
	while((len=br.read(buf))!=-1){
		out.println(new String(buf,0,len));
	}
}catch(IOException ex){
	out.println("예외처리:"+ex.getMessage());	
}
%>
</body>
</html>