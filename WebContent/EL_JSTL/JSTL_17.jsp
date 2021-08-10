<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<fmt:requestEncoding value="utf-8"/><%-- post방식으로 전달된 한글을 안 깨지게 한다.--%>

<h3>JSTL fmt 태그 예제	</h3>
파라미터 name 값:<c:out value="${param.name}"/>
<form method="post" action="JSTL_17.jsp">
<label for="name">이름</label>
<input type="text" id="name" name="name" size="12"/>
<input type="submit" value="확인"/>
</form>