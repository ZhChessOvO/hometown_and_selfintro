package com.servlet;

import com.dao.CurrentReplyDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ServletSetReply", value = "/ServletSetReply")
public class ServletSetReply extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = new Integer(request.getParameter("idbox"));
        CurrentReplyDAO currentReplyDAO = new CurrentReplyDAO();
        currentReplyDAO.setCurrentReply(id);
        response.sendRedirect("/myWeb_war_exploded/messageBoard.jsp");
    }
}
