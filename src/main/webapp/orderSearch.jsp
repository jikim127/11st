<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023-06-23
  Time: 오후 12:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp"%>
<%@ include file="./include/top.jsp" %>
<html>
<head>
    <title>결제내역리스트</title>
</head>
<body>

<form action="Servlet" method="post">
    <p class="h3" align="center">결제내역조회</p>
    <p class="h4" align="center">주문일자 검색</p>

<div style="width:300px; height:20px; margin:50px auto; display: flex; align-items: center;">
    <select class="form-select form-select-sm" aria-label=".form-select-sm example" name="date" style="margin-right: 10px;">
        <option value="-1" selected>전체 조회</option>
        <option value="0">1개월 내 조회</option>
        <option value="1">3개월 내 조회</option>
    </select>

    <input type="hidden" name="command" value="orderSearch">
    <button type="submit" class="btn btn-danger" align="center" style="height: 32px; width: 120px">조회</button>
    <br><br>
</div>


    <div style="width:1000px; margin:50px auto">
        <table class="table table-striped" name="list" align="center">
            <thead>
            <tr>
                <th scope="col">상품</th>
                <th scope="col">상품명</th>
                <th scope="col">금액</th>
                <th scope="col">주문일자</th>
                <th scope="col">배송</th>
                <th scope="col"><input type="checkbox" id="select-all-delete">전체삭제</th>
            </thead>
            <tbody>
            <c:forEach var="orderSearch" items="${orderSearch}">
                <tr class="record">
                    <td style="border-left: none; border-right: none;"><img style="width: 150px;" src = ${orderSearch.image}></td>
                    <td style="text-align: left; padding-left: 10px; border-left: none; font-weight: bold;">${orderSearch.title}</td>
                    <td><span style="padding-left: 10px;"><fmt:formatNumber value="${orderSearch.price}" pattern="###,###,###"/>원</span></td>
                    <td>${orderSearch.orderDate}</td>
                    <td>기본배송</td>
                    <td><input type="checkbox" name="delete" value="${orderSearch.no}">삭제</td>
                </tr>
            </c:forEach>
            <hr>
            </tbody>
        </table>
        <hr>
    </div>
    <div id="cart" align="center">
        <button type="submit" class="btn btn-danger">삭제</button>
        <button type="button" class="btn btn-outline-secondary" onclick="location='Servlet?command=main'">메인화면으로 가기</button>
    </div>
</form>
<script type="text/javascript">
    document.getElementById('select-all-delete').addEventListener('change', function() {
        var checkboxes = document.querySelectorAll('input[name="delete"]');
        for (var i = 0; i < checkboxes.length; i++) {
            checkboxes[i].checked = this.checked;
        }
    });
</script>
</body>
<%@ include file="footer.jsp"%>
<%@ include file="./include/bottom.jsp" %>
</html>
