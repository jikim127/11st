<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023-06-26
  Time: PM 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<%@ include file="header.jsp" %>
<%@ include file="./include/top.jsp" %>
<body>

<div id="jongjin" align="center">
    <div class="row">
        <c:forEach var="product" items="${product}">
            <div class="col-md-4 mb-4">
                <hr>
                <div class="bg-body-tertiary me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden" style="margin-left: 10px; margin-right: 10px;">
                    <div class="my-3 py-3">
                        <a href="Servlet?command=productDetail&no=${product.no}" style="text-decoration: none; color: black;">
                            <p class="lead" style="font-size: large;">${product.title}</p>
                        </a>
                        <a href="Servlet?command=productDetail&no=${product.no}" style="text-decoration: none; color: black;">
                            <p class="lead" style="font-size: medium;">
                                <fmt:formatNumber value="${product.price}" pattern="###,###,###"/>원
                            </p>
                        </a>
                    </div>
                    <div class="bg-danger shadow-sm mx-auto" style="width: 100%; height: 400px; border-radius: 21px 21px 21px 21px;">
                        <a href="Servlet?command=productDetail&no=${product.no}">
                            <div class="product-image">
                                <img src=${product.image}>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>


<%--    --%>
<%--    <table border="1px" class="list">--%>
<%--        <c:forEach var="product" items="${product}">--%>
<%--            <tr class="product">--%>
<%--                <td><img src= ${product.image}></td>--%>
<%--                <td>--%>
<%--                    <a href="Servlet?command=productDetail&no=${product.no}">${product.title}</a>--%>
<%--                    <br><br><br>--%>
<%--                    <fmt:formatNumber value="${product.price}" pattern="###,###,###"/>원--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--    </table>--%>
</div>
</body>
<%@ include file="footer.jsp" %>
<%@ include file="./include/bottom.jsp" %>

