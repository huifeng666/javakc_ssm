<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>测试展示列表页面11</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<script type="text/javascript" src="<%=path%>static/js/plugins/ztree/jquery.ztree.core-3.5.js"></script>
		<link href="<%=path%>/static/css/plugins/ztree/zTreeStyle/zTreeStyle.css" rel="stylesheet">
        <script type="text/javascript" src="<%=path%>/static/js/plugins/ztree/jquery.ztree.excheck-3.5.js"></script>
	</head>
	<script language="JavaScript">
	  $(function(){
	      var sort;
	  var setting = {
            data: {
                simpleData: {
                    enable: true
                }
            },
          check: {
              enable: true
          },
          view: {
              fontCss: getFontCss
          }
        };

	  $.post(root+'sort/querySort.do',function(zNodes){
		 sort = $.fn.zTree.init($("#tree"), setting, zNodes);
	  },'json');

	  $("#queryBySort").click(function () {
	     var sortName = $("#sortName").val();
         var node = sort.getNodeByParam("name",sortName,"");
         node.highlight = true;
         sort.updateNode(node);
         sort.selectNode(node);


      });

          $("#deleteSort").click(function () {
              var nodes = sort.getSelectedNodes();
              if (nodes.length!=1){
                  alert("请选择一条数据进行删除！");
                  return false;
              }
              id="";
              for (var i=0;i<nodes.length;i++){
                  id = nodes[i].id;
              }
              $("#sortId").val(id);
              var url = root+$(this).attr('name');
              swal({
                  title: "确定要删除吗?",
                  text: "删除后将无法恢复当前记录!",
                  type: "warning",
                  showCancelButton: true,
                  confirmButtonColor: "#DD6B55",
                  confirmButtonText: "是的, 不后悔!",
                  cancelButtonText: "算了, 再想想!",
                  closeOnConfirm: false,
                  closeOnCancel: false
              }, function(isConfirm){
                  if (isConfirm) {
                      swal("成功!", "删除成功,再也找不回来了.", "success");

                          $("#searchForm").attr('action', url).submit();

                  } else {
                      swal("取消", "吓死了,幸亏没删了!", "error");
                  }
              });
          });

		  $("#updateSort").click(function () {
			  var nodes = sort.getSelectedNodes();
			  if (nodes.length!=1){
				  alert("请选择一条数据进行更改！");
				  return false;
			  }
			  id="";
			  for (var i=0;i<nodes.length;i++){
				  id = nodes[i].id;
			  }
			  $("#sortId1").val(id);
			  var url = root+$(this).attr('name');
			  swal({
				  title: "确定要更改吗?",
				  text: "更改后将无法恢复当前记录!",
				  type: "warning",
				  showCancelButton: true,
				  confirmButtonColor: "#DD6B55",
				  confirmButtonText: "是的, 不后悔!",
				  cancelButtonText: "算了, 再想想!",
				  closeOnConfirm: false,
				  closeOnCancel: false
			  }, function(isConfirm){
				  if (isConfirm) {
					  swal("成功!", "更改成功,再也找不回来了.", "success");

					  $("#searchForm").attr('action', url).submit();

				  } else {
					  swal("取消", "吓死了,幸亏没改了!", "error");
				  }
			  });
		  });


		  $("#updateSort1").click(function () {
			  $.post(root+'sort/view.do',function(zNodes){
				  sort = $.fn.zTree.init($("#tree"), setting, zNodes);
				  setCheck();
				  $("#py").bind("change", setCheck);
				  $("#sy").bind("change", setCheck);
				  $("#pn").bind("change", setCheck);
				  $("#sn").bind("change", setCheck);
			  },'json');
		  })

	  })

      var code;

      function setCheck() {
          var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
              py = $("#py").attr("checked")? "p":"",
              sy = $("#sy").attr("checked")? "s":"",
              pn = $("#pn").attr("checked")? "p":"",
              sn = $("#sn").attr("checked")? "s":"",
              type = { "Y":py + sy, "N":pn + sn};
          zTree.setting.check.chkboxType = type;
          showCode('setting.check.chkboxType = { "Y" : "' + type.Y + '", "N" : "' + type.N + '" };');
      }
      function showCode(str) {
          if (!code) code = $("#code");
          code.empty();
          code.append("<li>"+str+"</li>");
      }





      function getFontCss(treeId, treeNode) {
          return (!!treeNode.highlight) ? {color:"#A60000", "font-weight":"bold"} : {color:"#333", "font-weight":"normal"};
      }
	</script>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
                    <input type="hidden" id="sortId" name="sortId">
					<input type="hidden" id="sortId1" name="sortId1">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">物资分类详细信息</div>
	                <div class="col-sm-8">
	                	<div class="btn-group hidden-xs" role="group">
                			<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="yangchu/sort/create.jsp">
	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
	                        </button>
	                        <button type="button" class="btn btn-success" data-toggle="modal" id="queryBySort" name="sort/queryBySort.do">
	                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>查询
	                        </button>
                            <button type="button" class="btn btn-success" data-toggle="modal" id="updateSort" name="sort/view.do">
                                <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
                            </button>
	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="deleteSort" name="sort/delete.do">
	                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
	                        </button>
		                 </div>

						<div class="col-sm-4">
							<input class="form-control" id="sortName" name="sortName" value="" type="text"/>

						</div>
						<!-- ------------按钮组 end------------ -->

						<table class="table table-striped table-bordered table-hover table-condensed">
							<ul id="tree" class="ztree"></ul>
						</table>

	                </div>
				</div>

			     </form>
			</div>
		</div>
	</body>
</html>