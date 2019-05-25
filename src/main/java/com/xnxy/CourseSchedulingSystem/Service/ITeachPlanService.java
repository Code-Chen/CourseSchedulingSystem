package com.xnxy.CourseSchedulingSystem.Service;

import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;
import com.xnxy.CourseSchedulingSystem.Bean.vo.TeachPlanVO;

import java.util.List;

public interface ITeachPlanService {
    List<TeachPlanVO> queryTeachPlan(QueryVO queryVO);
}
