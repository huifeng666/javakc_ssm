package com.zhg.javakc.modules.supply.goodsSupplier.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.supply.goodsSupplier.entity.GoodsSupplierEntity;


import com.zhg.javakc.modules.supply.goodsSupplier.service.GoodsSupplierService;
import com.zhg.javakc.modules.system.menu.entity.MenuEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/yangchu")
public class GoodsSupplierController {

    @Autowired
    private GoodsSupplierService goodsSupplierService;

    @RequestMapping("/goodsSupplier")
    public ModelAndView goodsSupplier(GoodsSupplierEntity goodsSupplierEntity, HttpServletRequest request, HttpServletResponse response){

        ModelAndView modelAndView=new ModelAndView("yangchu/goodsSupplier/list");
        Page<GoodsSupplierEntity> page= goodsSupplierService.query(goodsSupplierEntity,new Page<GoodsSupplierEntity>(request,response));

        modelAndView.addObject("page",page);
        return modelAndView;

    }
    @RequestMapping("/queryAllOrg")
        public String queryAllOrg(GoodsSupplierEntity goodsSupplierEntity,ModelMap model) throws Exception{
//        model.put("page",goodsSupplierService.findList(goodsSupplierEntity));
        return "yangchu/tree/list";

    }
    @RequestMapping("/queryAllgoods")
    public String queryAllgoods(GoodsSupplierEntity goodsSupplierEntity,ModelMap model) throws Exception{
//        model.put("page",goodsSupplierService.findList(goodsSupplierEntity));
        return "yangchu/goods/list";

    }

}
