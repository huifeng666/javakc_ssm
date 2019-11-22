package com.zhg.javakc.modules.supply.supplier.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.supply.supplier.entity.SupplierEntity;
import com.zhg.javakc.modules.supply.supplier.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:36
 * @Version 1.0
 */
@Controller
@RequestMapping("/yangchu")
public class SupplierController {
    @Autowired
    private SupplierService supplierService;

    @RequestMapping("/supplier")
    public ModelAndView querySupplier(SupplierEntity supplierEntity, HttpServletRequest request, HttpServletResponse response ){
        ModelAndView modelAndView=new ModelAndView("yangchu/supplier/list");
//        Page<SupplierEntity> page=supplierService.querySupplier(supplierEntity,new Page<SupplierEntity>(request,response));
//        modelAndView.addObject("page",page);
        return  modelAndView;
    }

}
