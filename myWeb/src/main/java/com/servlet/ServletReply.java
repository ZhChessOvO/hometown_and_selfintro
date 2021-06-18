package com.servlet;

import com.dao.CheckLogDAO;
import com.dao.CurrentReplyDAO;
import com.dao.ReplyDAO;
import com.entity.CurrentReply;
import com.entity.LogStatus;
import com.entity.Reply;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletReply", value = "/ServletReply")
public class ServletReply extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ReplyDAO replyDAO = new ReplyDAO();
        List<Reply> replyList = replyDAO.readReply();
        int id = replyList.get(replyList.size() - 1).getId() + 1;

        CurrentReplyDAO currentReplyDAO = new CurrentReplyDAO();
        List<CurrentReply> currentReplyList = currentReplyDAO.readCurrentReply();
        int re = currentReplyList.get(0).getId();

        CheckLogDAO checkLogDAO = new CheckLogDAO();
        List<LogStatus> logStatusList = checkLogDAO.readLogStatus();
        String user = logStatusList.get(0).getName();

        String content = new String(request.getParameter("content").getBytes("iso-8859-1"), "utf-8");

        replyDAO.addReply(id, re, user, content);

        currentReplyDAO.setCurrentReply(0);

        response.sendRedirect("/myWeb_war_exploded/messageBoard.jsp");
    }
}
