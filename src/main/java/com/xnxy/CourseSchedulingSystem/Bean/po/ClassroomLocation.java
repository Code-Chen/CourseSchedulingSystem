package com.xnxy.CourseSchedulingSystem.Bean.po;

public class ClassroomLocation {
    private Long id;

    private String teachbuildno;

    private String classroomno;

    private Integer capacity;

    private String classroomattr;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTeachbuildno() {
        return teachbuildno;
    }

    public void setTeachbuildno(String teachbuildno) {
        this.teachbuildno = teachbuildno;
    }

    public String getClassroomno() {
        return classroomno;
    }

    public void setClassroomno(String classroomno) {
        this.classroomno = classroomno;
    }

    public Integer getCapacity() {
        return capacity;
    }

    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }

    public String getClassroomattr() {
        return classroomattr;
    }

    public void setClassroomattr(String classroomattr) {
        this.classroomattr = classroomattr;
    }
}