package com.xnxy.CourseSchedulingSystem.Service;

import com.xnxy.CourseSchedulingSystem.Bean.po.TeacherInfo;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;

import java.util.List;

public interface ITeacherInfoService {
    List<TeacherInfo> queryTeacherInfo(QueryVO queryVO);
}
