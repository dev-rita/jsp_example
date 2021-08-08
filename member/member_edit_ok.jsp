<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");//method=post방식으로 전송되는 한글을 서버에서 받을 때 안 깨지게 한다.
	
	String mem_id=request.getParameter("id");//hidden으로 전달되는 아이디값을 받는다
	String mem_pwd=request.getParameter("mem_pwd");
	String mem_name=request.getParameter("mem_name");
	String mem_email=request.getParameter("mem_email");
	
	String driver="oracle.jdbc.OracleDriver";//oracle.jdbc는 패키지명, OracleDriver는 드라이버 클래스명
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";//오라클 접속 주소
	String user="night";//오라클 접속 사용자
	String password="night";//오라클 접속 사용자 비번
	
	Connection con=null;//데이터베이스 연결
	PreparedStatement pstmt=null;//쿼리문 수행
	String sql=null;//쿼리문 저장
	
	try{
		Class.forName(driver);
		con=DriverManager.getConnection(url,user,password);
		sql="update memberT set mem_pwd=?,mem_name=?,mem_email=? where mem_id=?";//아이디를 기준으로 해서 비번, 이름, 메일주소를 변경
		pstmt=con.prepareStatement(sql);//쿼리문을 미리 컴파일 하여 쿼리문 수행 pstmt를 생성
		pstmt.setString(1, mem_pwd);
		pstmt.setString(2, mem_name);
		pstmt.setString(3, mem_email);
		pstmt.setString(4, mem_id);
		
		int re=pstmt.executeUpdate();//수정 쿼리문 수행 후 성공한 레코드 행의 개수를 반환
		
		if(re==1){
			out.println("<script>");
			out.println("alert('정보 수정에 성공했습니다!');");
			out.println("location='member_info.jsp?id="+mem_id+"';");
			out.println("</script>");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(pstmt != null) pstmt.close();
			if(con != null)con.close();
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

</body>
</html>