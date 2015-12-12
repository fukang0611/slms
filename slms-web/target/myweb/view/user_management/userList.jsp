<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%String path = request.getContextPath();%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <!-- Bootstrap 框架必需配置 -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户列表</title>
    <!-- Bootstrap 样式 -->
    <link href="<%=path%>/libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=path%>/libs/bootstrap/css/bootstrap-table.min.css">
</head>
<body>
<div class="container">
    <!-- 表格工具栏 -->
    <div id="toolbar">
        <button id="remove" class="btn btn-danger" disabled>
            <i class="glyphicon glyphicon-remove"></i> 删除用户
        </button>
    </div>
    <!-- 表格主体 -->
    <table id="table"
           data-toolbar="#toolbar"
           data-search="true"
           data-show-refresh="true"
           data-show-toggle="true"
           data-show-columns="true"
           data-show-export="true"
           data-detail-view="true"
           data-detail-formatter="detailFormatter"
           data-minimum-count-columns="2"
           data-show-pagination-switch="true"
           data-pagination="true"
           data-id-field="id"
           data-page-list="[10, 25, 50, 100, ALL]"
           data-show-footer="false"
           data-side-pagination="server"
           data-url="<%=path%>/user/getUsersAll.do"
           data-response-handler="responseHandler">
    </table>
</div>
<!-- jquery core -->
<script src="<%=path%>/libs/jquery/jquery-1.11.3.min.js"></script>
<!-- Bootstrap core -->
<script src="<%=path%>/libs/bootstrap/js/bootstrap.min.js"></script>
<!-- Bootstrap table -->
<script src="<%=path%>/libs/bootstrap/js/bootstrap-table.min.js"></script>
<script src="<%=path%>/libs/bootstrap/js/bootstrap-table-zh-CN.min.js"></script>
<!-- javascript functions -->
<script type="text/javascript">

    // 表格操作全局变量
    var $table = $('#table');
    var $remove = $('#remove');
    var selections = [];

    // 页面加载完成后执行
    $(function () {
        initTable(); // 初始化表格
    });

    // 初始化表格
    function initTable() {

        // 表格结构
        $table.bootstrapTable({
            // 常规属性在html标签中设置
            height: getHeight(),
            columns: [
                [
                    {
                        field: 'state',
                        checkbox: true,
                        rowspan: 2, // 占两行高度
                        align: 'center',
                        valign: 'middle'
                    },  // 第1列:checkBox
                    {
                        title: '用户 ID',
                        field: 'id',
                        rowspan: 2, // 占两行高度
                        align: 'center',
                        valign: 'middle',
                        sortable: true,
                        width: "20%" // 宽度百分比
                    }, // 第2列:ID
                    {
                        title: '详细信息',
                        colspan: 4, // 占三列宽度
                        align: 'center'
                    } // 第3列:详细信息(用户名\密码\操作)
                ],
                [
                    {
                        field: 'username',
                        title: '用户名',
                        sortable: true,
                        align: 'center'
                    }, // 用户名
                    {
                        field: 'password',
                        title: '密码',
                        sortable: true,
                        align: 'center'
                    }, // 密  码
                    {
                        field: 'createTime',
                        title: '创建日期',
                        sortable: true,
                        align: 'center'
                    }, // 创建日期
                    {
                        field: 'operate',
                        title: '操作',
                        align: 'center',
                        formatter: operateFormatter
                    }   // 操  作
                ]
            ]
        });

        // 展开详情
        $table.on('expand-row.bs.table', function (e, index, row, $detail) {
            // 可以异步获取详情,默认会加载当前行数据所有字段
            /* $.get('url', function (res) {
             $detail.html(res.replace(/\n/g, '<br>'));
             });*/
        });

        // 有勾选数据时删除按钮可用
        $table.on('check.bs.table uncheck.bs.table check-all.bs.table uncheck-all.bs.table', function () {
            $remove.prop('disabled', !$table.bootstrapTable('getSelections').length);
            selections = getIdSelections();
        });

        // 点击删除按钮
        $remove.click(function () {
            delUsers();
        });

        // 当调整浏览器窗口的大小时，重置表格尺寸
        $(window).resize(function () {
            $table.bootstrapTable('resetView', {
                height: getHeight()
            });
        });
    }

    // 得到勾选ids
    function getIdSelections() {
        return $.map($table.bootstrapTable('getSelections'), function (row) {
            return row.id;
        });
    }

    // 服务器响应处理
    function responseHandler(res) {
        // 遍历返回数据的rows
        $.each(res.rows, function (i, row) {
            debugger;
            // $.inArray( value,array ) 得到value在array中的index,若没有则返回 -1
            // 此处:根据checked数组将已勾选rows的state赋值true,未勾选则false
            row.state = $.inArray(row.id, selections) !== -1;
        });
        return res;
    }

    // 展开详情
    function detailFormatter(index, row) {
        var html = [];
        $.each(row, function (key, value) {
            html.push('<p><b>' + key + ':</b> ' + value + '</p>');
        });
        return html.join('');
    }

    // 操作列按钮
    function operateFormatter(value, row, index) {
        return [
            '<a class="like" href="javascript:likeUser(' + row + ')" title="喜欢">',
            '<i class="glyphicon glyphicon-heart"></i>',
            '</a>  ',
            '<a class="remove" href="javascript:delUsers(' + row.id + ')" title="删除">',
            '<i class="glyphicon glyphicon-remove"></i>',
            '</a>'
        ].join('');
    }

    // 删除用户
    function delUsers(id) {
        var ids = id ? id : getIdSelections();
        $.post("<%=path%>/user/delUsersByIds.do?ids=" + ids, function (result) {
            if (result.status == "success") {
                alert(result.msg);
                $table.bootstrapTable('remove', {
                    field: 'id',
                    values: ids
                });
                $remove.prop('disabled', true);
            } else {
                alert(result.msg);
            }
        }, "json");
    }

    // 喜欢用户
    function likeUser(row) {
        alert('You click like action, row: ' + JSON.stringify(row));
    }

    // 得到高度
    function getHeight() {
        return $(window).height() - $('h1').outerHeight(true);
    }

</script>
</body>
</html>
