<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Jimin
  Date: 2023-06-26
  Time: 오후 4:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script type="text/javascript" src="script/member.js"></script>
<%@ include file="./include/top.jsp" %>

<div class="jimin-header m-auto" style="text-align: center">
  <h1 calss="jimin-header_logo">
    <a href="Servlet?command=main"><img src="https://static.011st.com/assets/img/svg/logo/11st.svg" alt="11번가 로고"></a>
    <br>
    <br>
  </h1>
</div>

<div style="width:328px;margin:50px auto">
  <form name="frm" method="post" action="Servlet">
    <input type="hidden" name="command" value="findId">
    <div class="mb-3">
      이름 : <input type="text" class="form-control" name="name">
    </div>
    <div class="mb-3">
      핸드폰 번호 : <input type="text" class="form-control" name="phone">
    </div>
    <br>
    <button style="width:100%" type="submit" class="btn btn-danger" onclick="findCheck()">아이디 찾기</button>

<%--    <c:if test="${name.pw && name.name != null}">--%>
<%--      <script type="text/javascript">--%>
<%--        var url = "Servlet?command=findId";--%>
<%--        window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=500");--%>
<%--      </script>--%>
<%--    </c:if>--%>
    <br>

    ${message}

  </form>

<%@ include file="./include/bottom.jsp" %>

