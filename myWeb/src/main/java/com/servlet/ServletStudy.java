package com.servlet;

import com.dao.ScienceDAO;
import com.dao.StudyDAO;
import com.entity.Science;
import com.entity.Study;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletStudy", value = "/ServletStudy")
public class ServletStudy extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = new Integer(request.getParameter("deleteId"));
        StudyDAO dao = new StudyDAO();
        dao.deleteStudy(id);
        response.sendRedirect("/myWeb_war_exploded/study.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = new Integer(request.getParameter("editId"));
        String name = new String(request.getParameter("name").getBytes("iso-8859-1"), "utf-8");
        String time = new String(request.getParameter("time").getBytes("iso-8859-1"), "utf-8");
        int score = new Integer(request.getParameter("score"));
        float credit = new Float(request.getParameter("credit"));
//        System.out.println(name + " " + status);
        StudyDAO dao = new StudyDAO();
        List<Study> list = dao.readStudy();
        boolean flag = false; //还没有指定id的内容
        for (Study s : list) {
//            System.out.println(s.getId());
            if (s.getId() == id) {
                flag = true;
                break;
            }
        }
        if (flag) { //编辑
            dao.editStudy(id, time, name, score, credit);
        } else { //添加
            dao.addStudy(id, time, name, score, credit);
        }
        response.sendRedirect("/myWeb_war_exploded/study.jsp");
    }
}
