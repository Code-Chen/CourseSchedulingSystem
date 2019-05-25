package com.xnxy.CourseSchedulingSystem.Dao;

import com.xnxy.CourseSchedulingSystem.Bean.po.TeachBuildInfo;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface TeachBuildInfoDao {
    int deleteByPrimaryKey(Long id);

    int insert(TeachBuildInfo record);

    TeachBuildInfo selectByPrimaryKey(Long id);

    List<TeachBuildInfo> selectAll(QueryVO queryVO);

    int updateByPrimaryKey(TeachBuildInfo record);
}