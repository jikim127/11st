<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023-06-22
  Time: 오전 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp"%>
<%@ include file="./include/top.jsp" %>
<link rel="stylesheet" type="text/css" href="css/cart.css">
<html>
<head>
  <title>cart</title>
  <link rel="stylesheet" type="text/css" href="css/cart.css">
</head>
<body>
<form action="Servlet" method="get">
  <input type="hidden" name="command" value="orderUpdate">

  <p class="h4" align="center">장바구니</p>
  <div style="width:1000px; margin:50px auto">
    <table class="table table-striped" name="list">
      <%--  <table name="list" border="1px" align="center">--%>
      <thead>
      <tr>
        <th scope="col"><input type="checkbox" id="select-all-no">전체선택</th>
        <th scope="col">상품</th>
        <th scope="col">상품명</th>
        <th scope="col">금액</th>
        <th scope="col">-</th>
        <th scope="col">배송</th>
        <th scope="col"><input type="checkbox" id="select-all-delete">전체삭제</th>
      </thead>
        <tbody>
          <c:forEach var="Cart" items="${Cart}" varStatus="status">

          <tr style="height: 100px;">
            <td style="text-align: left; text-align: center; border-right: #ff5a36;">
              <input type="checkbox" name="no" value="${Cart.no}" >
            </td>
            <td style="border-left: none; border-right: none;"><img style="width: 150px;" src = ${Cart.image}></td>
            <td style="text-align: left; padding-left: 10px; border-left: none; font-weight: bold;">${Cart.title}</td>
            <td><span style="padding-left: 10px;"><fmt:formatNumber value="${Cart.price}" pattern="###,###,###"/>원</span></td>
            <td>-</td>
            <td>기본배송</td>
            <td><input type="checkbox" name="delete" value="${Cart.no}"></td>
          </tr>
          </c:forEach>
        <hr>
        </tbody>
  </table>
    <hr>
  </div>
  <div id="cart" align="center">
    <button type="submit" class="btn btn-danger" >삭제</button>
    <button type="submit" class="btn btn-danger" onclick="return cartConfirm()">주문하기</button>
    <button type="reset" class="btn btn-outline-secondary">취소</button>
  </div>
</form>
<script type="text/javascript">
  function cartConfirm() {
    var checkboxes = document.getElementsByName("no");
    var isChecked = false;

    for (var i = 0; i < checkboxes.length; i++) {
      if (checkboxes[i].checked) {
        isChecked = true;
        break;
      }
    }

    if (isChecked) {
      return true;
    } else {
      alert("선택하신 상품이 없습니다.");
      return false;
    }
  }

    document.getElementById('select-all-no').addEventListener('change', function() {
    var checkboxes = document.querySelectorAll('input[name="no"]');
    for (var i = 0; i < checkboxes.length; i++) {
    checkboxes[i].checked = this.checked;
  }
  });

  document.getElementById('select-all-delete').addEventListener('change', function() {
    var checkboxes = document.querySelectorAll('input[name="delete"]');
    for (var i = 0; i < checkboxes.length; i++) {
      checkboxes[i].checked = this.checked;
    }
  });

</script>

</script>
</body>
<%@ include file="footer.jsp"%>
<%@ include file="./include/bottom.jsp" %>
</html>
