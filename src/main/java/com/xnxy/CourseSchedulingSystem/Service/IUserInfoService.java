package com.xnxy.CourseSchedulingSystem.Service;

import com.xnxy.CourseSchedulingSystem.Bean.vo.UserInfoVO;
import org.springframework.stereotype.Service;


public interface IUserInfoService {
    public Boolean login(UserInfoVO userInfoVO);
}
