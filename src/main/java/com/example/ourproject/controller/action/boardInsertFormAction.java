package com.example.ourproject.controller.action;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class boardInsertFormAction implements Action {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "boardInsertForm.jsp";
        RequestDispatcher dis = request.getRequestDispatcher(url);

        dis.forward(request,response);
    }
}
