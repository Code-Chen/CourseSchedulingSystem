package com.xnxy.CourseSchedulingSystem.Dao;

import com.xnxy.CourseSchedulingSystem.Bean.po.CourseInfo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CourseInfoDao {
    int deleteByPrimaryKey(Long id);

    int insert(CourseInfo record);

    CourseInfo selectByPrimaryKey(Long id);

    List<CourseInfo> selectAll();

    int updateByPrimaryKey(CourseInfo record);
}