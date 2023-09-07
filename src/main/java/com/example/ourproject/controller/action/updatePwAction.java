package com.example.ourproject.controller.action;

import com.example.ourproject.dao.DAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class updatePwAction implements Action {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "updatePw.jsp";
        int result = -1;
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        String repw = request.getParameter("repw");

        DAO Dao = DAO.getInstance();


        if (pw.equals(repw)) {
            Dao.resetPw(id,pw);
            url = "login.jsp";
            request.setAttribute("message", "로그인 페이지로 이동합니다.");
        } else {
            url = "updatePw.jsp";
            request.setAttribute("message", "비번번호를 잘못 입력하였습니다.");
        }
        RequestDispatcher dis = request.getRequestDispatcher(url);
        dis.forward(request, response);
    }
}
