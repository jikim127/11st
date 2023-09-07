package com.example.ourproject.controller.action;

import com.example.ourproject.VO.QAVO;
import com.example.ourproject.dao.DAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class boardUpdateAction implements Action {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        QAVO vo = new QAVO();
        vo.setNo(Integer.parseInt(request.getParameter("no")));
        vo.setSeq(Integer.parseInt(request.getParameter("seq")));
        vo.setId(request.getParameter("id"));
        vo.setPass(request.getParameter("pass"));
        vo.setTitle(request.getParameter("title"));
        vo.setContent(request.getParameter("content"));

        DAO Dao = DAO.getInstance();
        Dao.updateBoard(vo);

    }
}
