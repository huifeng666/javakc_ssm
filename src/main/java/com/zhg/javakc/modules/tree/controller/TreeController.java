package com.zhg.javakc.modules.tree.controller;

import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.tree.entity.TreeEntity;
import com.zhg.javakc.modules.tree.service.TreeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/tree")
public class TreeController {

    @Autowired
    TreeService treeService;

    @RequestMapping("queryAllOrg")
    @ResponseBody
    public List<Map<String,Object>> queryAllOrg(){
        List<Map<String,Object>> list=treeService.queryAllOrg();
        return list;
    }

    @RequestMapping("save")
    public String save(TreeEntity treeEntity){
        treeEntity.setOrgId(CommonUtil.uuid());
        treeService.save(treeEntity);
        return "yangchu/tree/list";
    }

    @RequestMapping("update")
    public String update(TreeEntity treeEntity){
        treeEntity.setOrgId(CommonUtil.uuid());
        treeService.update(treeEntity);
        return "yangchu/tree/list";
    }

    @RequestMapping("delete")
    public String delete(String orgId){
        //得到当前orgId下的所有子节点数据
        List<Map<String,Object>> list=treeService.queryByOrgId(orgId);
        if (null!=list && list.size()>0){
            for (Map<String,Object>map:list){
                delete(map.get("id").toString());
            }
            treeService.deleteOrg(orgId);
        }else {
            //删除当前节点
            treeService.deleteOrg(orgId);
        }
        return "yangchu/tree/list";
    }

}
