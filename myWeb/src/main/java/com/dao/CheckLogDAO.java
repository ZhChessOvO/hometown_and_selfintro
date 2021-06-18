package com.dao;

import com.entity.LogStatus;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CheckLogDAO {
    public List readLogStatus() {
        List<LogStatus> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hometown?serverTimezone=UTC", "root", "root");
            String sql = "select * from logstatus";
            psmt = con.prepareStatement(sql);
            rs = psmt.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                LogStatus logStatus = new LogStatus(name);
                list.add(logStatus);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (psmt != null) {
                    psmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }
}
