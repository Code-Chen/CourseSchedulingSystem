package com.xnxy.CourseSchedulingSystem.Controller;

import com.xnxy.CourseSchedulingSystem.Bean.po.CollegeInfo;
import com.xnxy.CourseSchedulingSystem.Bean.po.CoursePlan;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;
import com.xnxy.CourseSchedulingSystem.Bean.vo.ResultVO;
import com.xnxy.CourseSchedulingSystem.Bean.vo.UserInfoVO;
import com.xnxy.CourseSchedulingSystem.Service.ICollegeInfoService;
import com.xnxy.CourseSchedulingSystem.Service.ICoursePlanService;
import com.xnxy.CourseSchedulingSystem.Service.IUserInfoService;
import com.xnxy.CourseSchedulingSystem.Util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
public class UserController {
    @Autowired
    IUserInfoService userInfoService;
    @Autowired
    ICoursePlanService coursePlanService;
    @Autowired
    ICollegeInfoService collegeInfoService;

    @RequestMapping("/userLogin")
    public ResultVO login(@RequestBody UserInfoVO userInfoVO) {
        if (userInfoService.login(userInfoVO)) {
            return ResultVO.ok("登录成功", userInfoVO);
        }
        return ResultVO.faile("登录失败");
    }

    @RequestMapping("/queryCoursePlan")
    public ResultVO queryCoursePlan(@RequestBody QueryVO queryVO){
        List<CoursePlan> coursePlanList = coursePlanService.selectAll(queryVO);
        if(coursePlanList != null && coursePlanList.size() > 0){
            return ResultVO.ok("查询课表成功",coursePlanList);
        }
        return ResultVO.faile("课表查询失败");
    }

    @RequestMapping("/queryCollegeInfo")
    public ResultVO queryCollegeInfo(){
        List<CollegeInfo> collegeInfoList = collegeInfoService.findCollegeInfo();
        if(collegeInfoList != null && collegeInfoList.size() > 0){
            return ResultVO.ok("查询学院信息成功",collegeInfoList);
        }
        return ResultVO.faile("查询学院失败");
    }
}
