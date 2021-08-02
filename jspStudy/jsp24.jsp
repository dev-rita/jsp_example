<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
char[] buf=new char[128];
int len=-1;

String filePath="C:\\20210412\\Njava_work2\\Njsp01\\WebContent\\jspStudy\\message\\notice.txt";//notice.txt경로를 절대 경로로 저장

try(InputStreamReader br=new InputStreamReader(new FileInputStream(filePath),"UTF-8")){
	//자바 7에서 AutoCloseable 인터페이스를 구현 상속한 자손은 try()내에서 객체를 생성하면 finally문에서 명시적으로 닫지 않아도 자동으로 닫힌다.
	while((len=br.read(buf))!=-1){
		out.println(new String(buf,0,len));//문자열로 변경해서 출력
	}
}catch(IOException ie){
	out.println("예외발생:"+ie.getMessage());//에러메시지 출력
}
%>
</body>
</html>