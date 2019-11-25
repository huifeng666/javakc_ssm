<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>增添物资页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/test/save.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>测试基本信息</legend>
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="ds_host">物资分类:</label>
						   <div class="input-append ">
							   <input type="text" class="span2 search-query">
							   <button type="submit" class="btn">选择物资</button>
						   </div>
							   <label class="col-sm-2 control-label" for="ds_name">物资名称:</label>
							   <div class="col-sm-2">
								   <input class="form-control" type="text" name="goodsName" />
							   </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">规格:</label>
                          <div class="col-sm-2">
                             <input class="form-control" type="text"  name="goodsGuige"/>
                          </div>
						   <label class="col-sm-2 control-label" for="ds_username">物资简称:</label>
						   <div class="col-sm-2">
							   <input class="form-control" type="text"  name="goodsSimp"/>
						   </div>
                       </div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_username">物资简述:</label>
							<div class="col-sm-6">
								<textarea class="form-control" rows="3"></textarea>
							</div>
						</div>
						<div class="form-group">
							<h4>图片信息：</h4>
							<div class="img-preview img-preview-sm"></div>
							<div class="btn-group">
								<label title="上传图片" for="inputImage" class="btn btn-primary">
									<input type="file" accept="image/*" name="file" id="inputImage" class="hide">
								</label>
							</div>
						</div>
						<legend></legend>
						<div class="form-group">
							<label class="col-sm-2 control-label">是否赋码:</label>
							<div class="col-sm-2">
								<label class="checkbox-inline">
									<input type="checkbox" value="option1" id="inlineCheckbox1">
									是
								</label>
								<label class="checkbox-inline">
									<input type="checkbox" value="option2" id="inlineCheckbox2">
									否
								</label>
							</div>
							<label class="col-sm-2 control-label" for="ds_name">物资类型:</label>
							<div class="col-sm-3">
								<zhg:select codeTp="goodsState" name="goodsState" cls="form-control" def="true"></zhg:select>
							</div>
						</div>

						<label class="col-sm-2 control-label">限制合同采购:</label>
						<div class="col-sm-3">
							<label class="checkbox-inline">
								<input type="checkbox" value="option1" id="inlineCheckbox3">
								是
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" value="option2" id="inlineCheckbox4">
								否
							</label>
						</div>
                    </fieldset>

                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label" for="ds_host"></label>
                           	<div class="col-sm-4">
                              	<input type="submit" value="提交" class="btn btn-primary"/>
                           	</div>
                           	<label class="col-sm-2 control-label" for="ds_host"></label>
                           	<div class="col-sm-4">
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