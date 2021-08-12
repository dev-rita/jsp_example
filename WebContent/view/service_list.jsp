<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록보기</title>
</head>
<body>
<table border="1">
<tr>
<th>번호</th> <th>제목</th> <th>내용</th> <th>등록날짜</th>
</tr>
<c:if test="${!empty list}">
<c:forEach var="b" items="${list}">
<tr>
<th>${b.no}</th><td style="padding-left:14px;"><strong>${b.title}</strong></td>
<td style="padding-left:10px;"><b>${b.content}</b></td>
<th>${b.regdate}</th>
</tr>
</c:forEach>
</c:if>

<c:if test="${empty list}">
<tr>
<th colspan="5">게시글 목록이 없습니다.</th>
</tr>
</c:if>

<tr>
<th colspan="5">
<input type="button" value="입력" onclick="location='/MVC/st';"/>
</th>
</tr>
</table>
</body>
</html>