package com.zhg.javakc.modules.goods.sort.entity;

import com.zhg.javakc.base.entity.BaseEntity;

public class SortEntity extends BaseEntity<SortEntity> {

    private String sortId;

    private String sortBianhao;

    private String sortName;

    private String sortSuoxie;

    private String pid;

    private String sortOpen;

    private int sortOrder;

    private String sortLevel;

    public String getSortId() {
        return sortId;
    }

    public void setSortId(String sortId) {
        this.sortId = sortId;
    }

    public String getSortBianhao() {
        return sortBianhao;
    }

    public void setSortBianhao(String sortBianhao) {
        this.sortBianhao = sortBianhao;
    }

    public String getSortName() {
        return sortName;
    }

    public void setSortName(String sortName) {
        this.sortName = sortName;
    }

    public String getSortSuoxie() {
        return sortSuoxie;
    }

    public void setSortSuoxie(String sortSuoxie) {
        this.sortSuoxie = sortSuoxie;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getSortOpen() {
        return sortOpen;
    }

    public void setSortOpen(String sortOpen) {
        this.sortOpen = sortOpen;
    }

    public int getSortOrder() {
        return sortOrder;
    }

    public void setSortOrder(int sortOrder) {
        this.sortOrder = sortOrder;
    }

    public String getSortLevel() {
        return sortLevel;
    }

    public void setSortLevel(String sortLevel) {
        this.sortLevel = sortLevel;
    }
}
