package com.zhg.javakc.modules.test.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.test.dao.TestDao;
import com.zhg.javakc.modules.test.entity.TestEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author lenovo
 * @Date 2019/11/19 13:09
 * @Version 1.0
 */
@Service
public class TestService extends BaseService<TestDao, TestEntity> {

    @Autowired
    TestDao testDao;

    /**
     * 分页查询
     * @param testEntity
     * @param page
     * @return page
     */
  public Page<TestEntity> queryTest(TestEntity testEntity,Page<TestEntity> page){
      //设置分页参数，才会被mybatis分页插件识别，拦截sql，再其sql的前后加入分页sql
      testEntity.setPage(page);
      //根据分页与查询条件进行测试查询
      List<TestEntity> testList=testDao.findList(testEntity);
      //将查询数据设置到分页类的List集合中，一起返回
      page.setList(testList);
      return page;
  }
}
