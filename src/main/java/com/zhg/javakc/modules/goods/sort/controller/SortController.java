package com.zhg.javakc.modules.goods.sort.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.goods.sort.entity.SortEntity;
import com.zhg.javakc.modules.goods.sort.service.SortService;
import com.zhg.javakc.modules.test.entity.TestEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/sort")
public class SortController {
    @Autowired
    private SortService sortService;

//    @RequestMapping("/querySort")
//    public ModelAndView findSort(HttpServletRequest request, HttpServletResponse response, SortEntity sortEntity){
//
//        ModelAndView modelAndView = new ModelAndView("yangchu/sort/sort");
//       Page<SortEntity> page = sortService.findSort(sortEntity,new Page<SortEntity>(request,response));
//        modelAndView.addObject("page",page);
//        return modelAndView;
//    }

    @RequestMapping("/querySort")
    @ResponseBody
    public List<Map<String,Object>> querySort(){
        List<Map<String,Object>> list = sortService.querySort();
        return list;
    }

    @RequestMapping("/save")
    public String save(SortEntity sortEntity){
        sortEntity.setSortId(CommonUtil.uuid());
        sortService.save(sortEntity);
        return "/yangchu/sort/list";
    }

    @RequestMapping("/view")
    public String view(String sortId, ModelMap modelMap){
       SortEntity sortEntity = sortService.get(sortId);
        System.out.println(sortEntity.getSortName());
        modelMap.put("sortEntity",sortEntity);

        return "yangchu/sort/update";
    }


    @RequestMapping("/update")
    public String update(SortEntity sortEntity){
        sortService.update(sortEntity);
        return "yangchu/sort/list";
    }

    @RequestMapping("/delete")
    public String delete(String sortId){
        //得到当前sortId的所有子节点
        List<Map<String,Object>> list = sortService.querySortById(sortId);
        if (list!= null && list.size()>0){
            for (Map<String,Object> map : list){
                delete(map.get("id").toString());
            }
        }
        else {
            //删除当前节点
            sortService.deleteSort(sortId);
        }
        return "yangchu/sort/list";
    }

}
