<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*,com.abc.dao.*,com.abc.vo.*" %>
<%
	Board8DAOImpl bdao=new Board8DAOImpl();
	List<Board8VO> blist=bdao.getBoardList();
	int totalCount=bdao.getTotalCount();//총 레코드 개수
	//DAO에 총 게시물 수를 가져오는 메소드 완성
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>
<body>
<table border="1">
<tr>
<th colspan="5">게시판 목록</th>
</tr>
<tr>
<td colspan="5" style= text-align:right;><b>게시물수:<%=totalCount %>개</b></td>
</tr>
<tr>
<th>번호</th> <th>제목</th> <th>글쓴이</th> <th>조회수</th> <th>등록날짜</th>
</tr>
<%
if(blist != null && blist.size()>0){
	for(Board8VO b:blist){
%>
<tr>
<th><%=b.getB_no() %></th>
<td style="padding-left:10px;"><strong><a href="board_cont.jsp?no=<%=b.getB_no()%>"><%=b.getB_title() %></a></strong></td>
<%-- 하이퍼 링크 get방식으로 *.jsp?no=번호값을 주소창에 노출되면서 전달함. --%>
<th><%=b.getB_name() %></th>
<th><%=b.getB_hit() %></th>
<th><%=b.getB_date() %></th>
</tr>
<%}
	}else{
%>
<tr>
<th colspan="5">게시판 목록이 없습니다 ! </th>
</tr>
<%} %>
<tr>
<th colspan="5"><input type="button" value="글쓰기" onclick="location='board8_write.jsp';"/></th>
</tr>
</table>
</body>
</html>