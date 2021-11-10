<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人日记-登录</title>
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/login.css">
</head>
<body>
    <div class="header">
        <div class="header-index">
            <a href="/index">首页</a>
        </div>
        <div class="header-title">
            <a href="/index">个人日记</a>
        </div>
        <div class="header-user">
            <!-- 登录前 -->
            <a href="/login" class="login-before">登录</a>
            <a href="/register" class="login-before">注册</a>
        </div>
    </div>
    <div class="content-body">
        <div class="content-div">
            <div class="login-title">
                用户登录
            </div>
            <div class="login-content">
                <div class="login-content-1">
                    <#if dataError>
                        <p class="login-modal-tip">用户名或密码错误，请重新输入!</p>
                    </#if>
                    <form action="/login" id="login-form" method="POST">
                        <label for="username-input">用户名</label>
                        <input type="text" id="username-input" name="username" placeholder="请输入用户名"><br>
                        <label for="password-input">密码</label>
                        <input type="password" id="password-input" name="password" placeholder="请输入密码"><br>
                    </form>
                    <a href="/changePassword" class="change-password">忘记密码</a>
                    <a href="/register" class="register">立即注册</a><br>
                    <input type="submit" class="login" form="login-form" value="登录">
                </div>
            </div>
        </div>
    </div>
</body>
</html>