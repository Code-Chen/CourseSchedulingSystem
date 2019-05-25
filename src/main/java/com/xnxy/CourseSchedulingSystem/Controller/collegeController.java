package com.xnxy.CourseSchedulingSystem.Controller;

import com.xnxy.CourseSchedulingSystem.Bean.po.ClassTask;
import com.xnxy.CourseSchedulingSystem.Bean.po.TeacherInfo;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;
import com.xnxy.CourseSchedulingSystem.Bean.vo.ResultVO;
import com.xnxy.CourseSchedulingSystem.Bean.vo.TeachPlanVO;
import com.xnxy.CourseSchedulingSystem.Util.PageUtil;
import com.xnxy.CourseSchedulingSystem.Service.IClassTaskService;
import com.xnxy.CourseSchedulingSystem.Service.ITeachPlanService;
import com.xnxy.CourseSchedulingSystem.Service.ITeacherInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class collegeController {
    @Autowired
    ITeachPlanService teachPlanService;
    @Autowired
    ITeacherInfoService teacherInfoService;
    @Autowired
    IClassTaskService classTaskService;

    @RequestMapping("/queryTeachPlan")
    public ResultVO queryTeachPlan (@RequestBody QueryVO queryVO){
        //PageUtil.pageHelper(queryVO);
        List<TeachPlanVO> teachPlanVOList = teachPlanService.queryTeachPlan(queryVO);
        if(teachPlanVOList != null && teachPlanVOList.size() > 0){
            return ResultVO.ok("查询学院教学计划成功",teachPlanVOList);
           // return ResultVO.ok("查询学院教学计划成功",teachPlanVOList,PageUtil.pageDataHelper(teachPlanVOList));
        }
        return ResultVO.ok("暂无数据");
    }

    @RequestMapping("/queryTeacherInfo")
    public ResultVO queryTeacherInfo (@RequestBody QueryVO queryVO){
        //PageUtil.pageHelper(queryVO);
        List<TeacherInfo> teacherInfoList = teacherInfoService.queryTeacherInfo(queryVO);
        return ResultVO.ok("查询教师信息成功",teacherInfoList);
        //return ResultVO.ok("查询教师信息成功",teacherInfoList,PageUtil.pageDataHelper(teacherInfoList));
    }

    @RequestMapping("/queryClassTask")
    public ResultVO queryClassTask(@RequestBody QueryVO queryVO){
       // PageUtil.pageHelper(queryVO);
        List<ClassTask> classTaskList = classTaskService.queryClassTask(queryVO);
        if(classTaskList != null && classTaskList.size() > 0 ){
            return ResultVO.ok("查询学院开课任务书成功",classTaskList);
            //return ResultVO.ok("查询学院开课任务书成功",classTaskList,PageUtil.pageDataHelper(classTaskList));
        }
        return ResultVO.faile("查询开课任务书失败，没有数据");
    }

    @RequestMapping("/saveClassTask")
    public ResultVO saveClassTask(@RequestBody ClassTask classTask){
        if(classTaskService.saveClassTask(classTask)){
            QueryVO queryVO = new QueryVO();
            queryVO.setCollegeno(classTask.getCollegeno());
            List<ClassTask> classTaskList = classTaskService.queryClassTask(queryVO);
           return ResultVO.ok("开课任务保存成功",classTaskList);
        }
        return ResultVO.faile("开课任务保存失败");
    }

    @RequestMapping("/deleteClassTask")
    public ResultVO deleteClassTask(@RequestBody ClassTask classTask){
        if(classTaskService.deleteClassTask(classTask)){
            QueryVO queryVO = new QueryVO();
            queryVO.setCollegeno(classTask.getCollegeno());
            List<ClassTask> classTaskList = classTaskService.queryClassTask(queryVO);
            return ResultVO.ok("开课任务删除成功",classTaskList);
        }
        return ResultVO.faile("开课任务删除成功");
    }
}
