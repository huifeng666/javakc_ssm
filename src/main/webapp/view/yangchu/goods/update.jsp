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
				<form action="${path }/yangchu/update.do" method="post" class="form-horizontal" role="form">
					<input type="hidden" name="goodsId" id="goodsId" value="${goodsEntity.goodsId}">
                    <fieldset>
                        <legend>测试基本信息</legend>
                       <div class="form-group">
							   <label class="col-sm-1 control-label" for="menupid">物资分类</label>
							   <div class="col-sm-2">
								   <input class="form-control" id="menupidValue" name="menuPid" type="hidden"/>
								   <input class="form-control" id="menupid" type="text" name="sortEntity.sortName" value="${goodsEntity.sortEntity.sortName}"  readonly placeholder="选择物资"/>
							   </div>
							   <label class="col-sm-1 control-label" >物资名称:</label>
							   <div class="col-sm-2">
								   <input class="form-control" type="text" name="goodsName"  value="${goodsEntity.goodsName}" />
							   </div>
                       </div>
                       <div class="form-group">
                          <label class="col-sm-1 control-label" for="ds_username">物资规格:</label>
                          <div class="col-sm-2">
                             <input class="form-control" type="text"  name="goodsGuige" value="${goodsEntity.goodsGuige}"/>
                          </div>
						   <label class="col-sm-1 control-label" for="ds_username">物资简称:</label>
						   <div class="col-sm-2">
							   <input class="form-control" type="text"  name="goodsSimp" value="${goodsEntity.goodsSimp}"/>
						   </div>
                       </div>
						<div class="form-group">
							<label class="col-sm-1 control-label" for="ds_username">物资简述:</label>
							<div class="col-sm-6">
								<textarea class="form-control" rows="3" name="goodsTxt" value="${goodsEntity.goodsTxt}">
								</textarea>
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
							<label class="col-sm-2 control-label" >是否赋码:</label>
							<div class="col-sm-1" >
								<c:choose>
									<c:when test="${goodsEntity.goodsFuma==1}">
										<input type="radio" value="1"   name="goodsFuma" checked />是
										<input type="radio"   value="2"  name="goodsFuma" />否
									</c:when>
									<c:when test="${goodsEntity.goodsFuma==2}">
										<input type="radio" value="1"  name="goodsFuma" />是
										<input type="radio" value="2"  name="goodsFuma" checked />否
									</c:when>
								</c:choose>
							</div>
							<label class="col-sm-1 control-label" for="ds_name">物资类型:</label>
							<div class="col-sm-2">
								<zhg:select codeTp="goodsState" name="goodsState" cls="form-control" def="true" value="${goodsEntity.goodsState}"></zhg:select>
							</div>
							<label class="col-sm-1 control-label">限制采购:</label>
							<div class="col-sm-2" >
								<c:choose>
									<c:when test="${goodsEntity.goodsHetong==1}">
										<input type="radio" value="1"   name="goodsHetong" checked />是
										<input type="radio"   value="2"  name="goodsHetong" />否
									</c:when>
									<c:when test="${goodsEntity.goodsHetong==2}">
										<input type="radio" value="1"  name="goodsHetong" />是
										<input type="radio" value="2"  name="goodsHetong" checked />否
									</c:when>
								</c:choose>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" >物资组:</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="goodsWuzizu" value="${goodsEntity.goodsWuzizu}"/>
							</div>
							<label class="col-sm-2 control-label" >保质期:</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="goodsBaozhi" value="${goodsEntity.goodsBaozhi}" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" for="ds_name">税率</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="goodsShuilv" value="${goodsEntity.goodsShuilv}"/>
							</div>
							<label class="col-sm-1 control-label" for="ds_name">基本单位</label>
							<div class="col-sm-1">
								<input class="form-control" type="text" name="goodsJiben" value="${goodsEntity.goodsJiben}"/>
							</div>
							<label class="col-sm-1 control-label" for="ds_name">生产单位</label>
							<div class="col-sm-1">
								<input class="form-control" type="text" name="goodsShengchan" value="${goodsEntity.goodsShengchan}"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" for="ds_name">净重：</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="goodsJingzhong" value="${goodsEntity.goodsJingzhong}"/>
							</div>
							<label class="col-sm-1 control-label" for="ds_name">毛重：</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="goodsMaozhong"  value="${goodsEntity.goodsMaozhong}"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" for="ds_name">体积</label>
							<div class="col-sm-1">
								<input class="form-control" type="text" name="goodsTiji"  placeholder="长" value="${goodsEntity.goodsTiji}"/>
							</div>
							<div class="col-sm-1">
								<input class="form-control" type="text" name="goodsTiji"  placeholder="宽" value="${goodsEntity.goodsTiji}"/>
							</div>
							<div class="col-sm-1">
								<input class="form-control" type="text" name="goodsTiji"  placeholder="高" value="${goodsEntity.goodsTiji}"/>
							</div>
						<label class="col-sm-1 control-label" for="ds_name">单位</label>
							<div class="col-sm-1">
								<input class="form-control" type="text" name="goodsTijidanwei"  value="${goodsEntity.goodsTijidanwei}" placeholder="单位"/>
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