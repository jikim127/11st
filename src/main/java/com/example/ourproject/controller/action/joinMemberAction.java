package com.example.ourproject.controller.action;

import com.example.ourproject.VO.MemberVO;
import com.example.ourproject.dao.DAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Timestamp;

public class joinMemberAction implements Action {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        MemberVO vo = new MemberVO();

        vo.setId(request.getParameter("id"));
        vo.setPw(request.getParameter("pw"));
        vo.setEmail(request.getParameter("email"));
        vo.setName(request.getParameter("name"));
        vo.setBirthDate(request.getParameter("birthDate"));
        vo.setGender(request.getParameter("gender"));
        vo.setPhone(request.getParameter("phone"));

        DAO dao = DAO.getInstance();
        int result = dao.insertMember(vo); //DAO 통해 DB접속

        HttpSession session = request.getSession();
        if(result == 1){
            session.setAttribute("id", vo.getId());
            request.setAttribute("message", "회원가입이 완료되었습니다.<br>로그인 해주세요.");
        }else {
            request.setAttribute("message", "회원가입을 진행해 주세요.");
        }
        RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
        dis.forward(request, response);
    }
}