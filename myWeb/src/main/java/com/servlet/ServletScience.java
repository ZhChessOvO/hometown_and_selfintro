package com.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

import com.dao.ScienceDAO;
import com.entity.Science;

@WebServlet(name = "ServletScience", value = "/ServletScience")
public class ServletScience extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = new Integer(request.getParameter("deleteId"));
        ScienceDAO dao = new ScienceDAO();
        dao.deleteScience(id);
        response.sendRedirect("/myWeb_war_exploded/science.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = new Integer(request.getParameter("editId"));
        String name = new String(request.getParameter("name").getBytes("iso-8859-1"), "utf-8");
        String status = new String(request.getParameter("status").getBytes("iso-8859-1"), "utf-8");
        System.out.println(name+" "+status);
        ScienceDAO dao = new ScienceDAO();
        List<Science> list = dao.readScience();
        boolean flag = false; //还没有指定id的内容
        for(Science s:list){
//            System.out.println(s.getId());
            if(s.getId()==id){
                flag = true;
                break;
            }
        }
        if(flag){ //编辑
            dao.editScience(id,name,status);
        }else{ //添加
            dao.addScience(id,name,status);
        }
        response.sendRedirect("/myWeb_war_exploded/science.jsp");
    }
}
