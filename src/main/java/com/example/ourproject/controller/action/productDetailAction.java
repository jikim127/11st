package com.example.ourproject.controller.action;

import com.example.ourproject.VO.ProductVO;
import com.example.ourproject.VO.QAVO;
import com.example.ourproject.dao.DAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

public class productDetailAction implements Action{
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int no = Integer.parseInt(request.getParameter("no"));

        DAO Dao = DAO.getInstance();

        ProductVO vo = Dao.selectOneProductByNo(no);
        String url = "productDetail.jsp";
        List<QAVO> list =Dao.selectAllBoard(no);

        request.setAttribute("product",vo);
        request.setAttribute("boardList",list);

        RequestDispatcher dis = request.getRequestDispatcher(url);
        dis.forward(request,response);

    }
}
