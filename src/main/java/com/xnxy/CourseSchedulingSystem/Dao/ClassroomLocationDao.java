package com.xnxy.CourseSchedulingSystem.Dao;

import com.xnxy.CourseSchedulingSystem.Bean.po.ClassroomLocation;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper

public interface ClassroomLocationDao {
    int deleteByPrimaryKey(Long id);

    int insert(ClassroomLocation record);

    ClassroomLocation selectByPrimaryKey(Long id);

    List<ClassroomLocation> selectAll();

    int updateByPrimaryKey(ClassroomLocation record);

    List<ClassroomLocation> selectByTeachBuildNo(@Param("teachBuildNo") String teachBuildNo);
}