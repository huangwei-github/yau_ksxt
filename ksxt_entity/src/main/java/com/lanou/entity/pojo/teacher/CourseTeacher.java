package com.lanou.entity.pojo.teacher;


public class CourseTeacher {

  private long id;
  private long course;
  private long teacher;
  private String notes;


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public long getCourse() {
    return course;
  }

  public void setCourse(long course) {
    this.course = course;
  }


  public long getTeacher() {
    return teacher;
  }

  public void setTeacher(long teacher) {
    this.teacher = teacher;
  }


  public String getNotes() {
    return notes;
  }

  public void setNotes(String notes) {
    this.notes = notes;
  }

}
