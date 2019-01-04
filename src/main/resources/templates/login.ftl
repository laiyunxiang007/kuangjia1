
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="css/wu.css" />
    <link rel="stylesheet" type="text/css" href="easyui/1.3.4/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="css/icon.css" />
    <script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="easyui/1.3.4/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="easyui/1.3.4/locale/easyui-lang-zh_CN.js"></script>

    <script type="text/javascript">

        //添加dialog窗口，在窗口加两个按钮
        $(function () {
            $('#login').dialog({
                title: "用户登录",
                width: 350,
                height: 200,
                modal: true,
                closable: false,
                collapsible : true,	// 是否折叠
                minimizable :  true,	// 窗口最大化
                maximizable : true,	// 窗口最小化
                resizable : false,	// 是否可调整窗口大小
                buttons: [{
                    text: "登录",
                    iconCls: 'icon-ok',
                    handler: function () {
                        if ($('#loginForm').form('validate')) {//验证表单的正确性
                            $.post("Login.action",
                                { loginName: $('#loginForm input[name="LoginName"]').val(), loginPwd: $('#loginForm input[name="LoginPwd"]').val() },
                                function (data,status) {
                                if(data !=null){
                                    window.location.href = data.BackUrl;
                                }else{
                                    window.location.href = "http://localhost:8080/login";
                                }
                                });
                        }
                    }
                }, {
                    text: "注册",
                    iconCls: 'icon-edit',
                    handler: function () {
                        alert('注册');
                    }
                }]
            })
        })

    </script>
    <style type="text/css">
        .login_item{
            margin:20px auto;

        }
        .login_item span{
            display:inline-block;
            width:100px;
            text-align:right ;
        }

    </style>
</head>
<body>
<br>
<div easyui-dialog id="login">
    <form id="loginForm" action="Login.action" method="post">
        <div class="login_item"><span>用户名：</span>
            <input type="text" name="LoginName" class="easyui-validatebox" data-options="required:true,missingMessage:'请填写登录名'" /></div>
        <div class="login_item"><span>密    码：</span>
            <input type="password" name="LoginPwd" class="easyui-validatebox" data-options="required:true,missingMessage:'请填写密码'" /></div>
    </form>
</div>
</body>
</html>
