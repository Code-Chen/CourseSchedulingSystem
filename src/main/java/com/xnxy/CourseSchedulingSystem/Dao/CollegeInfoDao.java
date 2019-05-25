package com.xnxy.CourseSchedulingSystem.Dao;

import com.xnxy.CourseSchedulingSystem.Bean.po.CollegeInfo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CollegeInfoDao {


    List<CollegeInfo> selectAll();

}