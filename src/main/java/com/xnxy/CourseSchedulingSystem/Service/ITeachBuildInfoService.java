package com.xnxy.CourseSchedulingSystem.Service;

import com.xnxy.CourseSchedulingSystem.Bean.po.TeachBuildInfo;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;

import java.util.List;

public interface ITeachBuildInfoService {
    List<TeachBuildInfo> queryTeachBuildInfo(QueryVO queryVO);
}
