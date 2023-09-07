<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023-06-27
  Time: 오후 2:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script type="text/javascript">
  if(window.name=='update'){
    window.opener.parent.location.href=
            "Servlet?command=board_update_form&seq=${param.seq}";
  }else if(window.name=='delete'){
    alert("삭제되었습니다");
    window.opener.parent.location.href=
            "Servlet?command=board_delete&seq=${param.seq}";
  }
  window.close();
</script>
</body>
</html>
