<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023-06-27
  Time: 오전 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- 부트스트랩 CSS 링크 추가 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/qna.css">
    <style>
        /* 커스텀 스타일 */
        #wrap {
            margin-top: 2rem;
        }
    </style>
</head>
<body>
<div id="wrap" class="container">
    <h1 class="display-4">게시글 상세보기</h1>
    <table class="table">
        <tr>
            <th>작성자</th>
            <td>${board.id}</td>
            <th>제목</th>
            <td>${board.title}</td>
        </tr>
        <tr>
            <th>내용</th>
            <td colspan="3" height="300px">${board.content}</td>
        </tr>
    </table>
    <br> <br>
    <div class="btn-group">
        <input type="button" class="btn btn-outline-danger" value="게시글 수정"
               onclick="open_win('Servlet?command=boardConfirmForm&seq=${board.seq}', 'update')">
        <input type="button" class="btn btn-outline-danger" value="게시글 삭제"
               onclick="open_win('Servlet?command=boardConfirmForm&seq=${board.seq}', 'delete')">
    </div>
</div>

<!-- 부트스트랩 JS 및 jQuery 링크 추가 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

<script type="text/javascript">
    function open_win(url, name) {
        window.open(url, name, "width=500, height=400");
    }
</script>

</body>
</html>
