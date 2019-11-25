package com.zhg.javakc.modules.supply.goodsSupplier.entity;

import com.zhg.javakc.base.entity.BaseEntity;

public class GoodsSupplierEntity extends BaseEntity<GoodsSupplierEntity> {
    /**
     * 物资供应商关系主键id
     */
    private String goodssupplierId;
    /**
     * 物资外键
     */
    private String goodsId;
    /**
     * 供应商外键
     */
    private String supplierId;
    /**
     * 组织外键
     */
    private String orgId;

    public String getGoodssupplierId() {
        return goodssupplierId;
    }

    public void setGoodssupplierId(String goodssupplierId) {
        this.goodssupplierId = goodssupplierId;
    }

    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public String getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(String supplierId) {
        this.supplierId = supplierId;
    }

    public String getOrgId() {
        return orgId;
    }

    public void setOrgId(String orgId) {
        this.orgId = orgId;
    }
}
