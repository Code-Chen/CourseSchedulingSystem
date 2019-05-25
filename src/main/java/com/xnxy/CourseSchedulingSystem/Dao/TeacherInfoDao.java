package com.xnxy.CourseSchedulingSystem.Dao;

import com.xnxy.CourseSchedulingSystem.Bean.po.TeacherInfo;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TeacherInfoDao {

    List<TeacherInfo> selectAll(QueryVO queryVO);
}