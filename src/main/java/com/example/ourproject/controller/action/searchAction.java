package com.example.ourproject.controller.action;

import com.example.ourproject.VO.ProductVO;
import com.example.ourproject.dao.DAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class searchAction implements Action {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String url = "searchView.jsp";

        String keyword = request.getParameter("keyword");

        System.out.println("first keyword = "+keyword);

        DAO dao = DAO.getInstance();
        List<ProductVO> list = dao.searchList(keyword);
        request.setAttribute("product",list);
        RequestDispatcher dis = request.getRequestDispatcher(url);
        dis.forward(request,response);
    }
}
