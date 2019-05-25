package com.xnxy.CourseSchedulingSystem.Service.Impl;

import com.xnxy.CourseSchedulingSystem.Bean.po.CollegeInfo;
import com.xnxy.CourseSchedulingSystem.Dao.CollegeInfoDao;
import com.xnxy.CourseSchedulingSystem.Service.ICollegeInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class CollegeInfoService implements ICollegeInfoService {
    @Autowired
    CollegeInfoDao collegeInfoDao;
    @Override
    public List<CollegeInfo> findCollegeInfo() {
        try{
        List<CollegeInfo> collegeInfoList = collegeInfoDao.selectAll();
        return collegeInfoList;
        }catch (Exception e){
            e.printStackTrace();
            return Collections.emptyList();
        }
    }
}
