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
				<form action="${path}/yangchu/saveGoods.do" method="post" enctype="multipart/form-data"
					class="form-horizontal" role="form">
                    <fieldset>
						<legend>基本信息</legend>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="orgid">组织名称</label>
                          	<div class="col-sm-10">
								<input class="form-control" id="orgidtree" name="orgId" />
                            	<input class="form-control" id="orgid"  type="text" placeholder="点击填写组织名称"/>
                          	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="roleremark">供应商名称</label>
                          	<div class="col-sm-10">
								<input class="form-control" id="menupidValue2" name="supplierId" />
                            	<input class="form-control" id="supplier" name="roleRemark" type="text" placeholder="点击选择供应商名称"/>
                          	</div>
                       	</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="roleremark">物资名称</label>
							<div class="col-sm-10">
								<input class="form-control" id="menupidValue" name="goodsId" />
								<input class="form-control" id="goodsid" name="roleRemark" type="text" placeholder="点击选择物资名称"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="roleremark">税率</label>
							<div class="col-sm-10">
								<input class="form-control" id="roleremark3" name="roleRemark" type="text" placeholder="填写税率"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="roleremark">收货组织名称</label>
							<div class="col-sm-10">
								<input class="form-control" id="orgidSpace" />
								<input class="form-control" id="orgid2"  name="goodsorgName" type="text" placeholder="填写收货组织名称"/>
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