<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023-06-23
  Time: PM 4:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/myInfoStyle.css">
    <script type="text/javascript" src="script/update.js"></script>
</head>
<%@ include file="header.jsp" %>
<%@ include file="./include/top.jsp" %>
<body>
<h2 align="center">내 정보 수정</h2>
<div style="width:328px;margin:50px auto">
<form method="post" action="Servlet?command=infoUpdate" name="frm">

    <div class="mb-3">
        이름<input type="text" class="form-control" name="name" value="${id.name}">
    </div>

    <div class="mb-3">
        아이디<input type="text" class="form-control" name="id" value="${id.id}" readonly="readonly">
    </div>

    <div class="mb-3">
        비밀번호<input type="password" class="form-control" name="pw" value="${id.pw}">
    </div>

    <div class="mb-3">
        비밀번호 확인<input type="password" class="form-control" name="pwCheck">
    </div>

    <div class="mb-3">
        이메일<input type="email" class="form-control" name="email" value="${id.email}">
    </div>

    <div class="mb-3">
        생년월일<input type="text" class="form-control" name="birthDate" value="${id.birthDate}" readonly="readonly">
    </div>

    <div class="mb-3">
        성별<input type="text" class="form-control" name="gender"
        value="<c:choose><c:when test="${id.gender == 1}">남자</c:when><c:otherwise>여자</c:otherwise></c:choose>">
    </div>

    <div class="mb-3">
        전화번호<input type="text" class="form-control" name="phone" value="${id.phone}">
    </div>

    <div class="mb-3 d-flex align-items-center" style="align:center; margin:auto;">
        <button type="submit" class="btn btn-outline-danger" onclick="return update()">확인</button>
        <button type="reset" class="btn btn-outline-danger">취소</button>
    </div>

</form>
</div>
</body>
<%@ include file="footer.jsp" %>
<%@ include file="./include/bottom.jsp" %>
</html>
