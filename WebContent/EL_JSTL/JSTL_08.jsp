<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:url var="test" value="../EL_JSTL/Images/back.PNG"/>
<%-- ./Images/back.PNG도 가능 --%>

<h3><c:out value="${test}"/></h3>
<img src="${test}" width="150" height="120"/>