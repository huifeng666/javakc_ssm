package com.zhg.javakc.modules.goods.sort.Dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.goods.sort.entity.SortEntity;

import java.util.List;
import java.util.Map;

public interface SortDao extends BaseDao<SortEntity> {

    public List<Map<String,Object>> querySort();

}
