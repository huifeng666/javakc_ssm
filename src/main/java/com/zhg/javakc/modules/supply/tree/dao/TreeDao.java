package com.zhg.javakc.modules.supply.tree.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.supply.tree.entity.TreeEntity;

import java.util.List;
import java.util.Map;

public interface TreeDao extends BaseDao<TreeEntity> {

    public List<Map<String,Object>> queryAllOrg();
    public List<Map<String,Object>> queryByOrgId(String orgId);
    public void deleteOrg(String orgId);

}
