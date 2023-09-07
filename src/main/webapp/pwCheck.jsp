<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023-06-26
  Time: AM 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%@ include file="header.jsp" %>
<body>
<h2 align="center">비밀번호 확인</h2>
<form name="frm" method="post" action="Servlet?command=pwCheck">
    <input type="password" name="pwCheck" align="center">
    <input type="submit" value="확인" onclick="return pwCheck">
</form>
</body>
<%@ include file="footer.jsp" %>
</html>
