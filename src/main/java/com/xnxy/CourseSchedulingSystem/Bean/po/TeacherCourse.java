package com.xnxy.CourseSchedulingSystem.Bean.po;

public class TeacherCourse {
    private Long id;

    private String teacherno;

    private String courseno;

    private String classno;

    private String classroomno;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTeacherno() {
        return teacherno;
    }

    public void setTeacherno(String teacherno) {
        this.teacherno = teacherno;
    }

    public String getCourseno() {
        return courseno;
    }

    public void setCourseno(String courseno) {
        this.courseno = courseno;
    }

    public String getClassno() {
        return classno;
    }

    public void setClassno(String classno) {
        this.classno = classno;
    }

    public String getClassroomno() {
        return classroomno;
    }

    public void setClassroomno(String classroomno) {
        this.classroomno = classroomno;
    }
}