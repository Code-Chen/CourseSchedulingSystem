package com.xnxy.CourseSchedulingSystem.Service.Impl;

import com.xnxy.CourseSchedulingSystem.Bean.po.TeachPlan;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;
import com.xnxy.CourseSchedulingSystem.Bean.vo.TeachPlanVO;
import com.xnxy.CourseSchedulingSystem.Dao.TeachPlanDao;
import com.xnxy.CourseSchedulingSystem.Service.ITeachPlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class TeachPlanService implements ITeachPlanService {
    @Autowired
    TeachPlanDao teachPlanDao;
    @Override
    public List<TeachPlanVO> queryTeachPlan(QueryVO queryVO) {
        List<TeachPlanVO> teachPlanVOList = teachPlanDao.selectAll(queryVO);
        return teachPlanVOList;
    }
}
