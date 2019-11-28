$(function () {
    //选择组织触发事件
    $('#orgid').click(function () {
        layer.open({
            type: 2,
            title: '选择供应商内部组织',
            shadeClose: true,
            shade: 0.8,
            area: ['75%', '65%'],
            content: root+'/yangchu/suppliercreatOrg.do'
        });
    });


})


function showorg() {
    var xx=$("#typeid").val();
    if (xx==0){
        document.getElementById("orgid").style.display="none";
    }else if(xx==1){
        document.getElementById("orgid").style.display="";
    }

};
$(function () {

    // 为必填项绑定事件
    $(".form-control").blur(function () {
        //获取用户当前输入的值
        var value = this.value;
        //清空上一次的提示信息
        $('.formtips').remove();
        //校验供应商名称
        if ($(this).is("#supplierName")) {
            if (value.length == 0) {
                $(this).parent().append("<sapn class='formtips onError'>供应商名称不能为空！</sapn>")
            } else if (value.length > 10) {
                $(this).parent().append("<sapn class='formtips onError'>供应商名称不能超过十个字符！</sapn>")
            } else {
                $(this).parent().append("<sapn class=' formtips onSuccess'>供应商名称可用！</sapn>")
            }
        }
        //校验法人
        if ($(this).is("#supplierFaren")) {
            if (value.length == 0) {
                $(this).parent().append("<sapn class='formtips onError'>法人姓名不能为空！</sapn>")
            } else if (value.length > 5) {
                $(this).parent().append("<sapn class='formtips onError'>你是阿拉伯人吗？名字这么长</sapn>")
            } else {
                $(this).parent().append("<sapn class=' formtips onSuccess'>法人姓名姓名可用！</sapn>")
            }
        }
        //校验法人电话
        if ($(this).is("#supplierFarenph")) {
            var regMobilePhone = new RegExp(/^1[34578]\d{9}$/);
            if (value.length == 0) {
                $(this).parent().append("<sapn class='formtips onError'>法人电话不能为空！</sapn>")
            } else if (!regMobilePhone.test(value)) {
                $(this).parent().append("<sapn class='formtips onError'>请输入合法的大陆手机号！</sapn>")
            } else {
                $(this).parent().append("<sapn class=' formtips onSuccess'>法人电话可用！</sapn>")
            }
        }
        //校验供应商地址
        if ($(this).is("#supplierAddr")) {
            if (value.length == 0) {
                $(this).parent().append("<sapn class='formtips onError'>供应商地址不能为空！</sapn>")
            } else if (value.length > 10) {
                $(this).parent().append("<sapn class='formtips onError'>供应商地址不能超过十个字符！</sapn>")
            } else {
                $(this).parent().append("<sapn class=' formtips onSuccess'>供应商地址可用！</sapn>")
            }
        }
        //校验社会统一信任代码
        if ($(this).is("#supplierTrustnum")) {
            // 社会统一信任代码实例（用它去测试能不能成功）：A1212345123456789A
            var regMObtrust = new RegExp(/[1-9A-GY]{1}[1239]{1}[1-5]{1}[0-9]{5}[0-9A-Z]{10}/);
            if (value.length == 0) {
                $(this).parent().append("<sapn class='formtips onError'>社会统一信任代码不能为空！</sapn>")
            } else if (!regMObtrust.test(value)) {
                $(this).parent().append("<sapn class='formtips onError'>请输入合法的社会统一信任代码！</sapn>")
            } else {
                $(this).parent().append("<sapn class=' formtips onSuccess'>社会统一信任代码可用！</sapn>")
            }
        }
        //校验联系人
        if ($(this).is("#supplierContact")) {
            if (value.length == 0) {
                $(this).parent().append("<sapn class='formtips onError'>联系人姓名不能为空！</sapn>")
            } else if (value.length > 5) {
                $(this).parent().append("<sapn class='formtips onError'>你是阿拉伯人吗？名字这么长</sapn>")
            } else {
                $(this).parent().append("<sapn class=' formtips onSuccess'>联系人姓名可用！</sapn>")
            }
        }
        //校验联系人手机号
        if ($(this).is("#supplierContectnum")) {
            var regMobilePhone = new RegExp(/^1[34578]\d{9}$/);
            if (value.length == 0) {
                $(this).parent().append("<sapn class='formtips onError'>联系人电话不能为空！</sapn>")
            } else if (!regMobilePhone.test(value)) {
                $(this).parent().append("<sapn class='formtips onError'>请输入合法的大陆手机号！</sapn>")
            } else {
                $(this).parent().append("<sapn class=' formtips onSuccess'>联系人电话可用！</sapn>")
            }
        }
        // 校验联系人邮箱
        if ($(this).is("#supplierContectemall")) {
            var regMobEmail = new RegExp(/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)/);
            if (value.length == 0) {
                $(this).parent().append("<sapn class='formtips onError'>联系人邮箱不能为空！</sapn>")
            } else if (!regMobEmail.test(value)) {
                $(this).parent().append("<sapn class='formtips onError'>请输入合法的邮箱！</sapn>")
            } else {
                $(this).parent().append("<sapn class=' formtips onSuccess'>联系人邮箱可用！</sapn>")
            }
        }
    })
}).focus(function () {
    $(this).triggerHandler("blur");
}).keyup(function () {
    $(this).triggerHandler("blur");
});
//给表单提交绑定事件
$("#submit").click(function () {
    //触发所有必填项的校验
    $(".form-control").trigger("blur");
    if ($(".onError").length == 0) {
        return true;
    }
    return false;
});
