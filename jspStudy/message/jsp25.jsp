<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 기본객체를 사용하여 자원읽기</title>
</head>
<body>
<%
String path="/jspStudy/message/notice.txt";
%>
자원의 실제 경로:<br/>
<%=application.getRealPath(path) %>
<hr/>
<%=path %>의 내용:<br/>
<%
char[] buff=new char[128];
int len=-1;

try(InputStreamReader br=new InputStreamReader(application.getResourceAsStream(path),"utf-8")){
	//application.getResourceAsStream(path)는 인자값으로 주어진 path로 부터 데이터를 읽어 올 수 있는 InputStream을 반환
	
	while((len=br.read(buff))!=-1){
		out.print(new String(buff,0,len));
	}
}catch(IOException ex){
	out.println("예외 발생:"+ex.getMessage());
}
%>
</body>
</html>