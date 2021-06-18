package com.dao;

import com.entity.LogStatus;

import java.util.List;

public class TestDAO {
    public static void main(String[] args) {
        CheckLogDAO checkLogDAO =  new CheckLogDAO();
        List<LogStatus> list = checkLogDAO.readLogStatus();
        System.out.println(list.get(0).getName());
    }
}
