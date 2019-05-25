package com.xnxy.CourseSchedulingSystem.Dao;

import com.xnxy.CourseSchedulingSystem.Bean.po.TeachPlan;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;
import com.xnxy.CourseSchedulingSystem.Bean.vo.TeachPlanVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TeachPlanDao {

    List<TeachPlanVO> selectAll(QueryVO queryVO);


}