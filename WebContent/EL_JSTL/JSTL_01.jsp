<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- JSTL 코어 태그립 추가 --%>
<jsp:useBean id="user" class="com.naver.vo.UserVO"/>
<jsp:setProperty name="user" property="firstName" value="길동"/>
<jsp:setProperty name="user" property="lastName" value="홍"/>

<form>
성:
<% if(user.getLastName() !=null){%>
 <input type="text" name="lastName" size="3" value="<%=user.getLastName() %>"/>
<%}%>
이름:
<% if(user.getFirstName() !=null){ %>
 <input type="text" name="firstName" size="8" value="<%=user.getFirstName() %>"/>
<%} %>
</form>

<hr/>
<form>
성:
<c:if test="${!empty user.lastName}"><%--JSTL c:if조건문 --%>
${user.lastName}
</c:if>
이름:
<c:if test="${!empty user.firstName}"><%--JSTL c:if조건문 --%>
${user.firstName}
</c:if>
</form>