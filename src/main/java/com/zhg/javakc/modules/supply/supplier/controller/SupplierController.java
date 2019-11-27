package com.zhg.javakc.modules.supply.supplier.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.supply.supplier.entity.SupplierEntity;
import com.zhg.javakc.modules.supply.supplier.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Random;

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



    @RequestMapping("/supplierquery")
    public ModelAndView querySupplier(SupplierEntity supplierEntity, HttpServletRequest request, HttpServletResponse response ){
        ModelAndView modelAndView=new ModelAndView("yangchu/supplier/list");
        Page<SupplierEntity> page=supplierService.querySupplier(supplierEntity,new Page<SupplierEntity>(request,response));
        modelAndView.addObject("page",page);
        return  modelAndView;
    }
    //新增
    @RequestMapping("/suppliersave")
    public String save(SupplierEntity supplierEntity){
        //设置主键ID
        Random random=new Random();
        int x=random.nextInt(1000001);
        x=x+7000000;
        String id=""+x;
        supplierEntity.setSupplierId(id);
        supplierService.save(supplierEntity);
        return "redirect:supplierquery.do";
    }

    @RequestMapping("/supplierview")
    public String view(String ids, ModelMap modelMap){
        SupplierEntity supplierEntity=supplierService.get(ids);
        modelMap.put("supplierEntity",supplierEntity);
        return "yangchu/supplier/update";
    }

    @RequestMapping("/supplierupdate")
    public String update(SupplierEntity supplierEntity){
        supplierService.update(supplierEntity);
        return "redirect:supplierquery.do";
    }
    @RequestMapping("/supplierdelete")
    public String delete(String[] ids){
        supplierService.delete(ids);
        return "redirect:supplierquery.do";
    }
    @RequestMapping("/suppliercreatOrg")
    public String creatOrg (SupplierEntity supplierEntity,ModelMap modelMap) throws Exception{
      modelMap.put("page",supplierService.findList(supplierEntity));
        return "yangchu/tree/list";
    }
    }






