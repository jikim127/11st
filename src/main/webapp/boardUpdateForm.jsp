<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023-06-27
  Time: 오후 2:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <!-- 부트스트랩 CSS 링크 추가 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/qna.css">
  <style>
    /* 커스텀 스타일 */
    body {
      background-color: #f8f9fa;
    }

    #zzz {
      margin-top: 2rem;
    }

    .form-label {
      font-weight: bold;
    }
  </style>
</head>
<body>
<div id="zzz" class="container">
  <h1 class="display-4">게시글 수정</h1>
  <form name="frm" method="post" action="Servlet">
    <input type="hidden" name="command" value="board_update">
    <input type="hidden" name="seq" value="${board.seq}">
    <input type="hidden" name="no" value="${board.no}">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="mb-3">
          <label for="id" class="form-label">작성자</label>
          <input type="text" class="form-control" size="12" name="id" value="${board.id}" readonly="true">
        </div>
        <div class="mb-3">
          <label for="pass" class="form-label">비밀번호</label>
          <input type="password" class="form-control" size="12" name="pass">
          <small class="form-text text-muted">* 필수 (게시물 수정 및 삭제 시 필요합니다.)</small>
        </div>
        <div class="mb-3">
          <label for="title" class="form-label">제목</label>
          <input type="text" class="form-control" size="70" name="title" value="${board.title}">
        </div>
        <div class="mb-3">
          <label for="content" class="form-label">내용</label>
          <textarea class="form-control" cols="70" rows="15" name="content">${board.content}</textarea>
        </div>
        <div class="text-center">
          <input type="submit" class="btn btn-danger" value="등록">
          <input type="reset" class="btn btn-secondary" value="다시 작성">
        </div>
      </div>
    </div>
  </form>
</div>

<!-- 부트스트랩 JS 및 jQuery 링크 추가 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
