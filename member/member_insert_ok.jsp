<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");//method=post방식일 때 서버에서 받는 한글을 안깨지게 한다.
	
	String mem_id=request.getParameter("mem_id");
	String mem_pwd=request.getParameter("mem_pwd");
	String mem_name=request.getParameter("mem_name");
	String mem_email=request.getParameter("mem_email");
	
	String driver="oracle.jdbc.OracleDriver";//oracle.jdbc는 패키지명, OracleDriver는 드라이버 클래스명
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";//오라클 접속 주소
	String user="night";//오라클 접속 사용자
	String password="night";//오라클 접속 사용자 비번
	
	Connection con=null;//데이터베이스 연결
	Statement st=null;//쿼리문 수행
	String sql=null;//쿼리문 저장
	
	try{
		Class.forName(driver);//jdbc 드라이버 클래스명
		con=DriverManager.getConnection(url,user,password);
		st=con.createStatement();
		
		sql="insert into memberT values('"+mem_id+"','"+mem_pwd+"','"+mem_name+"','"+mem_email+"',sysdate)";
		st.executeUpdate(sql);//저장 쿼리문 수행후 성공한 레코드 행의 개수를 반환
		
		response.sendRedirect("member_list.jsp");//회원목록으로 이동. 보통은 회원목록으로 이동하지 않는다.(관리자 단에서 사용해야함)
		}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(st !=null) st.close();
			if(con !=null) con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>memberT 테이블에 회원 가입 성공했습니다!</h3>
</body>
</html>