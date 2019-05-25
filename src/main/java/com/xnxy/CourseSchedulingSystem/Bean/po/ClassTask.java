package com.xnxy.CourseSchedulingSystem.Bean.po;

public class ClassTask {
    private Long id;

    private String semester;

    private String collegeno;

    private String classno;

    private String courseno;

    private String teacherno;

    private String courseattr;

    private Integer studentnumber;

    private Integer weekssum;

    private Integer weeksnumber;

    private String isfix;

    private String classtime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    public String getCollegeno() {
        return collegeno;
    }

    public void setCollegeno(String collegeno) {
        this.collegeno = collegeno;
    }

    public String getClassno() {
        return classno;
    }

    public void setClassno(String classno) {
        this.classno = classno;
    }

    public String getCourseno() {
        return courseno;
    }

    public void setCourseno(String courseno) {
        this.courseno = courseno;
    }

    public String getTeacherno() {
        return teacherno;
    }

    public void setTeacherno(String teacherno) {
        this.teacherno = teacherno;
    }

    public String getCourseattr() {
        return courseattr;
    }

    public void setCourseattr(String courseattr) {
        this.courseattr = courseattr;
    }

    public Integer getStudentnumber() {
        return studentnumber;
    }

    public void setStudentnumber(Integer studentnumber) {
        this.studentnumber = studentnumber;
    }

    public Integer getWeekssum() {
        return weekssum;
    }

    public void setWeekssum(Integer weekssum) {
        this.weekssum = weekssum;
    }

    public Integer getWeeksnumber() {
        return weeksnumber;
    }

    public void setWeeksnumber(Integer weeksnumber) {
        this.weeksnumber = weeksnumber;
    }

    public String getIsfix() {
        return isfix;
    }

    public void setIsfix(String isfix) {
        this.isfix = isfix;
    }

    public String getClasstime() {
        return classtime;
    }

    public void setClasstime(String classtime) {
        this.classtime = classtime;
    }
}