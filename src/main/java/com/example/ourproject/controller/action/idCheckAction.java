package com.example.ourproject.controller.action;

import com.example.ourproject.dao.DAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class idCheckAction implements Action {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        DAO mDao = DAO.getInstance();

        int result = mDao.confirmID(id);

        request.setAttribute("id", id);
        request.setAttribute("result", result);

        RequestDispatcher dis = request.getRequestDispatcher("idCheck.jsp");
        dis.forward(request, response);
    }
}