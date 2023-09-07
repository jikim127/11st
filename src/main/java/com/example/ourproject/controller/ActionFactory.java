package com.example.ourproject.controller;

import com.example.ourproject.controller.action.*;

public class ActionFactory {

    private static ActionFactory instance = new ActionFactory();

    private ActionFactory() {
    }

    public static ActionFactory getInstance() {
        return instance;
    }

    public static Action getAction(String command) {
        Action action = null;

        if (command.equals("my_Info")) {
            action = new myInfoAction();
        } else if (command.equals("login")) {
            action = new loginAction();
        } else if (command.equals("joinMember")) {
            action = new joinMemberAction();
        } else if (command.equals("cartUpdate")) {
            action = new cartUpdateAction();
        } else if (command.equals("main")) {
            action = new MainAction();
        } else if (command.equals("productDetail")) {
            action = new productDetailAction();
        } else if (command.equals("orderSearch")) {
            action = new orderSearchAction();
        } else if (command.equals("cart")) {
            action = new cartAction();
        } else if (command.equals("idCheck")) {
            action = new idCheckAction();
        } else if (command.equals("infoUpdate")) {
            action = new infoUpdateAction();
        }else if (command.equals("logout")) {
            action = new logoutAction();
        }else if (command.equals("boardViewForm")) {
            action = new boardViewFormAction();
        }else if (command.equals("pwCheck")) {
            action = new pwCheckAction();
        }else if (command.equals("search")) {
            action = new searchAction();
        }else if (command.equals("orderUpdate")) {
            action = new orderUpdateAction();
        }else if (command.equals("findId")) {
            action = new findIdAction();
        }else if (command.equals("findPw")) {
            action = new findPwAction();
        }else if(command.equals("boardInsertForm")){
            action = new boardInsertFormAction();
        }else if(command.equals("boardInsert")){
            action = new boardInsertAction();
        }else if(command.equals("updatePw")){
            action = new updatePwAction();
        }else if(command.equals("boardConfirmForm")){
            action = new boardConfirmFormAction();
        }else if(command.equals("boardConfirm")){
            action = new boardConfirmAction();
        }else if(command.equals("board_update_form")){
            action = new boardUpdateFormAction();
        }else if(command.equals("board_update")){
            action = new boardUpdateAction();
        }else if(command.equals("board_delete")){
            action = new boardDeleteAction();
        }else if(command.equals("directOrderUpdate")){
            action = new directOrderUpdateAction();
        }
        return action;
    }

}

