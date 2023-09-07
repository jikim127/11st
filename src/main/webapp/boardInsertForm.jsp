<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="css/qna.css">
    <!-- 부트스트랩 CSS 링크 추가 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script type="text/javascript">
        function close(){
            self.close();
        }
    </script>
</head>
<body>
<div id="qna" class="container">
    <h1 class="text-center">게시글 등록</h1>
    <form name="frm" method="post" action="Servlet">
        <input type="hidden" name="command" value="boardInsert">
        <input type="hidden" name="no" value="${param.no}">
        <div class="mb-3 row">
            <label for="id" class="col-sm-2 col-form-label">작성자</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="id" value="${id.id}" readonly="true">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="pass" class="col-sm-2 col-form-label">비밀번호</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" name="pass" required>
                <small>* 필수 (게시물 수정 및 삭제시 필요합니다.)</small>
            </div>
        </div>
        <div class="mb-3 row">
            <label for="title" class="col-sm-2 col-form-label">제목</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="title" required>
                <small>* 필수</small>
            </div>
        </div>
        <div class="mb-3 row">
            <label for="content" class="col-sm-2 col-form-label">내용</label>
            <div class="col-sm-10">
                <textarea class="form-control" name="content" rows="10"></textarea>
            </div>
        </div>
        <div class="text-center">
            <button type="submit" class="btn btn-outline-danger" onclick="close()">등록</button>
            <button type="reset" class="btn btn-outline-danger">다시 작성</button>
        </div>
    </form>
</div>

<!-- 부트스트랩 JS 및 jQuery 링크 추가 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

</body>
</html>
