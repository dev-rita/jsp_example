<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%	
	String id = request.getParameter("id");//get으로 전달된 아이디값을 받아서 저장

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
		sql="select * from memberT where mem_id=?";
		pstmt=con.prepareStatement(sql);//쿼리문을 미리 컴파일 하여 쿼리문 수행 pstmt를 생성
		pstmt.setString(1, id);
		rs=pstmt.executeQuery();//검색문 실행 후 결과 레코드를 rs에 저장

		if(rs.next()){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 수정</title>
<script src="../js/jquery.js"></script><%--../는 한단계 상위 폴더로 이동 --%>
<script>
function check(){

	if($.trim($('#mem_pwd').val())==""){
		alert('비번을 입력하세요!');
		$('#mem_pwd').val('').focus();
		return false;
	}
	
	if($.trim($('#mem_name').val())==""){
		alert('이름을 입력하세요!');
		$('#mem_name').val('').focus();
		return false;
	}
	
	if($.trim($('#mem_email').val())==""){
		alert('이메일을 입력하세요!');
		$('#mem_email').val('').focus();
		return false;
	}
}
</script>
</head>
<body>
<form method="post" action="member_edit_ok.jsp" onsubmit="return check();">
<input type="hidden" name="id" value="<%=id%>"/>
<%--hidden은 브라우저 주소창에서 만들어지지 않지만 id파라미터이름에 id값을 담아서 전달.
하지만 페이지 소스보기에서는 보이기 때문에 보안상 중요한 내용은 hidden으로 전달하지 않는다. --%>
<table border="1">
<tr>
<th colspan="4">회원정보 수정</th>
</tr>
<tr>
<tr>
<th>아이디</th> <td><%=id %></td>
<th>비밀번호</th> <td><input type="password" name="mem_pwd" id="mem_pwd" size="14"/></td>
</tr>
<tr>
<th>회원이름</th><td><input name="mem_name" id="mem_name" size="14" value="<%=rs.getString("mem_name")%>"/></td>
<th>이메일</th><td><input name="mem_email" id="mem_email" size="30" value="<%=rs.getString("mem_email")%>"/></td>
</tr>

<tr>
<th colspan="4">
<input type="Submit" value="회원수정"/>
<input type="Reset" value="수정취소"/>
</th>
</tr>
</table>
</form>
</body>
</html>
<%
	}//if
		}catch(Exception e){e.printStackTrace();}
	finally{
		try{
			if(rs !=null)rs.close();
			if(pstmt !=null)pstmt.close();
			if(con !=null)con.close();
		}catch(Exception e){e.printStackTrace();}
	}
%>