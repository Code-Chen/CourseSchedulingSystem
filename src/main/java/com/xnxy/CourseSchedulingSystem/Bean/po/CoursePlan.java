package com.xnxy.CourseSchedulingSystem.Bean.po;

public class CoursePlan {
    private Long id;

    private String collegeno;

    private String classno;

    private String courseno;

    private String teacherno;

    private String classroomno;

    private String classtime;

    private Integer weekssum;

    private String semester;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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

    public String getClassroomno() {
        return classroomno;
    }

    public void setClassroomno(String classroomno) {
        this.classroomno = classroomno;
    }

    public String getClasstime() {
        return classtime;
    }

    public void setClasstime(String classtime) {
        this.classtime = classtime;
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