package com.zhg.javakc.modules.supply.goods.controller;

import com.zhg.javakc.base.page.Page;

import com.zhg.javakc.modules.supply.goods.entity.GoodsEntity;
import com.zhg.javakc.modules.supply.goods.service.GoodsService;

import com.zhg.javakc.modules.test.entity.TestEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Random;

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
    public String save(GoodsEntity goodsEntity) {
        //设置主键ID
        Random random = new Random();
        int x = random.nextInt(1000001);
        x = x + 7000000;
        String id = "" + x;
        goodsEntity.setGoodsId(id);
        goodsEntity.setGoodsUser("回风");
        goodsService.save(goodsEntity);
        return "redirect:goods.do";
    }
    /**
     * 修改回显数据
     * 将数据传到修改
     */
    @RequestMapping("/view")
    public String view(String ids, ModelMap modelMap){
        GoodsEntity goodsEntity =goodsService.get(ids);
        modelMap.put("goodsEntity",goodsEntity);
        return "yangchu/goods/update";
    }
    /**
     * 修改
     */
    @RequestMapping("/update")
    public String update(GoodsEntity goodsEntity){
        goodsEntity.setGoodsUser("回风");
        goodsService.update(goodsEntity);
        return "redirect:goods.do";
    }
    /**
     * 删除
     */
    @RequestMapping("/delete")
    public String delete(String[] ids){
        goodsService.delete(ids);
        return "redirect:goods.do";
    }

}
