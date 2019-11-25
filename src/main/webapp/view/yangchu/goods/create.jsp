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
				<form action="${path }/yangchu/save.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>测试基本信息</legend>
                       <div class="form-group">
							   <label class="col-sm-1 control-label" for="menupid">物资分类</label>
							   <div class="col-sm-2">
								   <input class="form-control" id="menupidValue" name="menuPid" type="hidden"/>
								   <input class="form-control" id="menupid" type="text" readonly placeholder="选择物资"/>
							   </div>
							   <label class="col-sm-1 control-label" for="ds_name">物资名称:</label>
							   <div class="col-sm-2">
								   <input class="form-control" type="text" name="goodsName" />
							   </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-1 control-label" for="ds_username">物资规格:</label>
                          <div class="col-sm-2">
                             <input class="form-control" type="text"  name="goodsGuige"/>
                          </div>
						   <label class="col-sm-1 control-label" for="ds_username">物资简称:</label>
						   <div class="col-sm-2">
							   <input class="form-control" type="text"  name="goodsSimp"/>
						   </div>
                       </div>
						<div class="form-group">
							<label class="col-sm-1 control-label" for="ds_username">物资简述:</label>
							<div class="col-sm-6">
								<textarea class="form-control" rows="3" name="goodsTxt"></textarea>
							</div>
						</div>
						<div class="form-group">
							<h4>图片信息：</h4>
							<div class="img-preview img-preview-sm"></div>
							<div class="btn-group">
								<label title="上传图片" for="inputImage" class="btn btn-primary">
									<input type="file" accept="image/*" name="file" id="inputImage" class="hide">上传照片
								</label>
							</div>
						</div>
						<legend></legend>
						<div class="form-group">
							<label class="col-sm-1 control-label">是否赋码:</label>
							<div class="col-sm-2">
								<label class="radio-inline">
									<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 是
								</label>
								<label class="radio-inline">
									<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 否
								</label>
							</div>
							<label class="col-sm-1 control-label" for="ds_name">物资类型:</label>
							<div class="col-sm-2">
								<zhg:select codeTp="goodsState" name="goodsState" cls="form-control" def="true"></zhg:select>
							</div>
							<label class="col-sm-1 control-label">限制采购:</label>
							<div class="col-sm-2">
								<label class="radio-inline">
									<input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option1"> 是
								</label>
								<label class="radio-inline">
									<input type="radio" name="inlineRadioOptions" id="inlineRadio4" value="option2"> 否
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" >物资组:</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="goodsWuzizu" />
							</div>
							<label class="col-sm-2 control-label" >保质期:</label>
							<div class="col-sm-1">
								<input class="form-control" type="text" name="goodsBaozhi" />
							</div>
							<div class="col-sm-1">
								<select data-placeholder="" class="chosen-select"  style="width:45px; height: 30px" tabindex="2">
									<option value="1" >日</option>
									<option value="2" >月</option>
									<option value="3" >年</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" for="ds_name">税率</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="goodsShuilv" />
							</div>
							<label class="col-sm-1 control-label" for="ds_name">基本单位</label>
							<div class="col-sm-1">
								<select data-placeholder="" class="chosen-select" name="goodsJiben"  style="width:60px; height: 30px" tabindex="2">
									<option value="1" >千克</option>
									<option value="2" >克</option>
									<option value="3" >斤</option>
								</select>
							</div>
							<label class="col-sm-1 control-label" for="ds_name">生产单位</label>
							<div class="col-sm-1">
								<select data-placeholder="" class="chosen-select" name="goodsShengchan" style="width:60px; height: 30px" tabindex="2">
									<option value="1" >千克</option>
									<option value="2" >克</option>
									<option value="3" >斤</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" for="ds_name">净重：</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="goodsJingzhong" />
							</div>
							<label class="col-sm-1 control-label" for="ds_name">毛重：</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="goodsMaozhong" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" for="ds_name">体积</label>
							<div class="col-sm-1">
								<input class="form-control" type="text" name="goodsTiji"  placeholder="长"/>
							</div>
							<div class="col-sm-1">
								<input class="form-control" type="text" name="goodsTiji"  placeholder="宽"/>
							</div>
							<div class="col-sm-1">
								<input class="form-control" type="text" name="goodsTiji"  placeholder="高"/>
							</div>
						<label class="col-sm-1 control-label" for="ds_name">单位</label>
						<div class="col-sm-1">
							<select data-placeholder="" class="chosen-select" name="goodsTijidanwei" style="width:60px; height: 30px" tabindex="2">
								<option value="1" >米</option>
								<option value="2" >厘米</option>
								<option value="3" >毫米</option>
							</select>
						</div>
						</div>
					</fieldset>
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-1 control-label" for="ds_host"></label>
                           	<div class="col-sm-1">
                              	<input type="submit" value="提交" class="btn btn-primary"/>
                           	</div>
                           	<label class="col-sm-1 control-label" for="ds_host"></label>
                           	<div class="col-sm-2">
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
	<script type="text/javascript" src="${path }/view/yangchu/goods/js/menu-create.js"></script>
</html>