<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.abc.dao.*, com.abc.vo.*" %>
<%
	int b_no=Integer.parseInt(request.getParameter("no"));//get으로 전달된 번호값을 정수숫자로 변경해서 저장시킴
	Board8DAOImpl bdao=new Board8DAOImpl();
	
	bdao.updateHit(b_no);//조회수 증가
	Board8VO b=bdao.getBoardCont(b_no);//번호에 해당하는 데이터를 데이터 베이스로 부터 가져옴
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 내용보기</title>
</head>
<body>
<table border="1">
<tr>
<th colspan="2">게시판 내용보기</th>
</tr>
<tr>
<th>제목</th> <td><%=b.getB_title() %></td>
</tr>
<tr>
<th>내용</th> <td><%=b.getB_cont() %></td>
</tr>
<tr>
<th>조회수</th> <td><%=b.getB_hit() %></td>
</tr>
<tr>
<th colspan="2">
<input type="button" value="수정" onclick="location='board_edit.jsp?no=<%=b_no %>';"/>
<%-- *.jsp?no=번호값 형태의 get방식으로 no파라미터이름에 번호를 담아서 전달함. 
<%=는 문자열을 출력함. 하이퍼링크에는 다 문자열로 되어있음.--%>
<input type="button" value="삭제" onclick="location='board_del.jsp?no=<%=b_no %>';"/>
<input type="button" value="목록" onclick="location='board_list.jsp';"/>
</th>
</tr>
</table>
</body>
</html>