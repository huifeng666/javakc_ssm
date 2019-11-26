$(function () {
    $('#orgid').click(function () {
        layer.open(
            {
                type:2,
                title:'组织界面',
                shadeClose: true,
                shade: 0.8,
                area: ['75%','75%'],
                content: root +'/yangchu/queryAllOrg.do'
            }
        )
    });
    $('#goodsid').click(function () {
        layer.open(
            {
                type:2,
                title:'物资界面',
                shadeClose: true,
                shade: 0.8,
                area: ['75%','75%'],
                content: root +'/yangchu/queryAllgoods.do'
            }
        )
    });
});