<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人日记-修改密码</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/register.css">
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
            <#if Session["login"]??>
                <!-- 登录后 -->
                <a href="" class="name">${Session["login"].getUsername()}</a>
                <ul class="user-drop-down">
                    <li>
                        <a href="/changePassword">修改密码</a>
                    </li>
                    <li>
                        <a href="/write">书写日记</a>
                    </li>
                    <li>
                        <a href="/delete">删除日记</a>
                    </li>
                    <li>
                        <a href="/quit">退出</a>
                    </li>
                </ul>
            <#else >
                <!-- 登录前 -->
                <a href="/login" class="login-before">登录</a>
                <a href="/register" class="login-before">注册</a>
            </#if>
        </div>
    </div>
    <div class="content-body">
        <div class="content-div">
            <div class="login-title">
                修改密码
            </div>
            <div class="register-content">
                <div class="register-content-1">
                    <#if userError>
                        <p class="login-modal-tip">账号不存在，请确认后重新输入!</p>
                    </#if>
                    <#if changePasswordError>
                        <p class="login-modal-tip">两次密码不一致，请重新输入!</p>
                    </#if>
                    <form action="/changePassword" id="register-form" method="POST">
                        <label for="username-input">用户名</label>
                        <input type="text" id="username-input" name="username" placeholder="请输入用户名"><br>
                        <label for="password-input1">密码</label>
                        <input type="password" id="password-input1" name="password1" placeholder="请输入密码"><br>
                        <label for="password-input2">密码</label>
                        <input type="password" id="password-input2" name="password2" placeholder="再次输入密码"><br>
                    </form>
                    <input type="submit" class="register" form="register-form" value="修改密码">
                </div>
            </div>
        </div>
    </div>
</body>
</html>