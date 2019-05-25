package com.xnxy.CourseSchedulingSystem.Util;

import com.xnxy.CourseSchedulingSystem.Bean.vo.ConstantInfo;
import org.apache.commons.lang3.ArrayUtils;
import java.util.*;

public class ClassSchedulUtil {

    public static String cutGene(String aim, String source) {
        switch (aim) {
            case ConstantInfo.IS_FIX:
                return source.substring(0, 1);
            case ConstantInfo.COLLEGE_NO:
                return source.substring(1,3);
            case ConstantInfo.CLASS_NO:
                return source.substring(3, 13);
            case ConstantInfo.TEACHER_NO:
                return source.substring(13, 21);
            case ConstantInfo.COURSE_NO:
                return source.substring(21, 27);
            case ConstantInfo.COURSE_ATTR:
                return source.substring(27, 29);
            case ConstantInfo.CLASS_TIME:
                return source.substring(29, 31);
            case ConstantInfo.CLASSROOM_NO:
                return source.substring(31);
            default:
                return "";
        }
    }

    //判断同一个班是否在同一时间内上课有重复
    private static Boolean isTimeRepe(String time, String gene, List<String> geneList) {
        //获得班级编号
        String classNo = cutGene(ConstantInfo.CLASS_NO, gene);
        for (String str : geneList) {
            //判断班级编号是否相等
            if (classNo.equals(cutGene(ConstantInfo.CLASS_NO, str))) {
                //班级编号相等的则判断时间是否有重复，没有返回true
                String classTime = cutGene(ConstantInfo.CLASS_TIME, str);
                if (time.equals(classTime)) {
                    return false;
                }
            }
        }
        return true;
    }

    //随机生成时间片
    public static String randomTime(String gene, List<String> geneList) {
        int min = 1;
        int max = 25;
        String time;
        //随机生成1到25范围的数字，并将其转化为字符串，方便进行编码
        int temp = min + (int) (Math.random() * (max + 1 - min));
        if (temp < 10) {
            time = "0" + temp;
        } else {
            time = "" + temp;
        }
        if (isTimeRepe(time, gene, geneList)) {
            return time;
        } else {
            return randomTime(gene, geneList);
        }
    }

    //计算专业课期望值
    private static int calculateProfessExpect(String classTime) {
        String[] tenExpectValue = {"01", "06", "11", "16", "21"};//专业课期望值为10时的时间片值
        String[] eightExpectValue = {"02", "07", "12", "17", "22"};//专业课期望值为8时的时间片值
        String[] fourExpectValue = {"03", "08", "13", "18", "23"};//专业课期望值为4时的时间片值
        String[] twoExpectValue = {"04", "09", "14", "19", "24"};//专业课期望值为2时的时间片值
        //String [] zeroExpectValue = {"05","10","15","20","25"};//专业课期望值为0时的时间片值

        if (ArrayUtils.contains(tenExpectValue, classTime)) {
            return 10;
        } else if (ArrayUtils.contains(eightExpectValue, classTime)) {
            return 8;
        } else if (ArrayUtils.contains(fourExpectValue, classTime)) {
            return 4;
        } else if (ArrayUtils.contains(twoExpectValue, classTime)) {
            return 2;
        } else {
            return 0;
        }
    }

    //计算选修课期望值
    private static int calculateElectiveExpect(String classTime) {
        String[] tenExpectValue = {"03", "08", "13", "18", "23"};//选修期望值为10时的时间片值
        String[] eightExpectValue = {"02", "07", "12", "17", "22"};//选修课期望值为8时的时间片值
        String[] fourExpectValue = {"01", "04", "06", "09", "11", "16", "19", "21", "24"};//选修课期望值为4时的时间片值
        //String [] zeroExpectValue = {"05","10","15","20","25"};//选修课期望值为0时的时间片值

        if (ArrayUtils.contains(tenExpectValue, classTime)) {
            return 10;
        } else if (ArrayUtils.contains(eightExpectValue, classTime)) {
            return 8;
        } else if (ArrayUtils.contains(fourExpectValue, classTime)) {
            return 4;
        } else {
            return 0;
        }
    }

    //计算体育课期望值
    private static int calculatePhysicalExpect(String classTime) {
        String[] tenExpectValue = {"04", "09", "14", "19"};//体育课期望值为10时的时间片值
        String[] eightExpectValue = {"03", "08", "13", "18"};//体育课期望值为8时的时间片值
        String[] fourExpectValue = {"02", "07", "12", "17", "22"};//体育课期望值为4时的时间片值
        //String [] zeroExpectValue = {"01","05","06","10","11","15","16","20","21","23","24","25"};//体育课期望值为0时的时间片值

        if (ArrayUtils.contains(tenExpectValue, classTime)) {
            return 10;
        } else if (ArrayUtils.contains(eightExpectValue, classTime)) {
            return 8;
        } else if (ArrayUtils.contains(fourExpectValue, classTime)) {
            return 4;
        } else {
            return 0;
        }
    }

