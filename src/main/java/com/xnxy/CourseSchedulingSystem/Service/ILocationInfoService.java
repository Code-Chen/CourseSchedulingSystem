package com.xnxy.CourseSchedulingSystem.Service;


import com.xnxy.CourseSchedulingSystem.Bean.po.LocationInfo;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;

import java.util.List;

public interface ILocationInfoService {
    List<LocationInfo> queryLocationInfo(QueryVO queryVO);
    Boolean saveLocationInfo(LocationInfo locationInfo);
    Boolean deleteLocationInfo(LocationInfo locationInfo);
}
