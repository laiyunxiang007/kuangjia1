<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<title>发布课程</title>
<link rel="stylesheet" type="text/css" href="css/wu.css" />
<link rel="stylesheet" type="text/css" href="easyui/1.3.4/themes/default/easyui.css" />
<link rel="stylesheet" type="text/css" href="css/icon.css" />
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="easyui/1.3.4/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/1.3.4/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
<div class="easyui-panel" title="课程发布" >
        <form id="ff" method="post">
            <table cellpadding="10">
                <thead>
                <tr>
                    <td>课程名称:</td>
                    <td><input class="easyui-textbox" type="text" style="width: 300px;height: 20px" name="lessonname"
                               data-options="required:true"></input></td>
                    <td>上课时间:</td>
                    <td><input class="easyui-textbox" type="text" style="width: 300px;height: 20px" name="shangKeTime"
                         value="例如:每周二晚上或周一，周五早上"      data-options="required:true"></input></td>
                    <td>每节课时长:</td>
                    <td><input class="easyui-textbox" type="text" style="width: 300px;height: 20px" name="lessonTime"
                               data-options="required:true">小时</input></td>
                </tr>
                <tr>
                    <td>发布时间:</td>
                    <td><input class="easyui-datetimebox" type="text" style="width: 300px;height: 20px" name="publishTime" data-options="required:true"></input></td>
                    <td>结束时间:</td>
                    <td><input class="easyui-datetimebox" type="text" style="width: 300px;height: 20px" name="endTime" data-options="required:true"></input></td>
                    <td>课程类型:</td>
                    <td><input class="easyui-textbox" type="text" style="width: 300px;height: 20px" name="type" data-options="required:true"></input></td>
                </tr>
                <tr>
                    <td>老师信息:</td>
                    <td><input class="easyui-textbox" type="text" style="width: 300px;height: 20px" name="teacherInfo"></input></td>
                    <td>备注:</td>
                    <td><input class="easyui-textbox" type="text" style="width: 300px;height: 20px" name="remarks" ></input></td>
                </tr>
                </thead>
                <tbody>

                    <td>课程信息:</td>
                    <td><textarea style="resize:none;height: 300px;width: 600px"></textarea></td>

                </tbody>
            </table>
        </form>
        <div style="text-align:center;padding:5px">
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">发布</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">清空</a>
        </div>
</div>
<script>
    function submitForm(){
        $('#ff').form('发布',, {
            url:...,
            onSubmit: function(){
            },
            success:function(data){
                alert(data)
            }
        });
    }
    function clearForm(){
        $('#ff').form('clear');
    }
</script>
</body>
</html>