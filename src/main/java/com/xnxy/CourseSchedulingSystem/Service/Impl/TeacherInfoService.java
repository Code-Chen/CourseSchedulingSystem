package com.xnxy.CourseSchedulingSystem.Service.Impl;

import com.xnxy.CourseSchedulingSystem.Bean.po.TeacherInfo;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;
import com.xnxy.CourseSchedulingSystem.Dao.TeacherInfoDao;
import com.xnxy.CourseSchedulingSystem.Service.ITeacherInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeacherInfoService implements ITeacherInfoService {
    @Autowired
    TeacherInfoDao teacherInfoDao;
    @Override
    public List<TeacherInfo> queryTeacherInfo(QueryVO queryVO) {
        List<TeacherInfo> teacherInfoList = teacherInfoDao.selectAll(queryVO);
        return teacherInfoList;
    }
}
