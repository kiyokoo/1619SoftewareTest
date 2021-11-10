<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${diary.getTitle()}-个人日记</title>
    <link rel="stylesheet" href="http://127.0.0.1:8080/css/index.css">
    <link rel="stylesheet" href="http://127.0.0.1:8080/css/diaryContent.css">
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
            <div class="content-header">
                <div class="content-title">
                    <h1>${diary.getTitle()}</h1>
                </div>
                <div class="diary-time">
                    ${diary.getPublishTime()?string("yyyy-MM-dd HH:mm:ss")}
                </div>
                <div class="diary-book">
                    <a href="/index">日记本</a>
                </div>
            </div>
            <div class="content-p">
                <p class="content">${diary.getContent()}</p>
            </div>
        </div>
    </div>

</body>
</html>