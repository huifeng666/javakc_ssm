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
		var treeDemo;
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
			treeDemo=$.fn.zTree.init($("#treeDemo"), setting, zNodes);
		},'json')
// --------------------------------------------------

		var index = parent.layer.getFrameIndex(window.name);

		$('#ascertain').click(function()
		{
			var nodes = treeDemo.getSelectedNodes();

			if (nodes.length !=1){
				alert("怎么没有喜欢的!");
				return false;
			}
			else {
				var id = "";
				var name = "";
				for (var i = 0; i < nodes.length; i++) {
					id = nodes[i].id;
					name = nodes[i].name;
				}

				$("#orgid").val(id);
				var ids = $('#orgid').val()

				parent.$('#orgid').val(name);
				parent.$('#orgidtree').val(ids);
				parent.layer.close(index);

			}
		});
		$('#shutdo').click(function()
		{
			parent.layer.close(index);
		});

		// ------------------------------------------------------------------

		var cityObj = $("#nodeName");
		var cityOffset = $("#nodeName").offset();
		$("#menuContent").css({left:cityOffset.left + "px", top:cityOffset.top + cityObj.outerHeight() + "px"}).slideDown("fast");

		$("body").bind("mousedown", onBodyDown);
	});

	function beforeClick(treeId, treeNode) {
	}

	function onClick(e, treeId, treeNode) {
		var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
				nodes = zTree.getSelectedNodes(),
				v = ""
				id = "";
		nodes.sort(function compare(a,b){return a.id-b.id;});
		for (var i=0, l=nodes.length; i<l; i++) {
			v += nodes[i].name + ",",
			id += nodes[i].id + ",";
		}
		if (v.length > 0 ) v = v.substring(0, v.length-1);
		if (id.length > 0 ) id = id.substring(0, id.length-1);
		var nodeName = $("#nodeName");
		nodeName.attr("value", v);
		$("#orgId").val(id);
	}

	// function hideMenu() {
	// 	$("#menuContent").fadeOut("fast");
	// 	$("body").unbind("mousedown", onBodyDown);
	// }
	function onBodyDown(event) {
		if (!(event.target.id == "menuBtn" || event.target.id == "menuContent" || $(event.target).parents("#menuContent").length>0)) {
			// hideMenu();
		}
	}

</script>
<body>

<div class="wrapper wrapper-content animated fadeInRight">
	<div class="ibox float-e-margins">
		<form id="searchForm" action="">
			<input type="hidden" id="orgId" name="orgId">
			<div class="col-sm-12">
				<!-- ------------按钮组 start------------ -->
				<div class="alert alert-success" role="alert">西贝集团--组织详细信息</div>

					<div class="col-sm-4" role="group">
						<input type="text" class="span search-query "id="nodeName" name="nodeName" >
						<div id="menuContent" class="menuContent" style="display:none;">
							<ul id="treeDemo" class="ztree" style="margin-top:0; width:160px;"></ul>
						</div>
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
				</div>
		</form>
	</div>
</div>

</body>
<script type="text/javascript" src="${path }/static/js/plugins/bootstrap-switch/bootstrap-switch.min.js"></script>


</html>