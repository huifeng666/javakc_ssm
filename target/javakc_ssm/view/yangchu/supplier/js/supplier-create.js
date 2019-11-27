$(function () {
    //选择组织触发事件
    $('#orgid').click(function () {
        layer.open({
            type: 2,
            title: '选择供应商内部组织',
            shadeClose: true,
            shade: 0.8,
            area: ['75%', '65%'],
            content: root + '/yangchu/suppliercreatOrg.do'
        });
    });

    $('form:eq(0)').bootstrapValidator({
        excluded: [":disabled"],
        trigger: "change",
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            //校验供应商类型
            supplierType: {
                validators: {
                    notEmpty: {
                        message: '请选择供应商类型！！！'
                    },
                }
            },
            //校验组织名称
            // orgname: {
            //     validators: {
            //         notEmpty: {
            //             message: '请选择供应商类型！！！'
            //
            //         },
            //     }
            // },
            //校验供应商名称
            supplierName: {
                validators: {
                    notEmpty: {
                        message: '供应商名称不能为空！！！'
                    },
                    stringLength: {
                        min: 2,
                        max: 30,
                        message: '供应商名称长度不能低于3不能高于10'
                    }
                }
            },
            //校验供应商分类
            supplierLevel: {
                validators: {
                    notEmpty: {
                        message: '请选择供应商分类！！！'
                    },
                }
            },
            //供应商简称校验
            supplierSim:{
                validators: {
                    notEmpty: {
                        message: '供应商名称不能为空！！！'
                    },
                    stringLength: {
                        min: 2,
                        max: 30,
                        message: '供应商名称长度不能低于3不能高于10'
                    }
                }
          },
            //供应商法人校验
            supplierFaren: {
                validators: {
                    notEmpty: {
                        message: '供应商名称不能为空！！！'
                    },
                    stringLength: {
                        min: 6,
                        max: 15,
                        message: '供应商名称长度不能低于2不能高于5'
                    }

                }
            },
        // 供应商法人电话
            supplierFarenph: {
                validators: {
                    notEmpty: {
                        message: '供应商名称不能为空！！！'
                    },
                    regexp: {
                        regexp:/^(((13[0-9]{1})|(14[0-9]{1})|(17[0]{1})|(15[0-3]{1})|(15[5-9]{1})|(18[0-9]{1}))+\d{8})$/,
}
                }
            },


        }
    });

});