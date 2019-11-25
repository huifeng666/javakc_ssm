package com.zhg.javakc.modules.tree.entity;

import com.zhg.javakc.base.entity.BaseEntity;

public class TreeEntity extends BaseEntity<TreeEntity> {

    private String orgId;
    private String orgName;
    private String orgPid;
    private String orgOpen;
    private int orgOrder;
    private String orgLevel;

    public String getOrgId() {
        return orgId;
    }

    public void setOrgId(String orgId) {
        this.orgId = orgId;
    }

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

    public String getOrgPid() {
        return orgPid;
    }

    public void setOrgPid(String orgPid) {
        this.orgPid = orgPid;
    }

    public String getOrgOpen() {
        return orgOpen;
    }

    public void setOrgOpen(String orgOpen) {
        this.orgOpen = orgOpen;
    }

    public int getOrgOrder() {
        return orgOrder;
    }

    public void setOrgOrder(int orgOrder) {
        this.orgOrder = orgOrder;
    }

    public String getOrgLevel() {
        return orgLevel;
    }

    public void setOrgLevel(String orgLevel) {
        this.orgLevel = orgLevel;
    }
}
