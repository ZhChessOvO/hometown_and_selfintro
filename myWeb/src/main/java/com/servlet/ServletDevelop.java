package com.servlet;

import com.dao.DevelopDAO;
import com.dao.ScienceDAO;
import com.entity.Develop;
import com.entity.Science;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletDevelop", value = "/ServletDevelop")
public class ServletDevelop extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = new Integer(request.getParameter("deleteId"));
        DevelopDAO dao = new DevelopDAO();
        dao.deleteDevelop(id);
        response.sendRedirect("/myWeb_war_exploded/develop.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = new Integer(request.getParameter("editId"));
        String name = new String(request.getParameter("name").getBytes("iso-8859-1"), "utf-8");
        String level = new String(request.getParameter("level").getBytes("iso-8859-1"), "utf-8");
//        System.out.println(name+" "+status);
        DevelopDAO dao = new DevelopDAO();
        List<Develop> list = dao.readDevelop();
        boolean flag = false; //还没有指定id的内容
        for(Develop s:list){
//            System.out.println(s.getId());
            if(s.getId()==id){
                flag = true;
                break;
            }
        }
        if(flag){ //编辑
            dao.editDevelop(id,name,level);
        }else{ //添加
            dao.addDevelop(id,name,level);
        }
        response.sendRedirect("/myWeb_war_exploded/develop.jsp");
    }
}
