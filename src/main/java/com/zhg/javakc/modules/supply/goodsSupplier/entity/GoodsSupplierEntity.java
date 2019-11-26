package com.zhg.javakc.modules.supply.goodsSupplier.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import com.zhg.javakc.modules.supply.goods.entity.GoodsEntity;
import com.zhg.javakc.modules.supply.supplier.entity.SupplierEntity;
import com.zhg.javakc.modules.supply.tree.entity.TreeEntity;

import java.util.List;

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
    /**
     * 收货组织
     */
    private String goodsorgName;


    /**
     * 物资
     */
    private GoodsEntity goodsEntity;

    /**
     * 供应商
     * @return
     */
    private SupplierEntity supplierEntity;
    /**
     * 组织
     * @return
     */
    private TreeEntity treeEntity;

    public SupplierEntity getSupplierEntity() {
        return supplierEntity;
    }

    public void setSupplierEntity(SupplierEntity supplierEntity) {
        this.supplierEntity = supplierEntity;
    }

    public TreeEntity getTreeEntity() {
        return treeEntity;
    }

    public void setTreeEntity(TreeEntity treeEntity) {
        this.treeEntity = treeEntity;
    }

    public String getGoodssupplierId() {
        return goodssupplierId;
    }

    public void setGoodssupplierId(String goodssupplierId) {
        this.goodssupplierId = goodssupplierId;
    }

    public GoodsEntity getGoodsEntity() {
        return goodsEntity;
    }

    public void setGoodsEntity(GoodsEntity goodsEntity) {
        this.goodsEntity = goodsEntity;
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
    public String getGoodsorgName() {
        return goodsorgName;
    }

    public void setGoodsorgName(String goodsorgName) {
        this.goodsorgName = goodsorgName;
    }

}
