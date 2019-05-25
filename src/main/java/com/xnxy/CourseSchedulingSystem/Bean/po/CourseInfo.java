package com.xnxy.CourseSchedulingSystem.Bean.po;

public class CourseInfo {
    private Long id;

    private String courseno;

    private String coursename;

    private String courseattr;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCourseno() {
        return courseno;
    }

    public void setCourseno(String courseno) {
        this.courseno = courseno;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public String getCourseattr() {
        return courseattr;
    }

    public void setCourseattr(String courseattr) {
        this.courseattr = courseattr;
    }
}