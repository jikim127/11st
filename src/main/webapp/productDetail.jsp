<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="header.jsp"%>
<link rel="stylesheet" type="text/css" href="css/qna.css">

<html>
<head>
    <title>Title</title>
    <!-- 부트스트랩 CSS 링크 추가 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        /* 커스텀 스타일 */
        .product-image {
            width: 100%;
            height: auto;
        }
        .qna-header {
            margin-top: 2rem;
        }
        /* 호버 효과 */
        .table-hover tbody tr:hover {
            background-color: #f8f9fa;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="${product.image}" class="product-image">
        </div>
        <div class="col-md-6">
            <table class="table">
                <tr>
                    <td>상품명</td>
                    <td>${product.title}</td>
                </tr>
                <tr>
                    <td>가격</td>
                    <td><fmt:formatNumber value="${product.price}" pattern="###,###,###"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <form name="frm1" method="post" action="Servlet" align="right">
                            <input type="hidden" name="command" value="cartUpdate">
                            <input type="hidden" name="id" value="${id.id}">
                            <input type="hidden" name="no" value="${product.no}">
                            <button type="submit" class="btn btn-outline-danger" onclick="return cartConfirmSelection()">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                                    <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"></path>
                                </svg>
                                장바구니에 담기
                            </button>
                        </form>

                        <form name="frm2" method="post" action="Servlet" align="right">
                            <input type="hidden" name="command" value="directOrderUpdate">
                            <input type="hidden" name="no" value="${product.no}">
                            <button type="submit" class="btn btn-outline-danger" onclick="return orderConfirmSelection()">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-credit-card" viewBox="0 0 16 16">
                                    <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v1h14V4a1 1 0 0 0-1-1H2zm13 4H1v5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V7z"></path>
                                    <path d="M2 10a1 1 0 0 1 1-1h1a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1v-1z"></path>
                                </svg>
                                구매하기
                            </button>
                        </form>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <br>
    <br>
    <br>
    <div id="qna" class="qna-header">
        <h4 class="display-4">Q&A</h4>
        <table class="table table-striped table-hover">
            <input type="button" class="btn btn-danger" value="게시글 등록" onclick="insert('Servlet?command=boardInsertForm&no=${product.no}','insert')" style="float: right;">
            <br>
            <br>
            <tr>
                <td>제목</td>
                <td>내용</td>
                <td>작성자</td>
            </tr>
            <c:forEach var="board" items="${boardList}">
                <tr onclick="view('Servlet?command=boardViewForm&seq=${board.seq}','view'); return false;">
                    <td>${board.title}</td>
                    <td>${board.content}</td>
                    <td>${board.id}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

<!-- 부트스트랩 JS 및 jQuery 링크 추가 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

<!-- 추가적인 자바스크립트 코드 작성 -->
<script type="text/javascript">
    function cartConfirmSelection() {
        var response = confirm("장바구니에 담으시겠습니까?");
        if (response) {
            if(`${id.id}`==="") {
                alert("로그인 후 사용 가능합니다.")
                return false;
            }else{
                return true;
            }
        } else {
            return false;
        }
    }

    function orderConfirmSelection() {
        var response = confirm("구매하시겠습니까?");
        if (response) {
            if(`${id.id}`==="") {
                alert("로그인 후 사용 가능합니다.")
                return false;
            }else{
                return true;
            }
        } else {
            return false;
        }
    }

    function insert(url,name){
        if(`${id.id}`===""){
            alert("로그인 후 사용 가능합니다.")
            return false;
        }else{
            window.open(url,name,"width=600, height=600");
        }
    }

    function view(url, name) {
        window.open(url, name, "width=600, height=500");
    }
</script>

</body>
<%@ include file="footer.jsp"%>
</html>