<%@ page contentType="text/html; charset=UTF-8"%>
<%
	int no=Integer.parseInt(request.getParameter("no"));
//board_cont.jsp에서 
//<input type="button" value="삭제" onclick="loacation='board_del.jsp?no=<%=b_no 에서 no를 받아옴
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 삭제</title>
<script src="../js/jquery.js"></script>
<script>
function del_check(){
	
	if($.trim($("#del_pwd").val())==""){
		alert("비번을 입력하세요!");
		$("#del_pwd").val("").focus();
		return false;
	}
}
</script>
</head>
<body>
<form method="post" action="board_del_ok.jsp?no=<%=no %>" onsubmit="return del_check();">
<%-- *.jsp?no=번호값 형태의 get방식으로 번호를 전달한다. --%>
<h5>게시판 삭제</h5>
비밀번호:<input type="password" name="del_pwd" id="del_pwd" size="14"/>
<br/><br/>
<input type="submit" value="삭제"/>
<input type="reset" value="취소"/>
</form>
</body>
</html>