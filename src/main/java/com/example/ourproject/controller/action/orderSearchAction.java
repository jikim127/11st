package com.example.ourproject.controller.action;

import com.example.ourproject.VO.MemberVO;
import com.example.ourproject.VO.OrderSearchVO;
import com.example.ourproject.dao.DAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

public class orderSearchAction implements Action{
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "orderSearch.jsp";
        HttpSession session = request.getSession();
        MemberVO mvo = (MemberVO)session.getAttribute("id");

        DAO dao = DAO.getInstance();

        int delete;
        int chdate;

        if(request.getParameter("date") == null){
            chdate=-1;
        }else {
            chdate = Integer.parseInt(request.getParameter("date"));
        }

        if(request.getParameter("delete")!=null){
           OrderSearchVO vo = new OrderSearchVO();
            String[] listNo = request.getParameterValues("delete");

            for( int i=0; i<listNo.length; i++) {
                delete = Integer.parseInt(listNo[i]);
                dao.deleteOrderSearch(delete,mvo.getId());

            }
        }

        List<OrderSearchVO> list = dao.orderSelectDate(chdate,mvo.getId());

        request.setAttribute("orderSearch",list);

        RequestDispatcher dis = request.getRequestDispatcher(url);
        dis.forward(request, response);
    }
}
