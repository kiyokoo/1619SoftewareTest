<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人日记-注册</title>
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
            <!-- 登录前 -->
            <a href="/login" class="login-before">登录</a>
            <a href="/register" class="login-before">注册</a>
        </div>
    </div>
    <div class="content-body">
        <div class="content-div">
            <div class="login-title">
                账号注册
            </div>
            <div class="register-content">
                <div class="register-content-1">
                    <#if usernameExist>
                        <p class="login-modal-tip">用户名已存在，请重新输入！</p>
                    </#if>
                    <#if passwordSame>
                        <p class="login-modal-tip">两次密码不一样，请重新输入！</p>
                    </#if>
                    <form action="/register" id="register-form" method="POST">
                        <label for="username-input">用户名</label>
                        <input type="text" id="username-input" name="username" placeholder="请输入用户名"><br>
                        <label for="password-input1">密码</label>
                        <input type="password" id="password-input1" name="password1" placeholder="请输入密码"><br>
                        <label for="password-input2">密码</label>
                        <input type="password" id="password-input2" name="password2" placeholder="再次输入密码"><br>
                    </form>
                    <input type="submit" class="register" form="register-form" value="立即注册">
                </div>
            </div>
        </div>
    </div>
</body>
</html>