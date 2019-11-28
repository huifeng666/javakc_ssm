<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>组织展示列表页面</title>
	<%@ include file="../../../common/jsp/header.jsp"%>
	<link href="<%=path%>static/css/plugins/bootstrap-switch/bootstrap-switch.min.css" rel="stylesheet">
	<link href="<%=path%>/static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" rel="stylesheet">
	<script type="text/javascript" src="<%=path%>/static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
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
		$.post(root+'tree/queryAllOrg.do',function(zNodes){
			$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		},'json')
	});

	function beforeClick(treeId, treeNode) {
	}

	function onClick(e, treeId, treeNode) {
		var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
				nodes = zTree.getSelectedNodes(),
				v = "";
		nodes.sort(function compare(a,b){return a.id-b.id;});
		for (var i=0, l=nodes.length; i<l; i++) {
			v += nodes[i].name + ",";
		}
		if (v.length > 0 ) v = v.substring(0, v.length-1);
		var nodeName = $("#nodeName");
		nodeName.attr("value", v);
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
	<div class="ibox float-e-margins">
		<form id="searchForm" action="">
			<div class="col-sm-12">
				<!-- ------------按钮组 start------------ -->
				<div class="alert alert-success" role="alert">测试详细信息</div>

					<div class="col-sm-4" role="group">
						<a id="menuBtn" href="#" onclick="showMenu();return false;">选择</a></li>
						<input type="text" class="span search-query "id="nodeName" name="nodeName" readonly placeholder="点击选择组织">
						<div id="menuContent" class="menuContent" style="display:none;">
							<ul id="treeDemo" class="ztree" style="margin-top:0; width:160px;"></ul>
						</div>
					</div>

				</div>
			</div>
		</form>
	</div>
</div>
</body>
<script type="text/javascript" src="${path }/static/js/plugins/bootstrap-switch/bootstrap-switch.min.js"></script>
<script type="text/javascript" src="${path }/view/yangchu/goodsSupplier/js/goodsSupplier-create.js"></script>

</html>