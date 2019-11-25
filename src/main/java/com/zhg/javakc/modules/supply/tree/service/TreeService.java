package com.zhg.javakc.modules.supply.tree.service;

import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supply.tree.dao.TreeDao;
import com.zhg.javakc.modules.supply.tree.entity.TreeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class TreeService extends BaseService<TreeDao, TreeEntity> {

    @Autowired
    TreeDao treeDao;

    public List<Map<String,Object>> queryAllOrg(){
        return treeDao.queryAllOrg();
    }

    public List<Map<String,Object>> queryByOrgId(String orgId){
        return treeDao.queryByOrgId(orgId);
    }

    public void deleteOrg(String orgId){
        treeDao.deleteOrg(orgId);
    }
}
