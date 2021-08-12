<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입폼</title>
<script src="./js/jquery.js"></script>
<script src="./js/m.js"></script>
</head>
<body>
<form method="post" action="member_join_ok.do" onsubmit="return join_check();" enctype="multipart/form-data">
<%--파일을 첨부한 이진파일을 서버에 업로드하는 자료실 기능을 만들기 위해선 enctype="multipart/form-data"를 지정해야 한다.
method="get"방식은 안되고 post방식으로 첨부한 파일과 자료를 서버로 전송해야 한다. 보통 첨부된 이진파일을 서버에 업로드 할려면 외부 라이브러리가 필요하다.
이 라이브러리를 WEB-INF/lib폴더 안에 넣어주면 된다. --%>
<table border="1">
<tr>
<th colspan="2">회원가입 폼</th>
</tr>

<tr>
<th>아이디</th>
<td><input type="text" name="mem_id" id="mem_id" size="14"/>
<input type="button" value="아이디중복검색" onclick="id_check();"/><br/>
<span id="idcheck"></span><%--span태그 영역에 아이디 중복검색 결과가 출력된다. --%></td>
</tr>

<tr>
<th>비밀번호</th>
<td><input type="password" name="mem_pwd" id="mem_pwd" size="14"/></td>
</tr>

<tr>
<th>비밀번호 확인</th>
<td><input type="password" name="mem_pwd2" id="mem_pwd2" size="14"/></td>
</tr>

<tr>
<th>회원이름</th>
<td><input type="text" name="mem_name" id="mem_name" size="14"/></td>
</tr>

<tr>
<th>폰번호</th>
<td>
<select name="phone01">
<c:forEach var="p" items="${phone}">
<option value="${p}">${p}</option>
</c:forEach>
</select>-<input type="text" name="phone02" id="phone02" size="4" maxlength="4"/>
-<input type="text" name="phone03" id="phone03" size="4" maxlength="4"/>
<%-- maxlength="4"로 지정하면 최대 자리 4자 폰번호 까지만 입력 가능 --%>
</td>
</tr>

<tr>
<th>회원 프로필 사진 첨부</th>
<td><input type="file" name="mem_file"/></td>
</tr>

<tr>
<th colspan="2">
<input type="submit" value="회원 가입"/>
<input type="reset" value="가입 취소"/>
</th>
</tr>
</table>
</form>
</body>
</html>