<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.abc.dao.*,com.abc.vo.*"%>
<%
	request.setCharacterEncoding("UTF-8");

	int b_no=Integer.parseInt(request.getParameter("no"));
	String b_name=request.getParameter("b_name");
	String b_title=request.getParameter("b_title");
	String b_pwd=request.getParameter("b_pwd");
	String b_cont=request.getParameter("b_cont");
	
	Board8DAOImpl bdao=new Board8DAOImpl();
	Board8VO db_pwd=bdao.getBoardCont(b_no);//오라클로 부터 비번을 가져온다.
	
	if(!db_pwd.getB_pwd().equals(b_pwd)){
		out.println("<script>");
		out.println("alert('비번이 다릅니다!');");
		out.println("history.back();");
		out.println("</script>");
	}else{
		Board8VO b=new Board8VO();
		b.setB_no(b_no); b.setB_name(b_name); b.setB_title(b_title); b.setB_cont(b_cont);
		
		int re=bdao.editBoard(b);
		
		if(re==1){
			out.println("<script>");
			out.println("alert('수정에 성공했습니다!')");
			out.println("location='board_cont.jsp?no="+b_no+"';");
			out.println("</script>");
		}
	}
%>