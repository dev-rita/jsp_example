<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String id=request.getParameter("id");

	String driver="oracle.jdbc.OracleDriver";//oracle.jdbc는 패키지명, OracleDriver는 드라이버 클래스명
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";//오라클 접속 주소
	String user="night";//오라클 접속 사용자
	String password="night";//오라클 접속 사용자 비번
	
	Connection con=null;//데이터베이스 연결
	PreparedStatement pstmt=null;//쿼리문 수행
	String sql=null;//쿼리문 저장
	
	try{
		Class.forName(driver);
		con=DriverManager.getConnection(url, user, password);
		//아이디를 기준으로 해당 회원을 삭제하는 코드 작성. 삭제 후 성공 메시지를 띄운 다음 자바스크립트로 회원목록으로 이동해야 함.
		sql="delete from memberT where mem_id=?";
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, id);
		int re=pstmt.executeUpdate();//삭제 쿼리문 성공 후 성공한 레코드 행의 개수를 반환
				
		if(re==1) {
			out.println("<script>");
			out.println("alert('정보 삭제에 성공했습니다!');");
			out.println("location='member_list.jsp';");
			out.println("</script>");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(pstmt!=null)pstmt.close();
			if(con!=null)con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
