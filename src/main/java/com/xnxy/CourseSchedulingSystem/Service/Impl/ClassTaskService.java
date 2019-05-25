package com.xnxy.CourseSchedulingSystem.Service.Impl;


import com.xnxy.CourseSchedulingSystem.Bean.po.ClassTask;
import com.xnxy.CourseSchedulingSystem.Bean.vo.ConstantInfo;
import com.xnxy.CourseSchedulingSystem.Bean.vo.QueryVO;
import com.xnxy.CourseSchedulingSystem.Dao.ClassTaskDao;
import com.xnxy.CourseSchedulingSystem.Service.IClassTaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.Collections;
import java.util.List;

@Service
public class ClassTaskService implements IClassTaskService {
    @Autowired
    ClassTaskDao classTaskDao;

    @Override
    public List<ClassTask> queryClassTask(QueryVO queryVO) {
        try{
            List<ClassTask> classTaskList = classTaskDao.selectAll(queryVO);
            return classTaskList;
        }catch (Exception e){
            e.printStackTrace();
            return Collections.emptyList();

        }
    }

    @Override
    public Boolean saveClassTask(ClassTask classTask) {
        Long id = classTask.getId();
        try{
            //根据id是否为空来确定是插入操作还是更新操作
            if(id != null){
              if(classTaskDao.updateByPrimaryKey(classTask) > 0 ){
                  return true;
              }
              return false;
            }else {
                if(classTaskDao.insert(classTask) > 0 ){
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
    public Boolean deleteClassTask(ClassTask classTask) {
        if(classTaskDao.deleteByPrimaryKey(classTask) > 0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public List<String> querySemester() {
        List<String> semesterList = classTaskDao.selectByColumnName(ConstantInfo.SEMESTER);
        return semesterList;
    }

}
