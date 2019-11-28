<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>测试展示列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
        <link href="<%=path%>static/css/plugins/bootstrap-switch/bootstrap-switch.min.css" rel="stylesheet">
        <link href="<%=path%>/static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" rel="stylesheet">
        <script type="text/javascript" src="<%=path%>/static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
	</head>

	<body>

		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">测试详细信息</div>
                    <div class="col-sm-12">
						<div class="col-sm-3" role="group">
							<span>组织:</span>
							<input class="form-control" id="orgidValue" name="goodsid" />
							<input type="text" class="span search-query "id="orgid" name="nodeName" readonly placeholder="点击选择组织">
						</div>
                        <div class="col-sm-3" role="group">
                            <span>供应商:</span>
							<input class="form-control" id="menupidValue2" name="goodsid" />
                            <input type="text" class="span search-query" id="supplier" readonly placeholder="点击选择供应商">
                        </div>
                        <div class="col-sm-3" role="group">
                            <span>物资:</span>
							<input class="form-control" id="menupidValue" name="goodsid" />
                            <input type="text" class="span search-query" id="goodsid" readonly placeholder="点击选择物资">
                        </div>

						<div class="col-sm-3" role="group">
							<span>收货组织:</span>
							<input class="form-control" id="orgidValue2" name="goodsid" />
							<input type="text" class="span search-query "id="orgid2"  readonly placeholder="点击选择收货组织">
						</div>

                    </div>
                    <div class="control-group">
                    </div>
					<div class="col-sm-8">
						<div class="btn-group hidden-xs" role="group">
							<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="test/create.jsp">
								<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
							</button>
							<button type="button" class="btn btn-success" data-toggle="modal" id="update" name="yangchu/views.do">
								<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
							</button>
							<button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="test/delete.do">
								<i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
							</button>
						</div>
					</div>

<%--						<div class="col-sm-4">--%>
<%--							<input class="form-control" id="search" name="testName" value="${testEntity.testName }"type="text" placeholder="查询内容 回车搜索"/>--%>
<%--							<button class="btn" type="button"><i class="icon-search"></i></button>--%>
<%--						</div>--%>


	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/></th>
					                <th>组织</th>
					                <th>供应商</th>
					                <th>物资</th>
                                    <th>税率</th>
                                    <th>收货组织</th>
                                    <th>收货组织</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list}" varStatus="v">
						            <tr>
						                <td><input type="checkbox" name="ids" value="${e.goodssupplierId}"/></td>
						                <td>${e.treeEntity.orgName}</td>
						                <td>${e.supplierEntity.supplierName}</td>
						                <td>${e.goodsEntity.goodsName}</td>
                                        <td>${e.goodsEntity.goodsShuilv}</td>
                                        <td>${e.goodsorgName}</td>
                                        <td>${e.goodssupplierId}</td>
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
    <script type="text/javascript" src="${path }/static/js/plugins/bootstrap-switch/bootstrap-switch.min.js"></script>
    <script type="text/javascript" src="${path }/view/yangchu/goodsSupplier/js/goodsSupplier-create.js"></script>

</html>