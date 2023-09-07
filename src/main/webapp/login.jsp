<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
  Created by IntelliJ IDEA.
  User: Jimin
  Date: 2023-06-22
  Time: 오전 11:44
  To change this template use File | Settings | File Templates.
--%>

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
    <input type="hidden" name="command" value="login">
      <div class="mb-3">

        <input type="text" class="form-control" name="id" placeholder="아이디">
      </div>
      <div class="mb-3">

        <input type="password" class="form-control" name="pw" placeholder="비밀번호">
      </div>
      <div class="mb-3 form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1">
        <label class="form-check-label" for="exampleCheck1">로그인 상태 유지</label>
      </div>
      <button style="width:100%" type="submit" class="btn btn-danger" onclick="return loginCheck()">로그인</button>
    <br>

    <div class="alert alert" role="alert">
      ${message}
    </div>

    <div class="mb-3 d-flex align-items-center">
      <button type="button" class="btn btn-outline-danger" onclick="location.href='joinMember.jsp'">회원가입</button>
      <div class="btn-group" role="group" aria-label="Basic outlined example">
      <button type="button" class="btn" onclick="location.href='findId.jsp'">아이디찾기</button>
      <button type="button" class="btn" onclick="location.href='findPw.jsp'">비밀번호찾기</button>
      </div>
    </div>

  </form>

<%@ include file="./include/bottom.jsp" %>