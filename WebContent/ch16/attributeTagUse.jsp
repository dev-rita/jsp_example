<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="tagFile" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="UTF-8"/><%--POST로 전달되는 한글을 안깨지게 한다.--%>

<c:set var="welcome" value="환영합니다!"/>

<form method="post"><%--action 속성이 생략되면 자기자신 파일이 서버파일이 된다. --%>
이름:<input type="text" name="name" size="14"/>
<input type="submit" value="전송"/>
</form>

<hr/>
<c:if test="${fn:length(param.name) >0 }">
<%--이름값이 입력되었다면 실행 --%>
<tagFile:attribute welcome2="${welcome}" name2="${param.name}"></tagFile:attribute>
</c:if>