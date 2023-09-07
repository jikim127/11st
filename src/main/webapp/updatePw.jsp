<%--
  Created by IntelliJ IDEA.
  User: JM
  Date: 2023-06-27
  Time: 오전 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script type="text/javascript" src="script/member.js"></script>
<%@ include file="./include/top.jsp" %>

<div style="width:328px;margin:50px auto">
  <div class="jimin-header m-auto" style="text-align: center">
    <h1 calss="jimin-header_logo">
      <a href="Servlet?command=main"><img src="https://static.011st.com/assets/img/svg/logo/11st.svg" alt="11번가 로고"></a>
      <br>
      <br>
    </h1>
  </div>

  <form name="frm" method="post" action="Servlet">
    <input type="hidden" name="command" value="updatePw">
    <div class="mb-3">
      아이디 : <input type="text" class="form-control" value="${id}" name="id" readonly>
    </div>
    <div class="mb-3">
      비밀번호 재설정: <input type="password" class="form-control" name="pw">
    </div>
    <div class="mb-3">
      비밀번호 확인: <input type="password" class="form-control" name="repw">
    </div>
    <br>
    <button style="width:100%" type="submit" class="btn btn-danger">비밀번호 재설정 완료</button>
    <br>

  </form>

<%@ include file="./include/bottom.jsp" %>
