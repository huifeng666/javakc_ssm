package com.zhg.javakc.modules.supply.goods.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supply.goods.dao.GoodsDao;
import com.zhg.javakc.modules.supply.goods.entity.GoodsEntity;

import com.zhg.javakc.modules.system.menu.entity.MenuEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



/**
 * @Author huoyinglong
 * @Date 2019/11/22 15:31
 * @Version 1.0
 */
@Service
public class GoodsService extends BaseService<GoodsDao, GoodsEntity> {

    @Autowired
    GoodsDao goodsDao;

    public Page<GoodsEntity> findGoods(Page<GoodsEntity> page, GoodsEntity goodsEntity) {
        // 设置分页参数
        goodsEntity.setPage(page);
        // 执行分页查询
        page.setList(goodsDao.findList(goodsEntity));
        return page;
    }

    public Page<GoodsEntity> findMenu(Page<GoodsEntity> page, GoodsEntity goodsEntity) {
        // 执行分页查询
        page.setList(goodsDao.findList(goodsEntity));
        return page;
    }



}