<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023-06-21
  Time: PM 5:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="./include/top.jsp" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<html>
<head>
    <title>Title</title>
</head>
<body>
<header>
    <div class="top-bar">
        <div class="container">
            <div class="search-bar">
                <form method="get" action="Servlet">
                    <input type="hidden" name="command" value="search">
                    <input type="text" placeholder="검색어를 입력하세요" name="keyword">
                    <button type="submit">검색</button>
                </form>
            </div>
            <div class="logo">
                <a href="Servlet?command=main"><img src="https://c.011st.com/img/common/v3/logoday.png"
                                                    alt="11번가 로고"></a>
            </div>
            <div class="top-nav">
                <ul>
                    <c:choose>
                        <c:when test="${id != null}">
                            <li><a href="Servlet?command=my_Info">나의정보</a></li>
                            <li><a href="Servlet?command=orderSearch">주문조회</a></li>
                            <li><a href="Servlet?command=cart">장바구니</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="login.jsp">나의정보</a></li>
                            <li><a href="login.jsp">주문조회</a></li>
                            <li><a href="login.jsp">장바구니</a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </div>
    </div>
    <nav>
        <div class="container">
            <ul>
                <li><a href="Servlet?command=main">홈</a></li>

                <li><a href="#">카테고리</a></li>
                <li><a href="#">베스트</a></li>
                <li><a href="#">쇼킹딜</a></li>
                <li><a href="#">이벤트</a></li>
                <li><a href="#">프로모션</a></li>
                <c:choose>
                    <c:when test="${id != null}">
                        <li>
                            <pre>                            </pre>
                        </li>
                        <li style="color: #333333">${id.name}님 안녕하세요.</li>
                        <li><a href="infoUpdate.jsp">회원 정보 수정</a></li>
                        <li><a href="Servlet?command=logout">로그아웃</a></li>
                    </c:when>
                    <c:otherwise>
                        <li>
                            <pre>                                                            </pre>
                        </li>
                        <li><a href="login.jsp">로그인</a></li>
                        <li><a href="joinMember.jsp">회원가입</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </nav>
    <hr>
</header>
<%@ include file="./include/bottom.jsp" %>
</body>
</html>
