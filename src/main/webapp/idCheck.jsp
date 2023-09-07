<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Jimin
  Date: 2023-06-23
  Time: 오후 5:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script type="text/javascript" src="script/member.js"></script>
<%@ include file="./include/top.jsp" %>

<div style="width:400px;margin:50px auto">
    <div class="jimin-header m-auto" style="text-align: center">
        <h1 calss="jimin-header_logo">
            <img src="https://static.011st.com/assets/img/svg/logo/11st.svg" alt="11번가 로고"></a>
            <br>
            <br>
        </h1>
    </div>

    <h2>아이디 중복 확인</h2>
    <br>

    <form action="Servlet" method="get" name="frm">
        <input type="hidden" name="command" value="idCheck">

        <div class="mb-3">
        아이디 <input type="text" name="id" value="${id}" id="id">
        <button type="submit" class="btn btn-outline-danger" onclick="idCheck()">중복확인</button>
        </div>
        <br>

        <div class="mb-3">
        <c:if test="${result == 1}">
            <script type="text/javascript">
                opener.document.frm.id.value=""; //부모창에 내용 지우기
                document.getElementById("id"); //자기창에 내용 지우기
            </script>
            ${id}는 이미 시용중인 아이디입니다.
        </c:if>
        <c:if test="${result == -1}">
            ${id}는 사용 가능한 아이디입니다.
            <button type="button" class="btn btn-danger" onclick="idok()">사용</button>
        </c:if>
        </div>
    </form>

<%@ include file="./include/bottom.jsp" %>

