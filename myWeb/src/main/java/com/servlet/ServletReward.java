package com.servlet;

import com.dao.RewardDAO;
import com.entity.Reward;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletReward", value = "/ServletReward")
public class ServletReward extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = new Integer(request.getParameter("deleteId"));
        RewardDAO dao = new RewardDAO();
        dao.deleteReward(id);
        response.sendRedirect("/myWeb_war_exploded/reward.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = new Integer(request.getParameter("editId"));
        String name = new String(request.getParameter("name").getBytes("iso-8859-1"), "utf-8");
        String level = new String(request.getParameter("level").getBytes("iso-8859-1"), "utf-8");
//        System.out.println(name+" "+status);
        RewardDAO dao = new RewardDAO();
        List<Reward> list = dao.readReward();
        boolean flag = false; //还没有指定id的内容
        for (Reward s : list) {
//            System.out.println(s.getId());
            if (s.getId() == id) {
                flag = true;
                break;
            }
        }
        if (flag) { //编辑
            dao.editReward(id, name, level);
        } else { //添加
            dao.addReward(id, name, level);
        }
        response.sendRedirect("/myWeb_war_exploded/reward.jsp");
    }
}
