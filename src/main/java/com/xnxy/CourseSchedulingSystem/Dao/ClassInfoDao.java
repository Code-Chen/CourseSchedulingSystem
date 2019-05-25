package com.xnxy.CourseSchedulingSystem.Dao;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ClassInfoDao {
    int selectStudentNumber(@Param("classNo") String classNo);
}