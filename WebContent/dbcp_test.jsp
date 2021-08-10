<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*,javax.naming.*,javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DBCP 커넥션 풀로 오라클 연결</title>
</head>
<body>
<%!
	Connection con=null;
	DataSource ds=null;
%>
<%
	try{
		Context ctx=new InitialContext();
		ds=(DataSource)ctx.lookup("java:comp/env/jdbc/xe");//JNDI 커넥션 풀 DS생성
		con=ds.getConnection();
		out.println("DBCP 연결 성공!");
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if (con !=null) con.close();
		}catch(Exception e){
			e.printStackTrace();	
		}
	}
%>
</body>
</html>