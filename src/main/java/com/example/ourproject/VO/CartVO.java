package com.example.ourproject.VO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CartVO {
    private String id;
    private int no;
    private String title;
    private int price;
    private String image;
}
