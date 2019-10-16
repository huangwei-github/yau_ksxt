package com.lanou.entity.pojo.exam;


public class Examination {

  private long teacher;
  private java.sql.Timestamp create;
  private long selection;
  private long online;
  private long subjective;


  public long getTeacher() {
    return teacher;
  }

  public void setTeacher(long teacher) {
    this.teacher = teacher;
  }


  public java.sql.Timestamp getCreate() {
    return create;
  }

  public void setCreate(java.sql.Timestamp create) {
    this.create = create;
  }


  public long getSelection() {
    return selection;
  }

  public void setSelection(long selection) {
    this.selection = selection;
  }


  public long getOnline() {
    return online;
  }

  public void setOnline(long online) {
    this.online = online;
  }


  public long getSubjective() {
    return subjective;
  }

  public void setSubjective(long subjective) {
    this.subjective = subjective;
  }

}
