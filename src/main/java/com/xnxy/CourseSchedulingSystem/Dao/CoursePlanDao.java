package com.xnxy.CourseSchedulingSystem.Dao;

import com.xnxy.CourseSchedulingSystem.Bean.po.ClassTask;
import com.xnxy.CourseSchedulingSystem.Bean.po.CoursePlan;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CoursePlanDao {

    List<CoursePlan> selectAll(QueryVO queryVO);
    int insertCoursePlan(CoursePlan coursePlan);
    int updateCoursePlan(ClassTask classTask);

}