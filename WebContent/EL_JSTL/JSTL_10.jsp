<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL sql 사용</title>
</head>
<body>
<sql:setDataSource var="con" driver="oracle.jdbc.OracleDriver"
							url="jdbc:oracle:thin:@127.0.0.1:1521:xe" user="night" password="night"/>
							
<sql:update dataSource="${con}">
insert into test values(1,'홍길동')
</sql:update>

<sql:update dataSource="${con}">
insert into test values(2,'이순신')
</sql:update>

<sql:query var="rs" dataSource="${con}">
select * from test
</sql:query>

<c:forEach var="data" items="${rs.rows}">
${data['num']}
${data['name']}
<hr/>
</c:forEach>
</body>
</html>