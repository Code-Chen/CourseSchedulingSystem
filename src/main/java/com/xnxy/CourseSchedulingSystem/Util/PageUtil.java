package com.xnxy.CourseSchedulingSystem.Util;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;
import com.xnxy.CourseSchedulingSystem.Bean.vo.TeachPlanVO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PageUtil {
    private final static int PAGE_NUM = 1;
    private final static int PAGE_SIZE = 10;
//public static void pageHelper(QueryVO queryVO){
//        if(queryVO.getPageParam() == null){
//            Map<String,Integer> pageParam = new HashMap<>();
//            pageParam.put("pageNum",PAGE_NUM);
//            pageParam.put("pageSize",PAGE_SIZE);
//            queryVO.setPageParam(pageParam);
//        }
//        int pageNum = queryVO.getPageParam().get("pageNum");
//        int pageSize = queryVO.getPageParam().get("pageSize");
//        PageHelper.startPage(pageNum,pageSize);
//}
//
//public static Map<String,Long>pageDataHelper(List list){
//    Map<String,Long> pageData = new HashMap<>();
//    PageInfo<TeachPlanVO> pageInfo = new PageInfo<>(list);
//    pageData.put("pages",(long)pageInfo.getPages());
//    pageData.put("pageTotal",pageInfo.getTotal());
//    return pageData;
//}

}
