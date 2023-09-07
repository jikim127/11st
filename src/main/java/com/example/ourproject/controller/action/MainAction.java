package com.example.ourproject.controller.action;

import com.example.ourproject.VO.ProductVO;
import com.example.ourproject.dao.DAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class MainAction implements Action {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "main.jsp";

        DAO dao = DAO.getInstance();
        List<ProductVO> list = dao.selectAllList();
        request.setAttribute("product",list);
        RequestDispatcher dis = request.getRequestDispatcher(url);
        dis.forward(request,response);
    }
}
