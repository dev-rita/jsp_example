<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="http://localhost:8084/MVC/EL_JSTL/cityName.jsp" var="data"/>
<%--외부 자원 url의 출력결과물을 data에 저장--%>
${data}