package com.zhg.javakc.modules.supply.goodsSupplier.controller;

import com.zhg.javakc.modules.supply.goodsSupplier.entity.GoodsSupplierEntity;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/yangchu")
public class GoodsSupplierController {

//    @Autowired
//    private GoodsSupplierService goodsSupplierService;

    @RequestMapping("/goodsSupplier")
    public ModelAndView goodsSupplier(GoodsSupplierEntity goodsSupplierEntity, HttpServletRequest request, HttpServletResponse response){

        ModelAndView modelAndView=new ModelAndView("test/list");
//        Page<TestEntity> page=testService.queryTest(testEntity,new Page<TestEntity>(request,response));
//        modelAndView.addObject("page",page);
        return modelAndView;

    }
}
