package com.lanou.entity.dto;

import lombok.Data;

import java.util.Date;

@Data
public class NewsDto {

    private long id;

    private String title;

    private String cover;

    private String content;

    private Date create;

    private String author;

    private long rank;

}
