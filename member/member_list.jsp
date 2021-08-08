<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%	
	String driver="oracle.jdbc.OracleDriver";//oracle.jdbc는 패키지명, OracleDriver는 드라이버 클래스명
	String url="jdbc:oracle:thin:@127.0.0.1:1521:xe";//오라클 접속 주소
	String user="night";//오라클 접속 사용자
	String password="night";//오라클 접속 사용자 비번
	
	Connection con=null;//데이터베이스 연결
	PreparedStatement pstmt=null;//쿼리문 수행
	ResultSet rs=null;//검색 결과 자료를 저장할 rs
	String sql=null;//쿼리문 저장
	
	try{
		Class.forName(driver);
		con=DriverManager.getConnection(url,user,password);
		sql="select * from memberT order by mem_id asc";
		pstmt=con.prepareStatement(sql);//쿼리문을 미리 컴파일 하여 쿼리문 수행 pstmt를 생성
		rs=pstmt.executeQuery();//검색문 실행 후 결과 레코드를 rs에 저장

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
<table border="1">
<tr>
<th colspan="4">회원목록</th>
</tr>
<tr>
<th>아이디</th> <th>회원이름</th> <th>이메일</th> <th>등록날짜</th>
</tr>

<% while(rs.next()){ //복수개의 레코드행이 있을때는 while반복문으로 반복. next()메소드는 다음 레코드행이 존재하면 참%>
<tr>
<th><%=rs.getString("mem_id") %></th><%--mem_id컬럼 레코드 값이 문자열이면 getString()메소드로 가져온다. --%>
<th><a href="member_info.jsp?id=<%=rs.getString("mem_id")%>"><%=rs.getString("mem_name")%></a></th>
<%--하이퍼링크 get방식으로 *.jsp?id=아이디값 형태의 주소창에 노출되는 쿼리스트링 방식으로 id파라미터 이름에 아이디값을 담아서 전달.
 회원의 상세정보를 확인할수 있다. 관리자단에서 사용해야한다. --%>
<th><%=rs.getString("mem_email") %></th>
<th><%=rs.getString("mem_regdate") %></th>
</tr>
<%} %>
<tr>
<th colspan="4">
<input type="button" value="회원가입" onclick="location='member_insert.jsp';"/>
</th>
</table>
</body>
</html>
<%}catch(Exception e){e.printStackTrace();}
	finally{
		try{
			if(rs !=null) rs.close();
			if(pstmt!=null) pstmt.close();
			if(con !=null)con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>