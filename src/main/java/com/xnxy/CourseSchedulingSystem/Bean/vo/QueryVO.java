package com.xnxy.CourseSchedulingSystem.Bean.vo;
import java.util.Map;

public class QueryVO {
    private Map<String,String> param;
    private Map<String,Integer> pageParam;
    private String condition;
    private String collegeno;
    private String semester;


    public Map<String, String> getParam() {
        return param;
    }

    public void setParam(Map<String, String> param) {
        this.param = param;
    }

    public String getCondition() {
        return condition;
    }

    public void setCondition(String condition) {
        this.condition = condition;
    }

    public String getCollegeno() {
        return collegeno;
    }

    public void setCollegeno(String collegeno) {
        this.collegeno = collegeno;
    }

    public Map<String, Integer> getPageParam() {
        return pageParam;
    }

    public void setPageParam(Map<String, Integer> pageParam) {
            this.pageParam = pageParam;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }
}
