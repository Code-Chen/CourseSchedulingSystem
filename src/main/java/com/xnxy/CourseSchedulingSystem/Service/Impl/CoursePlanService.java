package com.xnxy.CourseSchedulingSystem.Service.Impl;

import com.xnxy.CourseSchedulingSystem.Bean.po.CoursePlan;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;
import com.xnxy.CourseSchedulingSystem.Dao.CoursePlanDao;
import com.xnxy.CourseSchedulingSystem.Service.ICoursePlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
@Service

public class CoursePlanService implements ICoursePlanService {
    @Autowired
    CoursePlanDao coursePlanDao;

    @Override
    public List<CoursePlan> selectAll(QueryVO queryVO) {
        try{
            List<CoursePlan> coursePlanList = coursePlanDao.selectAll(queryVO);
            return coursePlanList;
        }catch (Exception e){
            e.printStackTrace();
            return Collections.emptyList();
        }

    }
}
