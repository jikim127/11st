package com.example.ourproject.controller.action;

import com.example.ourproject.dao.DAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class findPwAction implements Action {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "findPw.jsp";
        int result = -1;
        String id = request.getParameter("id");


        DAO Dao = DAO.getInstance();
        result = Dao.findPw(id);
        System.out.println(result);

        if(result == 1){
            url = "updatePw.jsp";
            request.setAttribute("id", id);
        } else if (result == -1) {
            request.setAttribute("message","아이디 혹은 이름이 잘못되었습니다.");
        }

        RequestDispatcher dis = request.getRequestDispatcher(url);
        dis.forward(request, response);
    }
}
