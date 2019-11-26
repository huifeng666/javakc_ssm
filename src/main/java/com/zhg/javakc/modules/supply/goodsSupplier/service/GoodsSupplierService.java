package com.zhg.javakc.modules.supply.goodsSupplier.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supply.goodsSupplier.dao.GoodsSupplierDao;
import com.zhg.javakc.modules.supply.goodsSupplier.entity.GoodsSupplierEntity;
import com.zhg.javakc.modules.system.menu.entity.MenuEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GoodsSupplierService extends BaseService<GoodsSupplierDao, GoodsSupplierEntity> {

    @Autowired
    private  GoodsSupplierDao goodsSupplierDao;
    //分页查询
    public Page<GoodsSupplierEntity>query(GoodsSupplierEntity goodsSupplierEntity, Page<GoodsSupplierEntity> page){
        //设置分页参数，才会被mybatis分页插件识别，拦截sql，再其sql的前后加入分页sql
//        goodsSupplierEntity.setPage(page);
        //根据分页与查询条件进行测试查询
        List<GoodsSupplierEntity> List=goodsSupplierDao.findList(goodsSupplierEntity);
        //将查询数据设置到分页类的List集合中，一起返回
        page.setList(List);
        return page;

    }

//    public Page<GoodsSupplierEntity> findMenu(Page<GoodsSupplierEntity> page, GoodsSupplierEntity goodsSupplierEntity) {
//        // 执行分页查询
//        page.setList(goodsSupplierDao.findList(goodsSupplierEntity));
//        return page;
//    }
}
