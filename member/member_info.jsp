<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	String id = request.getParameter("id");//get으로 전달된 아이디값을 받아서 저장

	String driver = "oracle.jdbc.OracleDriver";//oracle.jdbc는 패키지명, OracleDriver는 드라이버 클래스명
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";//오라클 접속 주소
	String user = "night";//오라클 접속 사용자
	String password = "night";//오라클 접속 사용자 비번

	Connection con = null;//데이터베이스 연결
	PreparedStatement pstmt = null;//쿼리문 수행
	ResultSet rs = null;
	String sql = null;//쿼리문 저장
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
</head>
<body>
<%
	try {
		Class.forName(driver);//jdbc 드라이버 클래스명
		con = DriverManager.getConnection(url, user, password);
		sql = "select * from memberT where mem_id=?";
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, id);//쿼리문의 첫 번째 물음표에 문자열로 아이디값 저장
		rs=pstmt.executeQuery();
		
		if(rs.next()){//검색 결과 레코드가 하나이면 if문으로 검색

%>		
<table border="1">
<tr>
<th colspan="2">회원목록</th>
</tr>
<tr>
<th>아이디</th> <td><%=rs.getString("mem_id")%></td>
</tr>
<tr>
<th>비밀번호</th> <td><%=rs.getString("mem_pwd") %></td>
</tr>
<tr>
<th>회원이름</th> <td><%=rs.getString("mem_name") %></td>
</tr>
<tr>
<th>이메일</th> <td><%=rs.getString("mem_email") %></td>
</tr>
<tr>
<th>등록일</th> <td><%=rs.getString("mem_regdate") %></td>
</tr>
<tr>
<th colspan="2">
<input type="button" value="수정" onclick="location='member_edit.jsp?id=<%=id %>';"/>
<input type="button" value="삭제" onclick="location='member_del.jsp?id=<%=id %>';"/>
<%--get방식으로 id파라미터 이름에 아이디값을 담아서 전달함. --%>
<input type="button" value="목록" onclick="location='member_list.jsp';"/>
</th>
</tr>
</table>
<% }//if
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if (rs != null) rs.close();
			if (pstmt != null) pstmt.close();
			if (con != null) con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
%>
</body>
</html>