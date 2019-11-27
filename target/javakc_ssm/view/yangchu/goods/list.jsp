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
					<div class="col-sm-9">
						<label class="col-sm-1 control-label" for="ds_name">修改日期</label>
						<div class="col-sm-5">
							<input class="form-control" id="search" name="goodsName" value="${goodsEntity.goodsName }" type="text" placeholder="查询内容 回车搜索"/>
						</div>
						<button type="button" class="btn btn-success">当日</button>
						<button type="button" class="btn btn-danger">近一月</button>
					</div>
					<div class="col-sm-9">
					     <label class="col-sm-1 control-label" for="ds_name">物资分类</label>
						<div class="col-sm-4">
							<input class="form-control" id="sortName" name="sortName" value="${sortEntity.sortName }" type="text" placeholder="查询内容 回车搜索"/>
						</div>
						<label class="col-sm-1 control-label" for="ds_name" >物资状态</label>
						<div >
							<select data-placeholder="" class="chosen-select" name="goodsState" style="width:200px; height: 30px" tabindex="6">
								<option value="1" >停用</option>
								<option value="2" >启用</option>
							</select>
						</div>
					</div>
					<div class="col-sm-9">
						<label class="col-sm-1 control-label" for="ds_name">物资名称</label>
						<div class="col-sm-3">
							<input class="form-control" id="goodsName" name="goodsName" value="${goodsEntity.goodsName }" type="text" placeholder="查询内容 回车搜索"/>
						</div>
						<label class="col-sm-1 control-label" for="ds_name" >物资简称</label>
						<div >
							<div class="col-sm-4">
								<input class="form-control" id="goodsSimp" name="goodsSimp" value="${goodsEntity.goodsSimp }" type="text" placeholder="查询内容 回车搜索"/>
							</div>
						</div>
					</div>
	                <div class="col-sm-10">
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
	                 <!--------------按钮组 end-------------->
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
					                <th>税率</th>
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
										<td>${e.goodsShuilv}</td>
										<td>${e.sortEntity.sortName}</td>
										<td>${e.goodsJiben}</td>
										<td><zhg:show  codeTp="goodsState" value="${e.goodsState }" /></td>
						                <td><fmt:formatDate value="${e.updateDate}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
										<td>${e.goodsUser }</td>
										<td>
											<button type="button" class="btn btn-success">复制</button>
											<button type="button" class="btn btn-danger">停用</button>
											<button type="button" class="btn btn-primary">单位转化</button>
										</td>
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