package com.xnxy.CourseSchedulingSystem.Dao;

import com.xnxy.CourseSchedulingSystem.Bean.po.UserInfo;
import com.xnxy.CourseSchedulingSystem.Bean.vo.UserInfoVO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserInfoDao {


     UserInfo selectUser(UserInfoVO userInfoVO);


}
