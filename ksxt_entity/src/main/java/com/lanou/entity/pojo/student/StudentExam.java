package com.lanou.entity.pojo.student;


public class StudentExam {

  private long id;
  private long student;
  private long examination;
  private String selection;
  private String online;
  private String subjection;
  private long notes;


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


  public long getExamination() {
    return examination;
  }

  public void setExamination(long examination) {
    this.examination = examination;
  }


  public String getSelection() {
    return selection;
  }

  public void setSelection(String selection) {
    this.selection = selection;
  }


  public String getOnline() {
    return online;
  }

  public void setOnline(String online) {
    this.online = online;
  }


  public String getSubjection() {
    return subjection;
  }

  public void setSubjection(String subjection) {
    this.subjection = subjection;
  }


  public long getNotes() {
    return notes;
  }

  public void setNotes(long notes) {
    this.notes = notes;
  }

}