    //计算实验课期望值
    private static int calculateExperimentExpect(String classTime) {
        String[] tenExpectValue = {"04", "09", "14", "19"};//实验课期望值为10时的时间片值
        String[] eightExpectValue = {"05", "10", "15", "20", "25"};//实验课期望值为8时的时间片值
        String[] sixExpectValue = {"03", "08", "13", "18"};//实验课期望值为6时的时间片值
        String[] fourExpectValue = {"02", "07", "12", "17", "22"};//实验课期望值为4时的时间片值
        //String [] zeroExpectValue = {"01","06","11","16","21","23","24","25"};//实验课期望值为0时的时间片值

        if (ArrayUtils.contains(tenExpectValue, classTime)) {
            return 10;
        } else if (ArrayUtils.contains(eightExpectValue, classTime)) {
            return 8;
        } else if (ArrayUtils.contains(sixExpectValue, classTime)) {
            return 6;
        } else if (ArrayUtils.contains(fourExpectValue, classTime)) {
            return 4;
        } else {
            return 0;
        }
    }

    /**
     * 将一个个体（班级课表）的同一门课程的所有上课时间进行一个统计，并且进行一个分组
     *
     * @param individualList
     * @return
     */
    private static Map<String, List<String>> courseGrouping(List<String> individualList) {
        Map<String, List<String>> classTimeMap = new HashMap<>();
        //先将一个班级课表所上的课程区分出来（排除掉重复的课程）
        for (String gene : individualList) {
            classTimeMap.put(cutGene(ConstantInfo.COURSE_NO, gene), null);
        }
        //遍历课程
        for (String courseNo : classTimeMap.keySet()) {
            List<String> classTimeList = new ArrayList<>();
            for (String gene : individualList) {
                //获得同一门课程的所有上课时间片
                if (cutGene(ConstantInfo.COURSE_NO, gene).equals(courseNo)) {
                    classTimeList.add(cutGene(ConstantInfo.CLASS_TIME, gene));
                }
            }
            //将课程的时间片进行排序
            Collections.sort(classTimeList);
            classTimeMap.put(courseNo, classTimeList);
        }
        return classTimeMap;
    }

    //判断两课时间差在那个区间并返回对于的期望值
    private static int judgingDiscreteValues(int temp) {
        int[] tenExpectValue = {5, 6, 7, 8};//期望值为10时两课之间的时间差
        int[] sixExpectValue = {4, 9, 10, 11, 12, 13};//期望值为6时两课之间的时间差
        int[] fourExpectValue = {3, 14, 15, 16, 17, 18};//期望值为4时两课之间的时间差
        int[] twoExpectValue = {2, 19, 20, 21, 22, 23};//期望值为2时两课之间的时间差
        //int [] zeroExpectValue = {1,24};//期望值为0时两课之间的时间差
        if (ArrayUtils.contains(tenExpectValue, temp)) {
            return 10;
        } else if (ArrayUtils.contains(sixExpectValue, temp)) {
            return 6;
        } else if (ArrayUtils.contains(fourExpectValue, temp)) {
            return 4;
        } else if (ArrayUtils.contains(twoExpectValue, temp)) {
            return 2;
        } else {
            return 0;
        }
    }

    //计算课程离散度期望值
    private static int calculateDiscreteExpect(List<String> individualList) {
        int F5 = 0;//离散程度期望值
        Map<String, List<String>> classTimeMap = courseGrouping(individualList);
        for (List<String> classTimeList : classTimeMap.values()) {
            if (classTimeList.size() > 1) {
                for (int i = 0; i < classTimeList.size() -1 ; ++i) {
                    int temp = Integer.parseInt(classTimeList.get(++i)) - Integer.parseInt(classTimeList.get(i - 1));
                    F5 = F5 + judgingDiscreteValues(temp);
                }
            }
        }
        return F5;
    }

    //计算适应度值
    public static double alculateExpectedValue(List<String> individualList) {
        double K1 = 0.3;//专业课所占权重
        double K2 = 0.1;//选修课所占权重
        double K3 = 0.1;//体育课所占权重
        double K4 = 0.3;//实验课所占权重
        double K5 = 0.2;//课程离散程度所占权重
        int F1 = 0;//专业课期望总值
        int F2 = 0;//选修课期望总值
        int F3 = 0;//体育课期望总值
        int F4 = 0;//实验课期望总值
        int F5;//课程离散程度期望总值
        double Fx;//适应度值

        for (String gene : individualList) {
            String courseAttr = cutGene(ConstantInfo.COURSE_ATTR, gene);//获得属性
            String classTime = cutGene(ConstantInfo.CLASS_TIME, gene);//获得该课程的开课时间
            if (courseAttr.equals(ConstantInfo.PROFESSIONAL_CODE)) {
                F1 = F1 + calculateProfessExpect(classTime);
            } else if (courseAttr.equals(ConstantInfo.ELECTIVE_CODE)) {
                F2 = F2 + calculateElectiveExpect(classTime);
            } else if (courseAttr.equals(ConstantInfo.PHYSICAL_CODE)) {
                F3 = F3 + calculatePhysicalExpect(classTime);
            } else {
                F4 = F4 + calculateExperimentExpect(classTime);
            }
        }
        F5 = calculateDiscreteExpect(individualList);
        Fx = K1 * F1 + K2 * F2 + K3 * F3 + K4 * F4 + K5 * F5;
        return Fx;
    }


}
