package com.lanou.entity.pojo.others;


public class News {

  private long id;
  private String title;
  private String cover;
  private String content;
  private java.sql.Timestamp create;
  private long author;
  private long rank;
  private long status;
  private String notes;


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }


  public String getCover() {
    return cover;
  }

  public void setCover(String cover) {
    this.cover = cover;
  }


  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }


  public java.sql.Timestamp getCreate() {
    return create;
  }

  public void setCreate(java.sql.Timestamp create) {
    this.create = create;
  }

  public long getAuthor() {
    return author;
  }

  public void setAuthor(long author) {
    this.author = author;
  }

  public long getRank() {
    return rank;
  }

  public void setRank(long rank) {
    this.rank = rank;
  }


  public long getStatus() {
    return status;
  }

  public void setStatus(long status) {
    this.status = status;
  }


  public String getNotes() {
    return notes;
  }

  public void setNotes(String notes) {
    this.notes = notes;
  }

}
