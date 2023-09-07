package com.example.ourproject.controller.action;

import com.example.ourproject.VO.MemberVO;
import com.example.ourproject.controller.action.Action;
import com.example.ourproject.dao.DAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class findIdAction implements Action {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "findId.jsp";
        int result = -1;
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");

        DAO Dao = DAO.getInstance();
        result = Dao.findId(name, phone); //vo에 name, phone, id

        if(result == 1){
            url = "findIdResult.jsp";
            MemberVO vo = Dao.getId(name, phone);
            request.setAttribute("id",vo);
        } else if (result == -1) {
            request.setAttribute("message","이름 혹은 전화번호가 잘못되었습니다.");
        }

        RequestDispatcher dis = request.getRequestDispatcher(url);
        dis.forward(request, response);
    }
}
