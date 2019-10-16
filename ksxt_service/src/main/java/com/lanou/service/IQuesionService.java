package com.lanou.service;

import com.lanou.util.GException;

import java.io.File;


public interface IQuesionService {


    void createSelection(File file) throws GException;

    void createSubjection(File file) throws GException;

    void createOnline(File file) throws GException;



}
