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

public class orderUpdateAction implements Action{
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int delete;

        HttpSession session = request.getSession();
        MemberVO mvo = (MemberVO)session.getAttribute("id");

        DAO dao = DAO.getInstance();

        if(request.getParameter("delete")!=null){
            String[] listNo = request.getParameterValues("delete");

            for( int i=0; i<listNo.length; i++) {
                delete = Integer.parseInt(listNo[i]);
                dao.deleteCartCheck(delete,mvo.getId());

            }

            new cartAction().execute(request, response);

        }
        if(request.getParameterValues("no")!=null){
            OrderSearchVO vo = new OrderSearchVO();

            String[] listNo = request.getParameterValues("no");

            //DB 저장
            for (int i = 0; i < listNo.length; i++) {
                int no = Integer.parseInt(listNo[i]);
                vo.setNo(no);
                vo.setId(mvo.getId());
                dao.insertOrder(vo);
            }

            //주문한 제품 Cart DB 삭제
            for (int i = 0; i < listNo.length; i++) {
                int no = Integer.parseInt(listNo[i]);
                vo.setNo(no);
                vo.setId(mvo.getId());
                dao.deleteCart(vo);
            }

            List<OrderSearchVO> list = dao.orderSelectDate(-1, mvo.getId());

            request.setAttribute("orderSearch", list);

            String url = "Servlet?command=orderSearch";
            RequestDispatcher dis = request.getRequestDispatcher(url);
            dis.forward(request, response);
        }
//        else{
//            String url = "Servlet?command=cart";
//            RequestDispatcher dis = request.getRequestDispatcher(url);
//            dis.forward(request, response);
//        }
    }
}