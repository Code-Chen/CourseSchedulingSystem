package com.xnxy.CourseSchedulingSystem.Service.Impl;

import com.xnxy.CourseSchedulingSystem.Bean.po.LocationInfo;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;
import com.xnxy.CourseSchedulingSystem.Dao.LocationInfoDao;
import com.xnxy.CourseSchedulingSystem.Service.ILocationInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
@Service
public class LocationInfoService implements ILocationInfoService {
    @Autowired
    LocationInfoDao locationInfoDao;
    @Override
    public List<LocationInfo> queryLocationInfo(QueryVO queryVO) {
        try{
            List<LocationInfo> locationInfoList = locationInfoDao.selectAll(queryVO);
            return locationInfoList;
        }catch (Exception e){
            e.printStackTrace();
            return Collections.emptyList();
        }
    }

    @Override
    public Boolean saveLocationInfo(LocationInfo locationInfo) {
        try{
            Long id = locationInfo.getId();
            if(id != null){
                if(locationInfoDao.updateByPrimaryKey(locationInfo) > 0){
                    return true;
                }
                return false;
            }else{
                if(locationInfoDao.insert(locationInfo) > 0){
                    return true;
                }
                return false;
            }
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }

    }

    @Override
    public Boolean deleteLocationInfo(LocationInfo locationInfo) {
        try{
            if(locationInfoDao.deleteByPrimaryKey(locationInfo) > 0 ){
                return true;
            }
            return false;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
}
