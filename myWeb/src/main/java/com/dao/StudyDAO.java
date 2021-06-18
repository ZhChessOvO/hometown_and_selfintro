package com.dao;

import com.entity.Science;
import com.entity.Study;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StudyDAO {
    public List readStudy() {
        List<Study> list = new ArrayList<>();
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
            String sql = "select * from study";
            psmt = con.prepareStatement(sql);
            rs = psmt.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String time = rs.getString("time");
                String name = rs.getString("name");
                int score = rs.getInt("score");
                float credit = rs.getFloat("credit");
                Study study = new Study(id, time, name, score, credit);
                list.add(study);
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

    public void addStudy(int id1, String time1, String name1, int score1, float credit1) {
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
            String sql = "insert into study values " +
                    "(" + id1 + ",'" + time1 + "','" + name1 + "'," + score1 + "," + credit1 + ")";
//            System.out.println(name1+" "+status1);
//            System.out.println(sql);
            psmt = con.prepareStatement(sql);
            psmt.executeUpdate();

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
    }

    public void editStudy(int id1, String time1, String name1, int score1, float credit1) {
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
            String sql = "update study " +
                    "set name='" + name1 + "',time='" + time1 + "', " +
                    "score=" + score1 + ", credit=" + credit1 +
                    " where id = " + id1;
//            System.out.println(sql);
            psmt = con.prepareStatement(sql);
            psmt.executeUpdate();

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
    }

    public void deleteStudy(int id1) {
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
            String sql = "delete from study" +
                    " where id = " + id1;
            psmt = con.prepareStatement(sql);
            psmt.executeUpdate();

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
    }
}
