package com.lanou.entity.pojo.student;


public class StudentSchool {

  private long id;
  private long student;
  private long school;
  private long major;
  private long clazz;
  private String notes;


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public long getStudent() {
    return student;
  }

  public void setStudent(long student) {
    this.student = student;
  }


  public long getSchool() {
    return school;
  }

  public void setSchool(long school) {
    this.school = school;
  }


  public long getMajor() {
    return major;
  }

  public void setMajor(long major) {
    this.major = major;
  }


  public long getClazz() {
    return clazz;
  }

  public void setClazz(long clazz) {
    this.clazz = clazz;
  }


  public String getNotes() {
    return notes;
  }

  public void setNotes(String notes) {
    this.notes = notes;
  }

}
