<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.abc.dao.*,com.abc.vo.*"%>
<%
	int b_no=Integer.parseInt(request.getParameter("no"));
//board.del.jsp의 <form method="post" action="board_del_ok.jsp?no= 에 no를 가리키며 no의 값을 구함
	String del_pwd=request.getParameter("del_pwd");
	
	Board8DAOImpl bdao=new Board8DAOImpl();
	Board8VO db_pwd=bdao.getBoardCont(b_no);//데이터베이스로 부터 비번을 가져옴
	
	if(!db_pwd.getB_pwd().equals(del_pwd)){//오라클의 비번과 del_pwd를 비교
		out.println("<script>");
		out.println("alert('비번이 다릅니다!');");
		out.println("history.go(-1);");
		out.print("</script>");
	}else{
		int re=bdao.delBoard(b_no);
		
		if(re==1){
			out.println("<script>");
			out.println("alert('게시물 삭제에 성공했습니다!')");
			out.println("location='board_list.jsp';");
			out.println("</script>");
		}
	}
%>
