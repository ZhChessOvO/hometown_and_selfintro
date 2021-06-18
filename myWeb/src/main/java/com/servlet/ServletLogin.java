package com.servlet;

import com.entity.LogStatus;
import com.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletLogin", value = "/ServletLogin")
public class ServletLogin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String realPassword = "0";
        String name = "未登录";

//        PrintWriter out = response.getWriter();

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
            String sql = "select * from user where email ='" + email + "'";
            psmt = con.prepareStatement(sql);
            rs = psmt.executeQuery();

            if (rs.next()) {
                realPassword = rs.getString("password");
                name = rs.getString("name");
                System.out.println("有数据"+realPassword+password);
            }

            if (realPassword.equals(password)) { //密码正确
                sql = "update logstatus set name='" + name + "'";
                psmt = con.prepareStatement(sql);
                psmt.executeUpdate();

                System.out.println("登录状态修改为"+name);


                response.sendRedirect("/myWeb_war_exploded/index.jsp");

            } else { //密码错误

                response.sendRedirect("/myWeb_war_exploded/login.jsp");
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
    }
}
