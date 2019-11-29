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
                <div class="alert alert-success" role="alert">央厨--供应商详细信息</div>
                <div class="form-group">
<%--                    <label class="col-md-1 control-label"></label>--%>
                    <div class="col-md-2">
                        <span>联系人</span>
                        <input class="form-control " id="search"  name="supplierContact"
                               value="${supplierEntity.supplierContact }" type="text"
                               placeholder="请回车搜索！！！">
                    </div>
                    <div class="col-md-2"></div>
                    <label class="control-label col-md-1"></label>
                    <div class="col-md-4">
                        <span>供应商</span>
                        <input class="form-control " id="search1" name="supplierName"
                               value="${supplierEntity.supplierName}" type="text"
                               placeholder="请回车搜索！！！">
                    </div>
                    <div class="col-md-2"></div>
                </div>
                <div class="form-group">
                    <div class="col-md-7">
                        <div class="btn-group hidden-xs" role="group">
                            <button type="button" class="btn btn-primary" data-toggle="modal" id="create"
                                    name="yangchu/supplier/create.jsp">
                                <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
                            </button>
                            <button type="button" class="btn btn-danger" data-toggle="modal" id="delete"
                                    name="yangchu/supplierdelete.do">
                                <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
                            </button>
                            <button type="button" class="btn btn-success" data-toggle="modal" id="update"
                                    name="yangchu/supplierview.do">
                                <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
                            </button>
                        </div>
                    </div>
                </div>
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
                            <td><input type="checkbox" name="ids" value="${e.supplierId}"/></td>
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
            </div>
        </form>
    </div>
</div>
</body>
</html>