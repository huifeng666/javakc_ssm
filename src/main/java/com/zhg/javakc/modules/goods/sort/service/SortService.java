package com.zhg.javakc.modules.goods.sort.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.goods.sort.Dao.SortDao;
import com.zhg.javakc.modules.goods.sort.entity.SortEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class SortService extends BaseService<SortDao, SortEntity> {

    @Autowired
private SortDao sortDao;

    public Page<SortEntity> findSort (SortEntity sortEntity,Page<SortEntity> page){
        sortEntity.setPage(page);
        List<SortEntity> list = sortDao.findList(sortEntity);
        page.setList(list);
        return page;
    }

    public List<Map<String,Object>> querySort(){
        return sortDao.querySort();
    }

    public List<Map<String,Object>> querySortById(String sortId){
       return sortDao.querySortById(sortId);
    }

    public void deleteSort(String sortId){
        sortDao.deleteSort(sortId);
    }

    public void deleteSort2(String sortId){
        sortDao.deleteSort(sortId);
    }

}
