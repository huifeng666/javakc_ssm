<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>央厨项目--供应商列表页面</title>
    <%@ include file="../../../common/jsp/header.jsp" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="ibox float-e-margins">
        <form id="searchForm" action="">
            <div class="col-sm-12">
                <!-- ------------按钮组 start------------ -->


                <!-- ------------按钮组 end------------ -->
                <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                <table class="table table-striped table-bordered table-hover table-condensed">
                    <thead>
                    <tr>
                        <th><input type="checkbox" id="checkall"></th>
                        <th>供应商编码</th>
                        <th>供应商名称</th>
                        <th>供应商类型</th>
                        <th>联系人</th>
                        <th>联系电话</th>
                        <th>必须合同</th>
                        <th>是否启用门户</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="vs"></c:set>
                    <c:forEach var="e" items="${page.list}" varStatus="v">
                        <tr>
                            <td><input type="checkbox" name="ids" value="${e.supplierId}" value1="${e.supplierName}"/></td>
                            <td>${e.supplierId}</td>
                            <td>${e.supplierName}</td>
                            <td><zhg:show codeTp="type" value="${e.supplierType}"/></td>
                            <td>${e.supplierContact}</td>
                            <td>${e.supplierContectnum}</td>
                            <td><zhg:show value="${e.supplierPortal}" codeTp="PORTAL"></zhg:show></td>
                            <td><zhg:show value="${e.supplierContract}" codeTp="CONTRACT"></zhg:show></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="page">${page}</div>
                <div class="col-sm-8">
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-primary" data-toggle="modal" id="ascertain">
                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>确定
                        </button>
                        <button type="button" class="btn btn-danger" data-toggle="modal" id="shutdo">
                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>关闭
                        </button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
    $(function()
    {
        var index = parent.layer.getFrameIndex(window.name);

        $('#ascertain').click(function()
        {
            var count = $('[name=ids]:checked').length;
            if(count == 0)
            {
                layer.msg('怎么着, 没有喜欢的?', {icon: 4});
                return;
            }
            else
            {
                var id = $('[name=ids ]:checked').val();
                var name = $('[name=ids ]:checked').attr('value1');


                parent.$('#supplier').val(name);
                parent.$('#menupidValue2').val(id);
                parent.layer.close(index);
            }
        });
        $('#shutdo').click(function()
        {
            parent.layer.close(index);
        });
    });
</script>
</body>
</html>