package com.example.ourproject.controller.action;

import com.example.ourproject.VO.MemberVO;
import com.example.ourproject.dao.DAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class loginAction implements Action {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "login.jsp";
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");

        DAO Dao = DAO.getInstance();
        int result = Dao.userCheck(id, pw);

        if(result == 1) {
            MemberVO mVo = Dao.getMember(id);
            HttpSession session = request.getSession();
            session.setAttribute("id", mVo);
            request.setAttribute("message", "로그인 성공");
            url = "Servlet?command=main";
        }else if(result == 0) {
            request.setAttribute("id", id);
            request.setAttribute("message", "비밀번호 불일치");
        }else {
            request.setAttribute("message", "존재하지 않는 아이디");
        }
        RequestDispatcher dis = request.getRequestDispatcher(url);
        dis.forward(request, response);
    }
}
