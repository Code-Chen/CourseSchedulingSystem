package com.xnxy.CourseSchedulingSystem.Service.Impl;

import com.xnxy.CourseSchedulingSystem.Bean.po.UserInfo;
import com.xnxy.CourseSchedulingSystem.Bean.vo.UserInfoVO;
import com.xnxy.CourseSchedulingSystem.Dao.UserInfoDao;
import com.xnxy.CourseSchedulingSystem.Service.IUserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserInfoService implements IUserInfoService {

    @Autowired
    UserInfoDao userInfoDao;

    @Override
    public Boolean login(UserInfoVO userInfoVO) {
        UserInfo userInfo = userInfoDao.selectUser(userInfoVO);
        if (userInfo != null) {
            return true;
        }
        return false;
    }
}
