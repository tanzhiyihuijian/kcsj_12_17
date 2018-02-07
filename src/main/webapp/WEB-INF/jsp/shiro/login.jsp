<%--
  Created by IntelliJ IDEA.
  User: 王波
  Date: 2018-01-31
  Time: 10:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>

    <script src="${pageContext.request.contextPath}/static/lib/jquery/jquery-3.2.1.js"></script>
</head>
<body>

    username: <input id="username" type="text" /> <br>
    password: <input id="password" type="password" /> <br>
    <button id="login-button" >登录</button>

    <script>

        $('#login-button').click(function () {

            let username = $('#username').val();
            let password = $('#password').val();

            $.ajax({
                type: 'post',
                url: '/kcsj/shiro/check-login.json',
                data: {
                    username: username,
                    password: password
                },
                dataType: 'json',
                success: function (result) {
                    if (result.success) {
                        window.location.href = '/kcsj/shiro/login-success.jhtml';
                    } else {
                        alert(result.message);
                    }
                },
                error: function() {
                    alert('通讯失败!');
                }
            });

        });



    </script>


</body>
</html>
