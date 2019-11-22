package com.zhg.javakc.modules.supply.supplier.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supply.supplier.dao.SupplierDao;
import com.zhg.javakc.modules.supply.supplier.entity.SupplierEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:37
 * @Version 1.0
 */
@Service
public class SupplierService extends BaseService<SupplierDao,SupplierEntity> {

    @Autowired
    private SupplierDao supplierDao;

    /**
     * 分页查询
     * @param supplierEntity
     * @param page
     * @return page
     */
    public Page<SupplierEntity> querySupplier(SupplierEntity supplierEntity,Page<SupplierEntity> page){

        supplierEntity.setPage(page);

        List<SupplierEntity> supplierList = supplierDao.findList(supplierEntity);

        page.setList(supplierList);
        return page;

    }

}
