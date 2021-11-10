<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人日记-主页</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/diaryContent.css">
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
            <div class="content-header">
                <div class="time">
                    ${time}    <#-- request域内容-->
                </div>
                <div class="write-diary">
                    <a href="/write">写日记</a>
                </div>
            </div>
            <div class="content-ul">
                <ul>
                    <#list diarys as diary >
                        <li>
                            <a href="/diary/${diary.getId()?c}" class="title">${diary.getTitle()}</a>
                            <span class="content-time">${diary.getPublishTime()?string("yyyy-MM-dd HH:mm:ss")}</span>
                        </li>
                    </#list>
                </ul>
            </div>
        </div>
    </div>

</body>
</html>