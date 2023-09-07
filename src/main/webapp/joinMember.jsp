<%--
  Created by IntelliJ IDEA.
  User: Jimin
  Date: 2023-06-22
  Time: 오후 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script type="text/javascript" src="script/member.js"></script>
<%@ include file="./include/top.jsp" %>


<div style="width:500px;margin:50px auto">
    <div class="jimin-header m-auto" style="text-align: center">
        <h1 calss="jimin-header_logo">
            <a href="Servlet?command=main"><img src="https://static.011st.com/assets/img/svg/logo/11st.svg" alt="11번가 로고"></a>
            <br>
            <br>
        </h1>
    </div>

<h2>회원 가입</h2>
    <br>
'*' 표시 항목은 필수 입력 항목입니다.
    <br>
<form action="Servlet" method="post" name="frm">
    <input type="hidden" name="command" value="joinMember">

    <div class="mb-3">
        <input type="text" class="form-control" name="name" placeholder="이름 *">
    </div>
    <div class="mb-3 d-flex align-items-center">
        <input type="text" class="form-control" name="id" placeholder="아이디 *">
        <button type="button" class="btn btn-light" style="width: 120px; height: 40px; margin-left: 10px; text-align: center;" onclick="idCheck()">중복확인</button>
    </div>
    <div class="mb-3">
        <input type="password" class="form-control" name="pw" placeholder="비밀번호 *">
    </div>
    <div class="mb-3">
        <input type="password" class="form-control" name="pw_check" placeholder="비밀번호 확인 *">
    </div>
    <div class="mb-3">
        <input type="text" class="form-control" name="birthDate" placeholder="주민등록번호 앞 6자리"> 예) 980119
    </div>
    <div class="mb-3">
        <input type="email" class="form-control" name="email" placeholder="이메일">
    </div>
    <div class="mb-3">
        <input type="text" class="form-control" name="phone" placeholder="핸드폰번호 *"> 예) 010-0000-0000
    </div>
    <div class="mb-3">
        <input type="radio" name="gender" value="1" checked="checked"> 남
        <input type="radio" name="gender" value="2"> 여
    </div>

    <button style="width:49%" type="submit" class="btn btn-danger" onclick="return joinCheck()">확인</button>
    <button type="submit" style="width:49%" class="btn btn-light" onclick="return pageBack()">취소</button>

    ${message}

</form>

<%@ include file="./include/bottom.jsp" %>