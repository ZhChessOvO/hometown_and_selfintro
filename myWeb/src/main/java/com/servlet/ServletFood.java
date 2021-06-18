package com.servlet;

import com.dao.FoodDAO;
import com.entity.Food;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletFood", value = "/ServletFood")
public class ServletFood extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = new Integer(request.getParameter("deleteId"));
        FoodDAO dao = new FoodDAO();
        dao.deleteFood(id);
        response.sendRedirect("/myWeb_war_exploded/food.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = new Integer(request.getParameter("editId"));
        String name = new String(request.getParameter("name").getBytes("iso-8859-1"), "utf-8");
        String info = new String(request.getParameter("info").getBytes("iso-8859-1"), "utf-8");
        String img = new String(request.getParameter("img").getBytes("iso-8859-1"), "utf-8");
        System.out.println(img+"路径");
        FoodDAO dao = new FoodDAO();
        List<Food> list = dao.readFood();
        boolean flag = false; //还没有指定id的内容
        for (Food s : list) {
//            System.out.println(s.getId());
            if (s.getId() == id) {
                flag = true;
                break;
            }
        }
        if (flag) { //编辑
            dao.editFood(id, name, info, img);
        } else { //添加
            dao.addFood(id, name, info, img);
        }
        response.sendRedirect("/myWeb_war_exploded/food.jsp");
    }
}
