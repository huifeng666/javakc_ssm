package com.zhg.javakc.modules.supply.supplier.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import com.zhg.javakc.modules.org.tree.entity.OrgtreeEntity;
import com.zhg.javakc.modules.supply.tree.entity.TreeEntity;

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
    private int supplierType;
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
    private long supplierFarenph;

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
    private long supplierContectnum;
    /**
     * 供应商联系人邮件
     */
    private String supplierContectemail;
    /**
     * 供应商是否启用门户
     */
    private int supplierPortal;
    /**
     * 供应商是否必须合同
     */
    private int supplierContract;


    public String getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(String supplierId) {
        this.supplierId = supplierId;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }

    public int getSupplierType() {
        return supplierType;
    }

    public void setSupplierType(int supplierType) {
        this.supplierType = supplierType;
    }

    public String getSupplierOrg() {
        return supplierOrg;
    }

    public void setSupplierOrg(String supplierOrg) {
        this.supplierOrg = supplierOrg;
    }

    public int getSupplierLevel() {
        return supplierLevel;
    }

    public void setSupplierLevel(int supplierLevel) {
        this.supplierLevel = supplierLevel;
    }

    public String getSupplierSim() {
        return supplierSim;
    }

    public void setSupplierSim(String supplierSim) {
        this.supplierSim = supplierSim;
    }

    public String getSupplierFaren() {
        return supplierFaren;
    }

    public void setSupplierFaren(String supplierFaren) {
        this.supplierFaren = supplierFaren;
    }

    public String getSupplierAddr() {
        return supplierAddr;
    }

    public void setSupplierAddr(String supplierAddr) {
        this.supplierAddr = supplierAddr;
    }

    public String getSupplierTrustnum() {
        return supplierTrustnum;
    }

    public void setSupplierTrustnum(String supplierTrustnum) {
        this.supplierTrustnum = supplierTrustnum;
    }

    public String getSupplierContact() {
        return supplierContact;
    }

    public void setSupplierContact(String supplierContact) {
        this.supplierContact = supplierContact;
    }

    public int getSupplierPortal() {
        return supplierPortal;
    }

    public void setSupplierPortal(int supplierPortal) {
        this.supplierPortal = supplierPortal;
    }

    public int getSupplierContract() {
        return supplierContract;
    }

    public void setSupplierContract(int supplierContract) {
        this.supplierContract = supplierContract;
    }


    public String getSupplierContectemail() {
        return supplierContectemail;
    }

    public void setSupplierContectemail(String supplierContectemail) {
        this.supplierContectemail = supplierContectemail;
    }

    public long getSupplierFarenph() {
        return supplierFarenph;
    }

    public void setSupplierFarenph(long supplierFarenph) {
        this.supplierFarenph = supplierFarenph;
    }

    public long getSupplierContectnum() {
        return supplierContectnum;
    }

    public void setSupplierContectnum(long supplierContectnum) {
        this.supplierContectnum = supplierContectnum;
    }
}
