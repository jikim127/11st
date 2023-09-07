package com.example.ourproject.controller.action;

import com.example.ourproject.VO.QAVO;
import com.example.ourproject.dao.DAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class boardUpdateFormAction implements Action {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "boardUpdateForm.jsp";
        int seq = Integer.parseInt(request.getParameter("seq"));

        DAO Dao = DAO.getInstance();

        QAVO vo = Dao.selectOneBoardBySeq(seq);
        request.setAttribute("board",vo);

        RequestDispatcher dis = request.getRequestDispatcher(url);
        dis.forward(request,response);
    }
}
