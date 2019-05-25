package com.xnxy.CourseSchedulingSystem.Bean.vo;

public class TeachPlanVO {
    private Long id;
    private String classno;

    private String classname;

    private String courseno;

    private String courseName;

    private String collegeno;

    private Integer studentnumber;

    private String courseattr;

    private Integer classhour;

    private Integer weeksnumber;

    private Integer weekssum;

    private String semester;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getClassno() {
        return classno;
    }

    public void setClassno(String classno) {
        this.classno = classno;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public String getCourseno() {
        return courseno;
    }

    public void setCourseno(String courseno) {
        this.courseno = courseno;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCollegeno() {
        return collegeno;
    }

    public void setCollegeno(String collegeno) {
        this.collegeno = collegeno;
    }

    public Integer getStudentnumber() {
        return studentnumber;
    }

    public void setStudentnumber(Integer studentnumber) {
        this.studentnumber = studentnumber;
    }

    public String getCourseattr() {
        return courseattr;
    }

    public void setCourseattr(String courseattr) {
        this.courseattr = courseattr;
    }

    public Integer getClasshour() {
        return classhour;
    }

    public void setClasshour(Integer classhour) {
        this.classhour = classhour;
    }

    public Integer getWeeksnumber() {
        return weeksnumber;
    }

    public void setWeeksnumber(Integer weeksnumber) {
        this.weeksnumber = weeksnumber;
    }

    public Integer getWeekssum() {
        return weekssum;
    }

    public void setWeekssum(Integer weekssum) {
        this.weekssum = weekssum;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }
}
