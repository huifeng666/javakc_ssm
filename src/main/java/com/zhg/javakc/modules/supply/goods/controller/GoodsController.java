package com.zhg.javakc.modules.supply.goods.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.supply.goods.entity.GoodsEntity;
import com.zhg.javakc.modules.supply.goods.service.GoodsService;
import com.zhg.javakc.modules.test.entity.TestEntity;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Author huoyinglong
 * @Date 2019/11/22 15:29
 * @Version 1.0
 */
@Controller
@RequestMapping("/yangchu")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    /**
     * 查询方法
     * @param goodsEntity
     * @param model
     * @param request
     * @param response
     * @return
     * @throws Exception
     */

    @RequestMapping(value="/goods")
    public String query(GoodsEntity goodsEntity, ModelMap model,
                        HttpServletRequest request, HttpServletResponse response) throws Exception
    {
        model.put("page", goodsService.findGoods(new Page<GoodsEntity>(request, response), goodsEntity));
        model.put("goodsEntity", goodsEntity);
        return "yangchu/goods/list";
    }

    /**
     * 新增
     * @param goodsEntity
     * @return
     */
    @RequestMapping("/save")
    public String save(GoodsEntity goodsEntity){
        //设置ID，获取uuid
//        goodsEntity.setGoodsId(CommonUtil.uuid());
//        goodsService.save(goodsEntity);
        return "redirect:goods.do";
    }




}
