package com.example.ourproject.VO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.Timestamp;

@Getter
@Setter
@ToString
public class OrderSearchVO {
    private String id;
    private int no;
    private Timestamp orderDate;
    private String title;
    private int price;
    private String image;
}
