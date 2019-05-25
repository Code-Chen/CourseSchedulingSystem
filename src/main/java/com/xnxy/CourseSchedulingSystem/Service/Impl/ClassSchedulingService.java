package com.xnxy.CourseSchedulingSystem.Service.Impl;

import com.xnxy.CourseSchedulingSystem.Bean.po.ClassTask;
import com.xnxy.CourseSchedulingSystem.Bean.po.ClassroomLocation;
import com.xnxy.CourseSchedulingSystem.Bean.po.CoursePlan;
import com.xnxy.CourseSchedulingSystem.Bean.vo.ConstantInfo;
import com.xnxy.CourseSchedulingSystem.Dao.*;
import com.xnxy.CourseSchedulingSystem.Service.IClassSchedulingService;
import com.xnxy.CourseSchedulingSystem.Util.ClassSchedulUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ClassSchedulingService implements IClassSchedulingService {
    @Autowired
    ClassTaskDao classTaskDao;
    @Autowired
    LocationInfoDao locationInfoDao;
    @Autowired
    ClassroomLocationDao classroomLocationDao;
    @Autowired
    ClassInfoDao classInfoDao;
    @Autowired
    CoursePlanDao coursePlanDao;
    @Autowired
    TeacherCourseDao teacherCourseDao;

    private final String UNFIXED_TIME = "unFixedTime";//没有固定时间
    private final String IS_FIXED_TIME = "isFixedTime";//固定时间

    //先将再全校范围内分配的教学楼信息做一个查询（针对特殊要求的教室）
    @Transactional
    @Override
    public Boolean classScheduling(ClassTask classTask) {
        try {
            //第一步先获得开课任务
            List<ClassTask> classTaskList = classTaskDao.selectBySemester(classTask);
            //第二步将开课任务进行编码
            List<Map<String, List<String>>> geneList = coding(classTaskList);
            //第三步开始进行时间分配
            List<String> resultGeneList = codingTime(geneList);
            //第四步对已分配好时间的基因进行分类，生成以班级为范围的个体
            Map<String, List<String>> individualMap = transformIndividual(resultGeneList);
            //第五步进行遗传进化操作
            individualMap = geneticEvolution(individualMap);
            //第六步分配教室
            List<String> resultList = finalResult(individualMap);
            //第七步对分配好时间教室的基因进行解码，准备存入数据库
            List<CoursePlan> coursePlanList = decoding(resultList);
            for (CoursePlan coursePlan : coursePlanList) {
                coursePlanDao.insertCoursePlan(coursePlan);//将分配好时间和教室的对象更新到数据库中的course_plan数据表中
                teacherCourseDao.insertTeacherCourse(coursePlan);//将分配好时间和教室的对象更新到数据库中的teacher_course数据表中
            }
            //第八步将开课学期还有上课周数更新进上课计划表(course_plan)，在编码里不包括开课学期以及上课周数所以需要这一步操作
            for (ClassTask classTask1 : classTaskList) {
                coursePlanDao.updateCoursePlan(classTask1);
            }
            //操作全部完成
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

    }

    //将编码按班级进行分类，形成初始个体（不含教室的初始课表）
    @Override
    public Map<String, List<String>> transformIndividual(List<String> resultGeneList) {
        Map<String, List<String>> individualMap = new HashMap<>();
        List<String> classNoList = classTaskDao.selectByColumnName(ConstantInfo.CLASS_NO);
        for (String classNo : classNoList) {
            List<String> geneList = new ArrayList<>();
            for (String gene : resultGeneList) {
                if (classNo.equals(ClassSchedulUtil.cutGene(ConstantInfo.CLASS_NO, gene))) {
                    geneList.add(gene);
                }
            }

            if (geneList.size() > 1) {
                individualMap.put(classNo, geneList);
            }
        }
        return individualMap;
    }

    /**
     * 将从表中查询的开课任务书对象集合进行编码，组成初始基因
     * 编码规则为：是否固定+班级编号+教师编号+课程编号+课程属性+开课时间
     * 其中如果是否固定为否则开课时间默认填充为"00"
     *
     * @param classTaskList
     * @return List<String>
     */
    private List<Map<String, List<String>>> coding(List<ClassTask> classTaskList) {
        List<Map<String, List<String>>> geneList = new ArrayList<>();
        Map<String, List<String>> geneListMap = new HashMap<>();
        List<String> unFixedTimeGeneList = new ArrayList<>();//不固定时间的编码基因组
        List<String> isFixedTimeGeneList = new ArrayList<>();//固定时间的编码基因组
        for (ClassTask classTask : classTaskList) {
            //根据isFix的值判断是否固定，为1则不固定classTime默认填充”00“
            if (classTask.getIsfix().equals("1")) {
                //计算一周的上课次数，一次对应一个基因，2次对应两个基因。依此类推
                int size = classTask.getWeeksnumber() / 2;
                for (int i = 0; i < size; i++) {
                    String gene = classTask.getIsfix() + classTask.getCollegeno() + classTask.getClassno() + classTask.getTeacherno() + classTask.getCourseno() + classTask.getCourseattr() + ConstantInfo.DEFAULT_CLASS_TIME;
                    unFixedTimeGeneList.add(gene);
                }
            }
            //isFix的值为2则classTime有值，需要对classTime的值进行切割
            if (classTask.getIsfix().equals("2")) {
                int size = classTask.getWeeksnumber() / 2;
                for (int i = 0; i < size; i++) {
                    String classTime = classTask.getClasstime().substring(i * 2, (i + 1) * 2);
                    String gene = classTask.getIsfix() + classTask.getCollegeno() + classTask.getClassno() + classTask.getTeacherno() + classTask.getCourseno() + classTask.getCourseattr() + classTime;
                    isFixedTimeGeneList.add(gene);
                }
            }
        }
        geneListMap.put(UNFIXED_TIME, unFixedTimeGeneList);
        geneListMap.put(IS_FIXED_TIME, isFixedTimeGeneList);
        geneList.add(geneListMap);
        return geneList;
    }

    //获取基因数组为基因分配时间，完成完整版的基因编码
    private List<String> codingTime(List<Map<String, List<String>>> geneList) {
        List<String> resultGeneList = new ArrayList<>();
        List<String> isFixedTimeGeneList = geneList.get(0).get(IS_FIXED_TIME);
        List<String> unFixedTimeGeneList = geneList.get(0).get(UNFIXED_TIME);
        resultGeneList.addAll(isFixedTimeGeneList);//已经固定时间的编码时间已经排好，不需要再排
        //时间不固定的基因由程序进行随机分配
        for (String gene : unFixedTimeGeneList) {
            //获取一个不重复的时间片值
            String classTime = ClassSchedulUtil.randomTime(gene, resultGeneList);
            gene = gene.substring(0, 29) + classTime;
            resultGeneList.add(gene);
        }
        return resultGeneList;
    }


    //解决冲突，同一时间一个教师上多门课的冲突
    private List<String> conflictResolution(List<String> resultGeneList) {
        exit:
        for (int i = 0; i < resultGeneList.size(); ++i) {
            String gene = resultGeneList.get(i);
            String teacherNo = ClassSchedulUtil.cutGene(ConstantInfo.TEACHER_NO, gene);
            String classTime = ClassSchedulUtil.cutGene(ConstantInfo.CLASS_TIME, gene);
            for (int j = i + 1; j < resultGeneList.size(); ++j) {
                String tempGene = resultGeneList.get(j);
                String tempTeacherNo = ClassSchedulUtil.cutGene(ConstantInfo.TEACHER_NO, tempGene);
                String tempClassTime = ClassSchedulUtil.cutGene(ConstantInfo.CLASS_TIME, tempGene);
                if (teacherNo.equals(tempTeacherNo) && classTime.equals(tempClassTime)) {
                    String newClassTime = ClassSchedulUtil.randomTime(gene, resultGeneList);
                    gene = gene.substring(0, 29) + newClassTime;
                    continue exit;
                }

            }
        }
        return resultGeneList;
    }


    //判断冲突，同一时间是否存在同一教师上多门课的情况
    public String positionConflict(List<String> resultGeneList) {

        for (int i = 0; i < resultGeneList.size(); ++i) {
            String gene = resultGeneList.get(i);
            String teacherNo = ClassSchedulUtil.cutGene(ConstantInfo.TEACHER_NO, gene);
            String classTime = ClassSchedulUtil.cutGene(ConstantInfo.CLASS_TIME, gene);
            for (int j = i + 1; j < resultGeneList.size(); ++j) {
                String tempGene = resultGeneList.get(j);
                String tempTeacherNo = ClassSchedulUtil.cutGene(ConstantInfo.TEACHER_NO, tempGene);
                String tempClassTime = ClassSchedulUtil.cutGene(ConstantInfo.CLASS_TIME, tempGene);
                if (teacherNo.equals(tempTeacherNo) && classTime.equals(tempClassTime)) {
                    return gene;
                }

            }
        }
        return "没有冲突没有冲突";
    }

    //完成整个种群的交叉操作
    private Map<String, List<String>> hybridization(Map<String, List<String>> individualMap) {
        for (String classNo : individualMap.keySet()) {
            List<String> individualList = individualMap.get(classNo);
            List<String> oldIndividualList = individualList;
            individualList = selectiveGene(individualList);//进行基因的交叉操作生成新个体
            //对父代的适应度值和新生成的子代适应值进行对比，选择适应度值高的一个进入下一代的遗传
            if (ClassSchedulUtil.alculateExpectedValue(individualList) >= ClassSchedulUtil.alculateExpectedValue(oldIndividualList)) {
                individualMap.put(classNo, individualList);
            } else {
                individualMap.put(classNo, oldIndividualList);
            }

        }
        return individualMap;
    }

    //个体间的随机选择两条基因准备进行杂交并生成一个新个体
    private List<String> selectiveGene(List<String> individualList) {
        int min = 0;
        int max = individualList.size() - 1;
        boolean flag;
        do {
            //随机生成0到individualList.size - 1的两个数，用来选取基因
            int firstTemp = min + (int) (Math.random() * (max + 1 - min));//选取第一个随机数
            int secondTemp = min + (int) (Math.random() * (max + 1 - min));//选取第二个随机数
            String firstGene = individualList.get(firstTemp);//获取第一条基因
            String secondGene = individualList.get(secondTemp);//获取第二条基因
            //判断选择的两个随机数为否相同，确保不会选择同一条基因进行交叉操作
            if (firstTemp == secondTemp) {
                flag = false;
            } else if (ClassSchedulUtil.cutGene(ConstantInfo.IS_FIX, firstGene).equals("2") || ClassSchedulUtil.cutGene(ConstantInfo.IS_FIX, secondGene).equals("2")) {
                //判断选择的两条基因对应的时间值是否固定，如果固定则重新选择两条
                flag = false;
            } else {
                //分别获取所选的两条基因的时间片值
                String firstClassTime = ClassSchedulUtil.cutGene(ConstantInfo.CLASS_TIME, firstGene);
                String secondClassTime = ClassSchedulUtil.cutGene(ConstantInfo.CLASS_TIME, secondGene);
                //将它们的时间进行交换
                firstGene = firstGene.substring(0, 29) + secondClassTime;
                secondGene = secondGene.substring(0, 29) + firstClassTime;
                //对原有的基因进行移除，然后将交换过时间的两条基因添加进去
                individualList.remove(firstTemp);
                individualList.add(firstTemp, firstGene);
                individualList.remove(secondTemp);
                individualList.add(secondTemp, secondGene);
                flag = true;
            }
        } while (!flag);
        return individualList;
    }

    //将分割好的个体（按班级分好的初始课表）重新合拢在一起，方便进行冲突检测
    private List<String> closedGene(Map<String, List<String>> individualMap) {
        List<String> resultGeneList = new ArrayList<>();
        for (List<String> individualList : individualMap.values()) {
            resultGeneList.addAll(individualList);
        }
        return resultGeneList;
    }

    //基因变异操作
    private List<String> geneticMutation(List<String> resultGeneList) {
        int min = 0;
        int max = resultGeneList.size() - 1;
        double mutationRate = 0.01;//变异概率
        int mutationNumber = (int) (resultGeneList.size() * mutationRate);//每一代所要选取的变异个数,计算公式为基因数量*变异率
        if (mutationNumber < 1) {
            mutationNumber = 1;
        }
        for (int i = 0; i < mutationNumber; ) {
            int temp = min + (int) (Math.random() * (max + 1 - min));//生成随机数
            String gene = resultGeneList.get(temp);
            if (ClassSchedulUtil.cutGene(ConstantInfo.IS_FIX, gene).equals("2")) {
                break;
            } else {
                String newClassTime = ClassSchedulUtil.randomTime(gene, resultGeneList);
                gene = gene.substring(0, 29) + newClassTime;
                resultGeneList.remove(temp);
                resultGeneList.add(temp, gene);
                i = i + 1;
            }

        }
        return resultGeneList;
    }

    @Override
    //开始遗传进化操作
    public Map<String, List<String>> geneticEvolution(Map<String, List<String>> individualMap) {
        int generation = ConstantInfo.GENERATION;//进化代数设为100
        List<String> resultGeneList;
        for (int i = 0; i < generation; ++i) {
            //第一步完成交叉操作,产生新一代的父本
            individualMap = hybridization(individualMap);
            //第二步合拢个体准备变异
            closedGene(individualMap);
            //第三步开始变异
            resultGeneList = geneticMutation(closedGene(individualMap));
            //第四步进行冲突检测并消除
            conflictResolution(resultGeneList);
            //第五步将冲突消除后的个体再次进行分割，按班级进行分配准备进入下一次的进化
            individualMap = transformIndividual(conflictResolution(resultGeneList));

        }
        return individualMap;
    }

    @Override
    //准备开始分配教室
    public List<String> finalResult(Map<String, List<String>> individualMap) {
        List<String> resultList = new ArrayList<>();//用来存放结果（加上教室编号的基因）
        List<String> resultGeneList = closedGene(individualMap);//合拢个体
        String classroomNo;//教室编号
        List<String> collegeNoList = classTaskDao.selectByColumnName(ConstantInfo.COLLEGE_NO);//学院编号集合
        Map<String,List<String>> map = geneByCollege(resultGeneList,collegeNoList);//将基因按学院分配
        for (String collegeNo : map.keySet()) {
            String teachBuildNo = locationInfoDao.selectBuildNo(collegeNo);//根据教务处划分的教学区域，查询学院对应的教学楼编号
            List<String> tempResultGeneList = map.get(collegeNo);//根据学院编号查询出该学院下的基因准备开始安排教室
            //根据教学楼编号查询出该教学楼下所有的教室来进行随机分配
            List<ClassroomLocation> classroomLocationList = classroomLocationDao.selectByTeachBuildNo(teachBuildNo);
            for (String gene : tempResultGeneList) {
                classroomNo = assignClassroom(gene, classroomLocationList, resultList);
                gene = gene + classroomNo;
                resultList.add(gene);
            }
        }

        return resultList;
    }
    //将基因集合按学院分配
    private Map<String,List<String>> geneByCollege(List<String> resultGeneList,List<String> collegeNoList){
        Map<String,List<String>> map = new HashMap<>();
        for(String collegeNo : collegeNoList){
            List<String> geneList = new ArrayList<>();
            for(String gene : resultGeneList){
                if(ClassSchedulUtil.cutGene(ConstantInfo.COLLEGE_NO,gene).equals(collegeNo)){
                    geneList.add(gene);
                }
            }
            if(geneList.size() > 0){
            map.put(collegeNo,geneList);
            }
        }
        return map;
    }
    @Override
    public String assignClassroom(String gene, List<ClassroomLocation> classroomLocationList, List<String> resultList) {
        List<ClassroomLocation> sportsBuildingInfo = classroomLocationDao.selectByTeachBuildNo("08");//体育大楼
        List<ClassroomLocation> experimentalBuildingInfo = classroomLocationDao.selectByTeachBuildNo("09");//实验大楼
        List<ClassroomLocation> medicalBuildingInfo = classroomLocationDao.selectByTeachBuildNo("10");//医学实验大楼

        String classNo = ClassSchedulUtil.cutGene(ConstantInfo.CLASS_NO, gene);
        int studentNumber = classInfoDao.selectStudentNumber(classNo);
        String courseAttr = ClassSchedulUtil.cutGene(ConstantInfo.COURSE_ATTR, gene);
        //如果课程属性是"03"表示体育课，从体育楼里选择一个教室
        if (courseAttr.equals(ConstantInfo.PHYSICAL_CODE)) {
            return chooseClassroom(studentNumber, gene, sportsBuildingInfo, resultList);
        } else if (courseAttr.equals(ConstantInfo.ELECTRICITY_CODE) || courseAttr.equals(ConstantInfo.COMPUTER_CODE) || courseAttr.equals(ConstantInfo.PHYSICAL_EXPERIMENT_CODE)) {
            //如果课程属性是"08"、"10"、"12"表示电子实验课、计算机实验课、物理实验课则需要在实验楼里选择一个教室
            return chooseClassroom(studentNumber, gene, experimentalBuildingInfo, resultList);
        } else if (courseAttr.equals(ConstantInfo.MEDICAL_CODE)) {
            //如果课程属性是"04"表示医学实验课，需要从医学楼里选择一个教室
            return chooseClassroom(studentNumber, gene, medicalBuildingInfo, resultList);
        } else {
            //理论实验课码值以及其他特殊的码值，不需要在特殊的教学楼里分配。由教务处指定的楼已经可以直接获取
            return chooseClassroom(studentNumber, gene, classroomLocationList, resultList);
        }

    }

    //选择教室
    private String chooseClassroom(int studentNumber, String gene, List<ClassroomLocation> classroomLocationList, List<String> resultList) {
        int min = 0;
        int max = classroomLocationList.size() - 1;
        int temp = min + (int) (Math.random() * (max + 1 - min));//生成一个随机数，用来选取一个教室
        ClassroomLocation classroomLocation = classroomLocationList.get(temp);
        if (judgingClassroom(studentNumber, gene, classroomLocation, resultList)) {
            return classroomLocation.getClassroomno();
        } else {
            return chooseClassroom(studentNumber, gene, classroomLocationList, resultList);
        }
    }

    //判断教室是否符合要求，教室属性和课程属性是否对应、教室容量是否大于学生上课人数
    private Boolean judgingClassroom(int studentNumber, String gene, ClassroomLocation classroomLocation, List<String> resultList) {
        String courseAttr = ClassSchedulUtil.cutGene(ConstantInfo.COURSE_ATTR, gene);
        //如果课程属性是"01"或者"02"则表示是理论课教室，则教室属性为"01"即可
        if (courseAttr.equals(ConstantInfo.PROFESSIONAL_CODE) || courseAttr.equals(ConstantInfo.ELECTIVE_CODE)) {
            //课程属性"01"或者"02"同时教室属性为"01"
            if (classroomLocation.getClassroomattr().equals("01")) {
                //教室容量大于学上课人数
                if (studentNumber <= classroomLocation.getCapacity()) {
                    //判断教室上课时间是否重复
                    return isRedundant(gene, resultList, classroomLocation);
                } else {
                    return false;
                }
            } else {
                return false;
            }
        } else {
            //如果课程属性不为"01或者"02"则课程属性和教室属性一一对应
            if (ClassSchedulUtil.cutGene(ConstantInfo.COURSE_ATTR, gene).equals(classroomLocation.getClassroomattr())) {
                //教室容量大于学生容量
                if (studentNumber <= classroomLocation.getCapacity()) {
                    //判断教室上课时间是否重复
                    return isRedundant(gene, resultList, classroomLocation);
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

    }

    //判断在同一时间片是否有同时两个班级在同一个教室上课
    private Boolean isRedundant(String gene, List<String> resultList, ClassroomLocation classroomLocation) {
        //当教室还没有开始分配时，第一个分配的班级可以随意分配教室而不会重复
        if (resultList.size() == 0) {
            return true;
        } else {
            for (String resultGene : resultList) {
                //如果分配的教室已经在之前分配了则需要去判断时间是否有冲突
                if (ClassSchedulUtil.cutGene(ConstantInfo.CLASSROOM_NO, resultGene).equals(classroomLocation.getClassroomno())) {
                    //如果时间一样的话测表示有冲突
                    if (ClassSchedulUtil.cutGene(ConstantInfo.CLASS_TIME, gene).equals(ClassSchedulUtil.cutGene(ConstantInfo.CLASS_TIME, resultGene))) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    //开始解码，将基因字符串解码为对象
    private List<CoursePlan> decoding(List<String> resultList) {
        List<CoursePlan> coursePlanList = new ArrayList<>();
        for (String gene : resultList) {
            CoursePlan coursePlan = new CoursePlan();
            coursePlan.setCollegeno(ClassSchedulUtil.cutGene(ConstantInfo.COLLEGE_NO, gene));
            coursePlan.setClassno(ClassSchedulUtil.cutGene(ConstantInfo.CLASS_NO, gene));
            coursePlan.setCourseno(ClassSchedulUtil.cutGene(ConstantInfo.COURSE_NO, gene));
            coursePlan.setTeacherno(ClassSchedulUtil.cutGene(ConstantInfo.TEACHER_NO, gene));
            coursePlan.setClassroomno(ClassSchedulUtil.cutGene(ConstantInfo.CLASSROOM_NO, gene));
            coursePlan.setClasstime(ClassSchedulUtil.cutGene(ConstantInfo.CLASS_TIME, gene));
            coursePlanList.add(coursePlan);

        }
        return coursePlanList;
    }
}
