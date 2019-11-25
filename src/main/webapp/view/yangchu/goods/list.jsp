<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>测试展示列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">测试详细信息</div>
	                <div class="col-sm-8">
	                	<div class="btn-group hidden-xs" role="group">
                			<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="yangchu/goods/create.jsp">
	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
	                        </button>
							<td>
								<button type="button" class="btn btn-success" data-toggle="modal" id="update" name="yangchu/view.do">
									<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
								</button>
								<button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="yangchu/delete.do">
									<i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
								</button>
							</td>
		                 </div>
	                </div>
	                <div class="col-sm-4">
	                	<input class="form-control" id="search" name="testName" value="${testEntity.testName }" type="text" placeholder="查询内容 回车搜索"/>
	                </div>
	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/></th>
									<th>物资编码</th>
					                <th>物资名称</th>
					                <th>物资简称</th>
					                <th>规格</th>
					                <th>物资分类</th>
					                <th>基本单位</th>
					                <th>状态</th>
					                <th>修改时间</th>
					                <th>创建人</th>
					                <th>操作</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td><input type="checkbox" name="ids" value="${e.goodsId }"/></td>
										<td>${e.goodsId }</td>
						                <td>${e.goodsName }</td>
										<td>${e.goodsSimp }</td>
										<td>${e.goodsGuige }</td>
										<td>${e.goodsGuige}</td>
										<td>${e.goodsJiben }</td>
										<td><zhg:show  codeTp="goodsState" value="${e.goodsState }" /></td>
						                <td><fmt:formatDate value="${e.updateDate}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
										<td>${e.goodsUser }</td>

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