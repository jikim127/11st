package com.example.ourproject.controller.action;

import com.example.ourproject.dao.DAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class boardDeleteAction implements Action {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int seq = Integer.parseInt(request.getParameter("seq"));

        DAO Dao = DAO.getInstance();
        Dao.deleteBoard(seq);

    }
}
