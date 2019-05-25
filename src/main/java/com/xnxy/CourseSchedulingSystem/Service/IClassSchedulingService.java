package com.xnxy.CourseSchedulingSystem.Service;

import com.xnxy.CourseSchedulingSystem.Bean.po.ClassTask;
import com.xnxy.CourseSchedulingSystem.Bean.po.ClassroomLocation;

import java.util.List;
import java.util.Map;

public interface IClassSchedulingService {
     Boolean classScheduling(ClassTask classTask);
     Map<String,List<String>> transformIndividual(List<String> resultGeneList);
     Map<String, List<String>> geneticEvolution(Map<String, List<String>> individualMap);
     List<String> finalResult(Map<String,List<String>> individualMap);
     String assignClassroom(String gene, List<ClassroomLocation> classroomLocationList, List<String> resultList);
}
