<%@ page contentType="text/html; charset=UTF-8"%>

<h3>유즈빈 액션 태그</h3>
<jsp:useBean id="user" class="com.naver.vo.UserVO" scope="page">
<jsp:setProperty name="user" property="firstName" value="길동"/>
<jsp:setProperty name="user" property="lastName" value="홍"/>
</jsp:useBean><!-- id가 user인 객체 생성 -->

<jsp:getProperty name="user" property="firstName"/>
<%=user.getLastName() %>
<hr/>
<h3>표현언어</h3>
${user.firstName}
${user.lastName}