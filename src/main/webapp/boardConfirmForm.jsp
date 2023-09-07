<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-06-26
  Time: 오후 9:30
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

        #wrap {
            margin-top: 2rem;
        }

        .form-label {
            font-weight: bold;
        }
    </style>
</head>
<body>
<div id="wrap" class="container">
    <h1 class="display-4">비밀번호 확인</h1>
    <form action="Servlet" name="frm" method="get">
        <input type="hidden" name="command" value="boardConfirm">
        <input type="hidden" name="seq" value="${param.seq}">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="mb-3">
                    <label for="pass" class="form-label">비밀번호</label>
                    <input type="password" class="form-control" name="pass" id="pass" size="20">
                </div>
                <div class="text-center">
                    <input type="submit" class="btn btn-primary" value="확 인" onclick="return loginCheck()">
                </div>
                <br>
                <p>${message}</p>
            </div>
        </div>
    </form>
</div>

<!-- 부트스트랩 JS 및 jQuery 링크 추가 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>

<script type="text/javascript">
    function loginCheck() {
        // 비밀번호 확인 로직 추가
        return true; // 예시로 항상 true를 반환하도록 설정
    }
</script>

</body>
</html>
