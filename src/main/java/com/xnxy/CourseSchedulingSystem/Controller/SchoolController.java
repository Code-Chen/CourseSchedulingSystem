package com.xnxy.CourseSchedulingSystem.Controller;

import com.xnxy.CourseSchedulingSystem.Bean.po.ClassTask;
import com.xnxy.CourseSchedulingSystem.Bean.po.LocationInfo;
import com.xnxy.CourseSchedulingSystem.Bean.po.TeachBuildInfo;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;
import com.xnxy.CourseSchedulingSystem.Bean.vo.ResultVO;
import com.xnxy.CourseSchedulingSystem.Service.IClassSchedulingService;
import com.xnxy.CourseSchedulingSystem.Service.IClassTaskService;
import com.xnxy.CourseSchedulingSystem.Service.ILocationInfoService;
import com.xnxy.CourseSchedulingSystem.Service.ITeachBuildInfoService;
import com.xnxy.CourseSchedulingSystem.Service.Impl.LocationInfoService;
import com.xnxy.CourseSchedulingSystem.Util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.xml.transform.Result;
import java.util.List;

@RestController
public class SchoolController {
    @Autowired
    ITeachBuildInfoService teachBuildInfoService;
    @Autowired
    ILocationInfoService locationInfoService;
    @Autowired
    IClassTaskService classTaskService;
    @Autowired
    IClassSchedulingService classSchedulingService;
    @RequestMapping("/queryTeachBuildInfo")
    public ResultVO queryTeachBuildInfo(@RequestBody QueryVO queryVO){
        //PageUtil.pageHelper(queryVO);
        List<TeachBuildInfo> teachBuildInfoList = teachBuildInfoService.queryTeachBuildInfo(queryVO);
        if(teachBuildInfoList != null && teachBuildInfoList.size() > 0 ){
            return ResultVO.ok("查询教学楼信息成功",teachBuildInfoList);
            //return ResultVO.ok("查询教学楼信息成功",teachBuildInfoList,PageUtil.pageDataHelper(teachBuildInfoList));
        }
        return ResultVO.faile("查询教学楼信息出现异常");
    }

    @RequestMapping("/queryLocationInfo")
    public ResultVO queryLocationInfo(@RequestBody QueryVO queryVO){
        //PageUtil.pageHelper(queryVO);
        List<LocationInfo> locationInfoList = locationInfoService.queryLocationInfo(queryVO);
        if(locationInfoList != null && locationInfoList.size() > 0){
            return ResultVO.ok("查询学院教学区域安排位置表成功",locationInfoList);
           // return ResultVO.ok("查询学院教学区域安排位置表成功",locationInfoList, PageUtil.pageDataHelper(locationInfoList));
        }
        return ResultVO.faile("查询学院教学区域安排位置表出现异常");
    }

    @RequestMapping("/saveLocationInfo")
    public ResultVO saveLocationInfo(@RequestBody LocationInfo locationInfo){
        if(locationInfoService.saveLocationInfo(locationInfo)){
            QueryVO queryVO = new QueryVO();
            //PageUtil.pageHelper(queryVO);
            List<LocationInfo> locationInfoList = locationInfoService.queryLocationInfo(queryVO);
            return ResultVO.ok("学院教学区域安排位置保存成功",locationInfoList);
            //return ResultVO.ok("学院教学区域安排位置保存成功",locationInfoList,PageUtil.pageDataHelper(locationInfoList));
        }
        return ResultVO.faile("教学区域安排位置保存失败");
    }

    @RequestMapping("/deleteLocationInfo")
    public ResultVO deleteLocationInfo(@RequestBody LocationInfo locationInfo){
        if(locationInfoService.deleteLocationInfo(locationInfo)){
            QueryVO queryVO = new QueryVO();
            //PageUtil.pageHelper(queryVO);
            List<LocationInfo> locationInfoList = locationInfoService.queryLocationInfo(queryVO);
            return ResultVO.ok("学院教学区域安排位置删除成功",locationInfoList);
            //return ResultVO.ok("学院教学区域安排位置删除成功",locationInfoList,PageUtil.pageDataHelper(locationInfoList));
        }
        return ResultVO.faile("学院教学区域安排位置删除失败");

    }
    @RequestMapping("/querySemester")
    public ResultVO querySemester(){
        List<String> semesterList = classTaskService.querySemester();
        return ResultVO.ok("查询开课学期成功",semesterList);
    }

    @RequestMapping("/classScheduling")
    public ResultVO classScheduling(@RequestBody ClassTask classTask){
        if(classSchedulingService.classScheduling(classTask)){
            return ResultVO.ok("排课成功");
        }
        return ResultVO.faile("排课失败");
    }
}
