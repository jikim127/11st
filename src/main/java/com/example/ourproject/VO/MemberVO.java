package com.example.ourproject.VO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Timestamp;

@Getter
@Setter
@ToString
public class MemberVO {
    private String id;
    private String pw;
    private String email;
    private String name;
    private String birthDate;
    private String gender;  //남자 1, 여자 2
    private String phone;

}
