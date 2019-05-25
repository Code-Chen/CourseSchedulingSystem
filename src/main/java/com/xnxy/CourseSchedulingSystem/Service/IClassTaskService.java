package com.xnxy.CourseSchedulingSystem.Service;

import com.xnxy.CourseSchedulingSystem.Bean.po.ClassTask;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;

import java.util.List;

public interface IClassTaskService {
    List<ClassTask> queryClassTask(QueryVO queryVO);
    Boolean saveClassTask(ClassTask classTask);
    Boolean deleteClassTask(ClassTask classTask);
    List<String> querySemester();

}
