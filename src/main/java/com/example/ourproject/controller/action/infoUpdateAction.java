package com.example.ourproject.controller.action;

import com.example.ourproject.VO.MemberVO;
import com.example.ourproject.dao.DAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class infoUpdateAction implements Action {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "login.jsp";
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String birthDate = request.getParameter("birthDate");
        String phone = request.getParameter("phone");

        DAO dao = DAO.getInstance();

        MemberVO vo = new MemberVO();

        vo.setId(id);
        vo.setPw(pw);
        vo.setEmail(email);
        vo.setName(name);
        vo.setBirthDate(birthDate);
        vo.setPhone(phone);

        dao.infoUpdate(vo);

        RequestDispatcher dis = request.getRequestDispatcher(url);
        dis.forward(request,response);

    }
}
