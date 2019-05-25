package com.xnxy.CourseSchedulingSystem.Service;

import com.xnxy.CourseSchedulingSystem.Bean.po.CoursePlan;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;

import java.util.List;

public interface ICoursePlanService {
    List<CoursePlan> selectAll(QueryVO queryVO);
}
