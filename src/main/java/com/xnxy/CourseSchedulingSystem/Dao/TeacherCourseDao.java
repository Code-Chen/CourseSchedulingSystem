package com.xnxy.CourseSchedulingSystem.Dao;

import com.xnxy.CourseSchedulingSystem.Bean.po.CoursePlan;
import com.xnxy.CourseSchedulingSystem.Bean.po.TeacherCourse;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TeacherCourseDao {
    int deleteByPrimaryKey(Long id);

    int insert(TeacherCourse record);

    List<TeacherCourse> selectAll();

    int updateByPrimaryKey(TeacherCourse record);
    int insertTeacherCourse(CoursePlan coursePlan);
}