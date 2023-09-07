package com.example.ourproject.controller.action;

import com.example.ourproject.VO.QAVO;
import com.example.ourproject.dao.DAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class boardConfirmAction implements Action {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int seq = Integer.parseInt(request.getParameter("seq"));
        String pass = request.getParameter("pass");
        String url = null;

        DAO Dao = DAO.getInstance();
        QAVO vo = Dao.selectOneBoardBySeq(seq);

        if(vo.getPass().equals(pass)){
            url = "confirmSuccess.jsp";
        }else{
            url = "boardConfirmForm.jsp";
            request.setAttribute("message","비밀번호가 틀립니다");
        }
        RequestDispatcher dis = request.getRequestDispatcher(url);
        dis.forward(request,response);
    }
}
