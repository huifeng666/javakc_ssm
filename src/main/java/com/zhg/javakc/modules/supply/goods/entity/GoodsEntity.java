package com.zhg.javakc.modules.supply.goods.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import oracle.sql.BLOB;

/**
 * @Author huoyinglong
 * @Date 2019/11/22 15:30
 * @Version 1.0
 */
public class GoodsEntity extends BaseEntity<GoodsEntity> {

    private String goodsId;  //物资ID
    private String goodsName;//物资名称
    private String goodsGuige;//物资规格
    private String goodsSimp;//物资简称
    private String goodsTxt; //物资简述
    private byte[] goodsPhoto;//物资图片
    private int goodsFuma;//物资赋码
    private int goodsHetong;//物资是否采用合同
    private String goodsBaozhi;//物资保质期
    private int goodsShuilv;//物资税率
    private String goodsJiben;//物资基本单位
    private String goodsShengchan;//物资生产
    private int goodsJingzhong;//物资净重
    private int goodsMaozhong;//物资毛重
    private int goodsTiji;//物资体积
    private String goodsTijidanwei;//物资体积单位
    private String delflag;//物资标记
    private int sortId;//物资分类外键
    private String goodsUser;//创建人
    private int goodsState;//状态

    public String getGoodsUser() {
        return goodsUser;
    }

    public void setGoodsUser(String goodsUser) {
        this.goodsUser = goodsUser;
    }

    public int getGoodsState() {
        return goodsState;
    }

    public void setGoodsState(int goodsState) {
        this.goodsState = goodsState;
    }

    public String getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(String goodsId) {
        this.goodsId = goodsId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getGoodsGuige() {
        return goodsGuige;
    }

    public void setGoodsGuige(String goodsGuige) {
        this.goodsGuige = goodsGuige;
    }

    public String getGoodsSimp() {
        return goodsSimp;
    }

    public void setGoodsSimp(String goodsSimp) {
        this.goodsSimp = goodsSimp;
    }

    public String getGoodsTxt() {
        return goodsTxt;
    }

    public void setGoodsTxt(String goodsTxt) {
        this.goodsTxt = goodsTxt;
    }

    public byte[] getGoodsPhoto() {
        return goodsPhoto;
    }
    public void setGoodsPhoto(byte[] goodsPhoto) {
        this.goodsPhoto = goodsPhoto;
    }
    public int getGoodsFuma() {
        return goodsFuma;
    }

    public void setGoodsFuma(int goodsFuma) {
        this.goodsFuma = goodsFuma;
    }

    public int getGoodsHetong() {
        return goodsHetong;
    }

    public void setGoodsHetong(int goodsHetong) {
        this.goodsHetong = goodsHetong;
    }

    public String getGoodsBaozhi() {
        return goodsBaozhi;
    }

    public void setGoodsBaozhi(String goodsBaozhi) {
        this.goodsBaozhi = goodsBaozhi;
    }

    public int getGoodsShuilv() {
        return goodsShuilv;
    }

    public void setGoodsShuilv(int goodsShuilv) {
        this.goodsShuilv = goodsShuilv;
    }

    public String getGoodsJiben() {
        return goodsJiben;
    }

    public void setGoodsJiben(String goodsJiben) {
        this.goodsJiben = goodsJiben;
    }

    public String getGoodsShengchan() {
        return goodsShengchan;
    }

    public void setGoodsShengchan(String goodsShengchan) {
        this.goodsShengchan = goodsShengchan;
    }

    public int getGoodsJingzhong() {
        return goodsJingzhong;
    }

    public void setGoodsJingzhong(int goodsJingzhong) {
        this.goodsJingzhong = goodsJingzhong;
    }

    public int getGoodsMaozhong() {
        return goodsMaozhong;
    }

    public void setGoodsMaozhong(int goodsMaozhong) {
        this.goodsMaozhong = goodsMaozhong;
    }

    public int getGoodsTiji() {
        return goodsTiji;
    }

    public void setGoodsTiji(int goodsTiji) {
        this.goodsTiji = goodsTiji;
    }

    public String getGoodsTijidanwei() {
        return goodsTijidanwei;
    }

    public void setGoodsTijidanwei(String goodsTijidanwei) {
        this.goodsTijidanwei = goodsTijidanwei;
    }

    public String getDelflag() {
        return delflag;
    }

    public void setDelflag(String delflag) {
        this.delflag = delflag;
    }

    public int getSortId() {
        return sortId;
    }

    public void setSortId(int sortId) {
        this.sortId = sortId;
    }
}
