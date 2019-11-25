package com.zhg.javakc.modules.goods.sort.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.goods.sort.entity.SortEntity;
import com.zhg.javakc.modules.goods.sort.service.SortService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

}
