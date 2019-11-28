<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>选择物资列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="<%=path%>static/css/plugins/treegrid/jquery.treegrid.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
<%--	                <div class="alert alert-success" role="alert">测试详细信息</div>--%>
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
						                <td><input type="checkbox" name="ids" value="${e.goodsId }" value1="${e.goodsName}"/></td>
										<td>${e.goodsId }</td>
						                <td>${e.goodsName }</td>
										<td>${e.goodsSimp }</td>
										<td>${e.goodsGuige }</td>
										<td>${e.goodsGuige}</td>
										<td><zhg:show  codeTp="goodsJiben" value="${e.goodsJiben }"/> </td>
										<td><zhg:show  codeTp="goodsState" value="${e.goodsState }" /></td>
						                <td><fmt:formatDate value="${e.updateDate}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
										<td>${e.goodsUser }</td>
										<td>复制
											停用
											单位转换
										</td>

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


						parent.$('#goodsid').val(name);
						parent.$('#menupidValue').val(id);
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