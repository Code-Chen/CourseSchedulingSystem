package com.xnxy.CourseSchedulingSystem.Service.Impl;

import com.xnxy.CourseSchedulingSystem.Bean.po.TeacherCourse;
import com.xnxy.CourseSchedulingSystem.Dao.TeacherCourseDao;
import com.xnxy.CourseSchedulingSystem.Service.ITeacherCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeacherCourseService implements ITeacherCourseService {
    @Autowired
    TeacherCourseDao teacherCourseDao;

    @Override
    public int update(TeacherCourse teacherCourse) {
        return teacherCourseDao.updateByPrimaryKey(teacherCourse);
    }
}
