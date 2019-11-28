$(function () {
    $('#orgid').click(function () {
        layer.open(
            {
                type:2,
                title:'选择组织界面',
                shadeClose: true,
                shade: 0.8,
                area: ['75%','75%'],
                content: root +'/yangchu/queryAllOrg.do'
            }
        )
    });
    $('#orgid2').click(function () {
        layer.open(
            {
                type:2,
                title:'选择收货组织界面',
                shadeClose: true,
                shade: 0.8,
                area: ['75%','75%'],
                content: root +'/yangchu/queryAllOrg2.do'
            }
        )
    });
    $('#goodsid').click(function () {
        layer.open(
            {
                type:2,
                title:'选择物资界面',
                shadeClose: true,
                shade: 0.8,
                area: ['75%','75%'],
                content: root +'/yangchu/queryAllgoods.do'
            }
        )
    });
    $('#supplier').click(function () {
        layer.open(
            {
                type:2,
                title:'选择供应商界面',
                shadeClose: true,
                shade: 0.8,
                area: ['75%','75%'],
                content: root +'/yangchu/supplier.do'
            }
        )
    });
});