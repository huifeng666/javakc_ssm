$(function()
{
    //选择父类触发事件
    $('#sortId').click(function()
    {
        layer.open({
            type: 2,
            title: '选择菜单父类',
            shadeClose: true,
            shade: 0.8,
            area: ['80%', '80%'],
            content: root+ '/yangchu/sort.do'
        });
    });
	
});