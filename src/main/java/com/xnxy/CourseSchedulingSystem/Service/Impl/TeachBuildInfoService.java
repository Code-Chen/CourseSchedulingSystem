package com.xnxy.CourseSchedulingSystem.Service.Impl;

import com.xnxy.CourseSchedulingSystem.Bean.po.TeachBuildInfo;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;
import com.xnxy.CourseSchedulingSystem.Dao.TeachBuildInfoDao;
import com.xnxy.CourseSchedulingSystem.Service.ITeachBuildInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
@Service
public class TeachBuildInfoService implements ITeachBuildInfoService {
    @Autowired
    TeachBuildInfoDao teachBuildInfoDao;

    @Override
    public List<TeachBuildInfo> queryTeachBuildInfo(QueryVO queryVO) {
        try {
            List<TeachBuildInfo> teachBuildInfoList = teachBuildInfoDao.selectAll(queryVO);
            return teachBuildInfoList;
        }catch (Exception e){
            e.printStackTrace();
            return Collections.emptyList();
        }
    }
}
