package com.zhg.javakc.modules.goods.sort.entity;

import com.zhg.javakc.base.entity.BaseEntity;

public class SortEntity extends BaseEntity<SortEntity> {

    private String sortId;

    private String sortBianhao;

    private String sortName;

    private String sortSuoxie;

    private String pid;

    private String open;

    private int order;

    private String level;

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

    public String getOpen() {
        return open;
    }

    public void setOpen(String open) {
        this.open = open;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }
}
