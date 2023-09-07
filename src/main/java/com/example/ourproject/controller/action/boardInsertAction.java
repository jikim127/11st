package com.example.ourproject.controller.action;

import com.example.ourproject.VO.QAVO;
import com.example.ourproject.dao.DAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class boardInsertAction implements Action {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        QAVO vo = new QAVO();
        vo.setNo(Integer.parseInt(request.getParameter("no")));
        vo.setId(request.getParameter("id"));
        vo.setPass(request.getParameter("pass"));
        vo.setTitle(request.getParameter("title"));
        vo.setContent(request.getParameter("content"));

        DAO dao = DAO.getInstance();
        int result = dao.insertBoard(vo);
        //오픈윈도우 여기서 숨진채 발견되다...........

        //list로 가주라 new BoardListAction().execute(request,response);
//        response.sendRedirect("Servlet?command=productDetail&no=4");//list로 가주라2
    }
}
