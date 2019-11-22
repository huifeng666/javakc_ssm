package com.zhg.javakc.modules.supply.supplier.entity;

import com.zhg.javakc.base.entity.BaseEntity;

import javax.persistence.*;

/**
 * @Author lenovo
 * @Date 2019/11/22 15:36
 * @Version 1.0
 */
public class SupplierEntity extends BaseEntity<SupplierEntity> {
    /**
     * 供应商Id
     */
    private String supplierId;
    /**
     * 供应商名称
     */
    private String supplierName;
    /**
     * 供应商类型
     */
    private String supplierType;
    /**
     * 供应商组织
     */
    private String supplierOrg;
    /**
     * 供应商等级分类
     */
    private int supplierLevel;
    /**
     * 供应商简称
     */
    private String supplierSim;
    /**
     * 供应商法人
     */
    private String supplierFaren;
    /**
     * 供应商法人电话
     */
    private int supplierFarenph;

    /**
     * 供应商地址
     */
    private String supplierAddr;
//
    /**
     * 供应商社会信任码
     */
    private String supplierTrustnum;
//
    /**
     * 供应商联系人
     */
    private String supplierContact;
    /**
     * 供应商联系电话
     */
    private int supplierContectnum;
    /**
     * 供应商联系人邮件
     */
    private String supplierContectemall;
    /**
     * 供应商是否启用门户
     */
    private int supplierPortal;
    /**
     * 供应商是否必须合同
     */
    private int supplierContract;
    /**
     * 状态(0：正常；1：删除)
     */
    private int delfalg;


}
