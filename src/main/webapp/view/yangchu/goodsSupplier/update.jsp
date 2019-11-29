<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>关系添加页面</title>
		<%@ include file="../../../common/jsp/header.jsp" %>
		<link href="${path }/static/css/plugins/treegrid/jquery.treegrid.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path}/yangchu/updates.do" method="post" enctype="multipart/form-data"
					class="form-horizontal" role="form">
					<input type="hidden6" name="goodssupplierId" id="testId" value="${goodsSupplierEntity.goodssupplierId}">
                    <fieldset>
						<legend>基本信息</legend>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="orgid">组织名称</label>
                          	<div class="col-sm-10">
								<input class="form-control" id="orgidtree" name="orgId" type="hidden1" value="${goodsSupplierEntity.treeEntity.orgId}"/>
                            	<input class="form-control"  type="text" id="orgid" name="orgName" value="${goodsSupplierEntity.treeEntity.orgName}"/>
                          	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="roleremark">供应商名称</label>
                          	<div class="col-sm-10">
								<input class="form-control" id="menupidValue2" name="supplierId"  type="hidden2" value="${goodsSupplierEntity.supplierEntity.supplierId}"/>
                            	<input class="form-control"  name="roleRemark" id="supplier"type="text" value="${goodsSupplierEntity.supplierEntity.supplierName}" />
                          	</div>
                       	</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="roleremark">物资名称</label>
							<div class="col-sm-10">
								<input class="form-control" id="menupidValue" name="goodsId"  type="hidden3" value="${goodsSupplierEntity.goodsEntity.goodsId}"/>
								<input class="form-control"  name="roleRemark" type="text"id="goodsid" value="${goodsSupplierEntity.goodsEntity.goodsName}" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="roleremark">收货组织名称</label>
							<div class="col-sm-10">
								<input class="form-control" id="orgidSpace" type="hidden" />
								<input class="form-control" id="orgid2"  name="goodsorgName" id="orgid2" type="text" value="${goodsSupplierEntity.goodsorgName}" />
							</div>
						</div>
                    </fieldset>     
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label"></label>
                           <div class="col-sm-4">
                              <input type="submit" value="提交" class="btn btn-primary"/>
                           </div>
                           <label class="col-sm-2 control-label"></label>
                           <div class="col-sm-4">
                              <input type="reset" value="重置" class="btn btn-danger"/>
                           </div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/treegrid/jquery.treegrid.min.js"></script>
	<script type="text/javascript" src="${path }/static/js/plugins/treegrid/jquery.treegrid.bootstrap3.js"></script>
<%--	<script type="text/javascript" src="${path }/view/system/role/js/role.js"></script>--%>
	<script type="text/javascript" src="${path }/static/js/plugins/bootstrap-switch/bootstrap-switch.min.js"></script>
	<script type="text/javascript" src="${path }/view/yangchu/goodsSupplier/js/goodsSupplier-create.js"></script>
</html>