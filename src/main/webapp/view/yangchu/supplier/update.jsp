<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供应商修改页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/yangchu/supplierupdate.do" method="post" class="form-horizontal" role="form">
					<input type="hidden" name="supplierId" id="supplierId" value="${supplierEntity.supplierId}">
                    <fieldset>
                        <legend>测试基本信息</legend>
						<legend>央厨--供应商基本信息</legend>
						<div class="form-group">
							<label class="col-sm-1 control-label" >供应商类型</label>
							<div class="col-sm-3">
								<zhg:select codeTp="type" name="supplierType" cls="form-control" def="true" value="${supplierType}"></zhg:select>
							</div>
							<label class="col-sm-1 control-label" >供应商内部组织</label>
							<div class="col-sm-3">
								<input class="form-control" type="text" name="supplierOrg" value="${supplierOrg}" >
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" >供应商名称</label>
							<div class="col-sm-3">
								<input class="form-control" type="text" name="supplierName" value="${supplierName}">
							</div>
							<label class="col-sm-1 control-label" >供应商分类</label>
							<div class="col-sm-3">
								<zhg:select codeTp="LEVEL" name="supplierLevel" cls="form-control" def="true" value="${supplierLevel}"></zhg:select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" >供应商简称</label>
							<div class="col-sm-3">
								<input class="form-control" type="text" name="supplierSim" value="${supplierSim}"/>
							</div>
							<label class="col-sm-1 control-label" >法人</label>
							<div class="col-sm-3">
								<input class="form-control" type="text" name="supplierFaren" value="${supplierFaren}"/>
							</div>
							<label class="col-sm-1 control-label" >法人电话</label>
							<div class="col-sm-2">
								<input class="form-contro2" type="text" name="supplierFarenph" value="${supplierFarenph}"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" >供应商地址</label>
							<div class="col-sm-3">
								<input class="form-control" type="text" name="supplierAddr" value="${supplierAddr}"/>
							</div>
							<label class="col-sm-1  control-label" >社会统一信任代码</label>
							<div class="col-sm-3">
								<input class="form-control" type="text" name="supplierTrustnum" value="${supplierTrustnum}"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" >联系人</label>
							<div class="col-sm-3">
								<input class="form-control" type="text" name="supplierContact" value="${supplierContact}"/>
							</div>
							<label class="col-sm-1  control-label" >联系电话</label>
							<div class="col-sm-3">
								<input class="form-control" type="text" name="supplierContectnum" value="${supplierContectnum}"/>
							</div>
							<label class="col-sm-1  control-label" >联系人邮箱</label>
							<div class="col-sm-3">
								<input class="form-control" type="text" name="supplierContectemall" ${supplierContectemail}/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" >启用门户</label>
							<div class="col-sm-2">
								<input type="checkbox" name="supplierPortal" value="${supplierPortal}"/>
							</div>
							<label class="col-sm-1  control-label" >必须合同</label>
							<div class="col-sm-1">
								<input type="checkbox" name="supplierContract" value="${supplierContract}"/>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<div class="form-group">
							<label class="col-sm-2 control-label" ></label>
							<div class="col-sm-4">
								<input type="submit" value="提交" class="btn btn-primary"/>
								<input type="reset" value="重置" class="btn btn-danger" id="resetForm"/>
							</div>
						</div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
	<script type="text/javascript" src="./js/dictionary.js"></script>
</html>