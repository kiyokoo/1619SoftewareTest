<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>写日记</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/diaryContent.css">
    <link rel="stylesheet" href="css/writeDiary.css">
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
                <a href="" class="name">zhangsan</a>
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
            <div class="write-title">
                <form action="/write" method="post" id="write-form">
                    <input type="text" name="title" placeholder="请输入标题" class="titile-input">
                </form>
            </div>
            <div class="write-content">
                <textarea name="content" cols="30" rows="15" placeholder="请输入日记内容" class="content-input" form="write-form"></textarea>
            </div>
            <div class="write-submit">
                <input type="submit" value="发布" form="write-form">
            </div>
        </div>
    </div>
    
</body>
</html>