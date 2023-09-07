package com.example.ourproject.controller.action;

import com.example.ourproject.VO.CartVO;
import com.example.ourproject.VO.MemberVO;
import com.example.ourproject.dao.DAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

public class cartAction implements Action{

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "myCart.jsp";

        HttpSession session = request.getSession();
        MemberVO mvo = (MemberVO)session.getAttribute("id");


        DAO dao = DAO.getInstance();

        List<CartVO> list = dao.cartSelect(mvo.getId());


        request.setAttribute("Cart",list);

        RequestDispatcher dis =request.getRequestDispatcher(url);
        dis.forward(request, response);

    }

}