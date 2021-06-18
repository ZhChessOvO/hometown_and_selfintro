package com.servlet;

import com.dao.CheckLogDAO;
import com.dao.CommentDAO;
import com.dao.ReplyDAO;
import com.entity.Comment;
import com.entity.LogStatus;
import com.entity.Reply;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletMessage", value = "/ServletMessage")
public class ServletMessage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //删除留言
        int id = new Integer(request.getParameter("deleteId"));
        CommentDAO commentDAO = new CommentDAO();
        commentDAO.deleteComment(id);

        //删除相关回复
        ReplyDAO replyDAO = new ReplyDAO();
        List<Reply> replyList = replyDAO.readReply();
        for(Reply r:replyList){
            if(r.getRe()==id){
                replyDAO.deleteReply(r.getId());
            }
        }


        response.sendRedirect("/myWeb_war_exploded/messageBoard.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //添加留言
        CommentDAO commentDAO = new CommentDAO();
        List<Comment> commentList = commentDAO.readComment();
        int id = commentList.get(commentList.size() - 1).getId() + 1;

        CheckLogDAO checkLogDAO = new CheckLogDAO();
        List<LogStatus> logStatusList = checkLogDAO.readLogStatus();
        String user = logStatusList.get(0).getName();

        String content = new String(request.getParameter("content").getBytes("iso-8859-1"), "utf-8");

        commentDAO.addComment(id, user, content);

        response.sendRedirect("/myWeb_war_exploded/messageBoard.jsp");

    }
}
