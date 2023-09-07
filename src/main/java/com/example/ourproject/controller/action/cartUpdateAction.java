package com.example.ourproject.controller.action;

import com.example.ourproject.VO.CartVO;
import com.example.ourproject.dao.DAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class cartUpdateAction implements Action {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CartVO vo = new CartVO();
        vo.setId(request.getParameter("id"));
        vo.setNo(Integer.parseInt(request.getParameter("no")));

        DAO Dao = DAO.getInstance();
        int result = Dao.insertProduct(vo);
        System.out.println(result);
        new cartAction().execute(request,response);
    }
}
