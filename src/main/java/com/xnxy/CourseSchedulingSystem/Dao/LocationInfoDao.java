package com.xnxy.CourseSchedulingSystem.Dao;

import com.xnxy.CourseSchedulingSystem.Bean.po.LocationInfo;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface LocationInfoDao {
    int deleteByPrimaryKey(LocationInfo locationInfo);

    int insert(LocationInfo locationInfo);

    List<LocationInfo> selectAll(QueryVO queryVO);

    int updateByPrimaryKey(LocationInfo locationInfo);

    String selectBuildNo(@Param("collegeNo") String collegeNo);
}