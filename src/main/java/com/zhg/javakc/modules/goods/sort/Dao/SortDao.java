package com.zhg.javakc.modules.goods.sort.Dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.goods.sort.entity.SortEntity;

import java.util.List;
import java.util.Map;

public interface SortDao extends BaseDao<SortEntity> {

    public List<Map<String,Object>> querySort();
    public List<Map<String,Object>> querySortById(String sortId);
    public void deleteSort(String sortId);
    public void deleteSort2(String sortId);

}
