package com.xnxy.CourseSchedulingSystem.Dao;

import com.xnxy.CourseSchedulingSystem.Bean.po.ClassTask;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ClassTaskDao {
    int insert(ClassTask classTask);
    int updateByPrimaryKey(ClassTask classTask);
    List<ClassTask> selectAll(QueryVO queryVO);
    int deleteByPrimaryKey(ClassTask classTask);
    List<ClassTask> selectBySemester(ClassTask classTask);
    List<String> selectByColumnName(@Param("columnName") String columnName);
}