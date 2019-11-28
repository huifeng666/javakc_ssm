package com.zhg.javakc.modules.supply.goodsSupplier.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.supply.goods.entity.GoodsEntity;
import com.zhg.javakc.modules.supply.goods.service.GoodsService;
import com.zhg.javakc.modules.supply.goodsSupplier.entity.GoodsSupplierEntity;


import com.zhg.javakc.modules.supply.goodsSupplier.service.GoodsSupplierService;
import com.zhg.javakc.modules.supply.supplier.entity.SupplierEntity;
import com.zhg.javakc.modules.supply.supplier.service.SupplierService;
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
import java.util.Random;

@Controller
@RequestMapping("/yangchu")
public class GoodsSupplierController {

    @Autowired
    private GoodsSupplierService goodsSupplierService;

    @Autowired
    private GoodsService goodsService;
    @Autowired
    private SupplierService supplierService;

    /**
     * 查询
     */
    @RequestMapping("/goodsSupplier")
    public ModelAndView goodsSupplier(GoodsSupplierEntity goodsSupplierEntity, HttpServletRequest request, HttpServletResponse response){

        ModelAndView modelAndView=new ModelAndView("yangchu/goodsSupplier/list");
        Page<GoodsSupplierEntity> page= goodsSupplierService.query(goodsSupplierEntity,new Page<GoodsSupplierEntity>(request,response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }
    /**
     * 选择查询组织
     */
    @RequestMapping("/queryAllOrg")
        public String queryAllOrg(GoodsSupplierEntity goodsSupplierEntity,ModelMap model) throws Exception{
//        model.put("page",goodsSupplierService.findList(goodsSupplierEntity));
        return "yangchu/goodsSupplier/tree";
    }
    /**
     * 选择查询收货组织
     */
    @RequestMapping("/queryAllOrg2")
    public String queryAllOrg2(GoodsSupplierEntity goodsSupplierEntity,ModelMap model) throws Exception{
//        model.put("page",goodsSupplierService.findList(goodsSupplierEntity));
        return "yangchu/goodsSupplier/Spacetree";

    }
    /**
     * 选择查询物资
     */
    @RequestMapping("/queryAllgoods")
//       model.put("page",goodsSupplierService.findList(goodsSupplierEntity));
        public String queryAllgoods(GoodsEntity goodsEntity, ModelMap model,
                HttpServletRequest request, HttpServletResponse response) throws Exception
        {
            model.put("page", goodsService.findGoods(new Page<GoodsEntity>(request, response), goodsEntity));
            model.put("goodsEntity", goodsEntity);
            return "yangchu/goodsSupplier/goodslist";
        }
    /**
     * 选择查询供应商
     */
    @RequestMapping("/supplier")
    public ModelAndView supplier(SupplierEntity supplierEntity, HttpServletRequest request, HttpServletResponse response )throws Exception{
        ModelAndView modelAndView=new ModelAndView("yangchu/goodsSupplier/supplier");
        Page<SupplierEntity> page=supplierService.querySupplier(supplierEntity,new Page<SupplierEntity>(request,response));
        modelAndView.addObject("page",page);
        return  modelAndView;
    }
    /**
     * 添加
     */
    @RequestMapping("/saveGoods")
    public String saveGoods(GoodsSupplierEntity goodsSupplierEntity){
        //设置ID，获取uuid
        goodsSupplierEntity.setGoodssupplierId(CommonUtil.uuid());
        goodsSupplierService.save(goodsSupplierEntity);
        return "redirect:goodsSupplier.do";
    }
    /**
     * 根据主键id查询
     */
    @RequestMapping("/views")
    public String views(String ids, ModelMap modelMap){
        String id=ids.substring(1);
        GoodsSupplierEntity goodsSupplierEntity =goodsSupplierService.get(id);
        modelMap.put("goodsSupplierEntity",goodsSupplierEntity);
        return "yangchu/goodsSupplier/update";
    }

}
