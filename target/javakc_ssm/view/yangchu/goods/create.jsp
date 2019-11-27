<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>增添物资页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
        <script type="text/javascript" src="<%=path%>static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
        <link href="<%=path%>/static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" rel="stylesheet">
	</head>
	<script language="JavaScript">
		$(function () {
			var setting = {
				view: {
					dblClickExpand: false
				},
				data: {
					simpleData: {
						enable: true
					}
				},
				callback: {
					beforeClick: beforeClick,
					onClick: onClick
				}
			};
			$.post(root+'sort/querySort.do',function(zNodes) {
				$.fn.zTree.init($("#type"),setting,zNodes);
			},'json')

		})
		function beforeClick(treeId, treeNode) {
		}

		function onClick(e, treeId, treeNode) {
			var zTree = $.fn.zTree.getZTreeObj("type"),
					nodes = zTree.getSelectedNodes(),
					v = "";
			id ="";
			nodes.sort(function compare(a,b){return a.id-b.id;});
			for (var i=0, l=nodes.length; i<l; i++) {
				v += nodes[i].name + ",";
				id += nodes[i].id + ",";
			}
			if (v.length > 0 ) v = v.substring(0, v.length-1);
			if (id.length > 0 ) id = id.substring(0, id.length-1);
			var nodeName = $("#nodeName");
			nodeName.attr("value", v);
			$("#idd").val(id)

		}
		function showMenu() {
			var cityObj = $("#nodeName");
			var cityOffset = $("#nodeName").offset();
			$("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");

			$("body").bind("mousedown", onBodyDown);
		}
		function hideMenu() {
			$("#menuContent").fadeOut("fast");
			$("body").unbind("mousedown", onBodyDown);
		}
		function onBodyDown(event) {
			if (!(event.target.id == "menuBtn" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
				hideMenu();
			}
		}
	</script>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/yangchu/save.do" method="post" class="form-horizontal" role="form">
                    <input type="hidden1" name="sortId" id="idd"/>
                    <fieldset>
                        <legend>测试基本信息</legend>
                       <div class="form-group">
						   <a id="menuBtn"  href="#" onclick="showMenu(); return false;" class="col-sm-1 control-label">物资分类</a>
						   <div class="col-sm-2">
							   <input class="form-control" type="text" id="nodeName"  readonly/>
							   <div id="menuContent" class="menuContent" style="display: none;">
								   <ul id="type" class="ztree" style="margin-top: 0; width: 160px;"></ul>
							   </div>
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
									<input type="radio" name="goodsFuma"  value="1"> 是
								</label>
								<label class="radio-inline">
									<input type="radio" name="goodsFuma"  value="2"> 否
								</label>
							</div>
							<label class="col-sm-1 control-label" for="ds_name">物资类型:</label>
							<div class="col-sm-2">
								<zhg:select codeTp="goodsState" name="goodsState" cls="form-control" def="true"></zhg:select>
							</div>
							<label class="col-sm-1 control-label">限制采购:</label>
							<div class="col-sm-2">
								<label class="radio-inline">
									<input type="radio" name="goodsHetong" value="1"> 是
								</label>
								<label class="radio-inline">
									<input type="radio" name="goodsHetong" value="2"> 否
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" >物资组:</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="goodsWuzizu" />
							</div>
							<label class="col-sm-2 control-label" >保质期:</label>
							<div class="col-sm-3">
								<input class="form-control" type="text" name="goodsBaozhi" placeholder="请输入保质期" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" for="ds_name">税率</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="goodsShuilv" />
							</div>
							<label class="col-sm-1 control-label" for="ds_name">基本单位</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="goodsJiben"  placeholder="填写单位名称"/>
							</div>
							<label class="col-sm-1 control-label" for="ds_name">生产单位</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="goodsShengchan"  placeholder="填写单位名称"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-1 control-label" for="ds_name">净重：</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="goodsJingzhong" placeholder="填写净重" />
							</div>
							<label class="col-sm-1 control-label" for="ds_name">毛重：</label>
							<div class="col-sm-2">
								<input class="form-control" type="text" name="goodsMaozhong" placeholder="填写毛重" />
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
								<input class="form-control" type="text" name="goodsTijidanwei"  placeholder="单位"/>
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

							<table class="table table-striped table-bordered table-hover table-condensed">
								<ul id="tree" class="ztree"></ul>
							</table>
						</div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
	<script type="text/javascript" src="./js/dictionary.js"></script>
	<script type="text/javascript" src="${path }/view/yangchu/goods/js/goods-create.js"></script>
</html>