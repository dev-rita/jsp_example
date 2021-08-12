<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인폼</title>
<script src="./js/jquery.js"></script>
<script>
function login_check(){
	
	if($.trim($('#login_id').val())==''){
		alert('로그인 아이디를 입력하세요!');
		$('#login_id').val('').focus();
		return false
	}
	
	if($.trim($('#login_pwd').val())==''){
		alert('로그인 비번을 입력하세요!');
		$('#login_pwd').val('').focus();
		return false;
	}
}
</script>
</head>
<body>
<c:if test="${empty id}"><%--로그인 전 --%>
<form method="post" action="login_ok.do" onsubmit="return login_check();">
<table border="1">
<tr>
<th colspan="3">로그인</th>
</tr>
<tr>
<th>아이디</th><td><input type="text" name="login_id" id="login_id" size="14" tabindex="1"/></td>
<%-- tabindex속성값을 1로 저장하면 탭키를 눌렀을 때 첫번째로 포커스를 가진다. --%>
<th rowspan="2"><%--rowspan="2"는 2개행을 합침 --%>
<input type="submit" value="로그인"/>
</th>
</tr>
<tr>
<th>비밀번호</th><td><input type="password" name="login_pwd" id="login_pwd" size="14" tabindex="2"/></td>
</tr>
<tr>
<th colspan="3">
<input type="button" value="아이디/비밀번호찾기"/>
<input type="button" value="회원가입" onclick="location='member_join.do';"/>
</th>
</tr>
</table>
</form>
</c:if>

<c:if test="${!empty id}"><%--로그인 한 경우 --%>
<form method="post" action="logout.do">
<table border="1">
<tr>
<th>
<input type="button" value="정보수정" onclick="location='member_edit.do';"/>
<input type="button" value="회원탈퇴" onclick="location='member_del.do';"/>
<input type="submit" value="로그아웃" />
</th>
</tr>
<tr>
<th>${id}님 로그인을 환영합니다!</th>
</tr>

<c:if test="${!empty mem_file}"><%--프로필 사진이 존재하는 경우 실행 --%>
<tr>
<th><img src="./upload${mem_file}" width="100" height="100" alt="프로필 사진"/> </th>
</tr>
</c:if>
</table>
</form>
</c:if>
</body>
</html>