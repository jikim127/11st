<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023-06-22
  Time: AM 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="header.jsp" %>
<%@ include file="./include/top.jsp" %>

<link rel="stylesheet" type="text/css" href="css/style.css">
<html>
<head>
    <title>Title</title>
    <style>
        /* 슬라이드 컨테이너 스타일 */
        .slideshow-container {
            position: relative;
            width: 1000px;
            /*margin: auto;*/
            /*height: 300px;*/
        }

        /* 이미지 슬라이드 스타일 */
        .mySlides {
            display: none;
            width: 100px;
            /*height: 200px;*/
        }

        .mySlides img {
            width: 1900px;
            height: 500px;
        }

        /* 이미지 캡션 스타일 */
        .caption {
            /*position: absolute;*/
            bottom: 0;
            left: 0;
            /*width: 100%;*/
            background-color: rgba(0, 0, 0, 0.5);
            color: #fff;
            padding: 10px;
            font-size: 14px;
        }
    </style>
</head>
<body>
<div class="slideshow-container" style="width: 100%">

    <!-- 이미지 슬라이드 -->
    <div class="mySlides">
        <img src="https://view01.wemep.co.kr/wmp-main/18/202306/23/pmb_xkoekjclepol.png" alt="Slide 1">
    </div>

    <div class="mySlides">
        <img src="https://view01.wemep.co.kr/wmp-main/09/202306/23/pmb_nxkp3ztv4kpk.png" alt="Slide 2">
    </div>

    <div class="mySlides">
        <img src="https://view01.wemep.co.kr/wmp-main/09/202306/23/pmb_nxkp3ztv4kpk.png" alt="Slide 3">
    </div>

    <div class="mySlides">
        <img src="https://view01.wemep.co.kr/wmp-main/09/202306/23/pmb_mdevok2spi0z.png" alt="Slide 4">
    </div>

    <div class="mySlides">
        <img src="https://view01.wemep.co.kr/wmp-main/12/202306/23/pmb_xajxyr7cjhik.png" alt="Slide 5">
    </div>

    <div class="mySlides">
        <img src="https://view01.wemep.co.kr/wmp-main/45/202306/23/pmb_s2yjq9z1kfp0.jpg" alt="Slide 6">
    </div>

    <div class="mySlides">
        <img src="https://view01.wemep.co.kr/wmp-main/46/202306/23/pmb_b57lbeupmjx1.jpg" alt="Slide 7">
    </div>

    <div class="mySlides">
        <img src="https://view01.wemep.co.kr/wmp-main/58/202306/26/pmb_zawt8t6vfk5t.png" alt="Slide 8">
    </div>
</div>

<script>
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");

        // 모든 슬라이드를 숨김
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }

        // 슬라이드 인덱스 업데이트 및 범위 조정
        slideIndex++;
        if (slideIndex > slides.length) {
            slideIndex = 1;
        }

        // 현재 슬라이드 표시
        slides[slideIndex - 1].style.display = "block";

        // 3초마다 슬라이드 변경
        setTimeout(showSlides, 3000);
    }

    function changeSlide(n) {
        // 슬라이드 인덱스 업데이트 및 범위 조정
        slideIndex += n;
        var slides = document.getElementsByClassName("mySlides");
        if (slideIndex > slides.length) {
            slideIndex = 1;
        } else if (slideIndex < 1) {
            slideIndex = slides.length;
        }

        // 모든 슬라이드를 숨김
        for (var i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }

        // 현재 슬라이드 표시
        slides[slideIndex - 1].style.display = "block";
    }
</script>
<div id="jongjin" align="center">
    <div class="row">
        <c:forEach var="product" items="${product}">
            <div class="col-md-4 mb-4">
                <hr>
                <div class="bg-body-tertiary me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden" style="margin-left: 10px; margin-right: 10px;">
                    <div class="my-3 py-3">
                        <a href="Servlet?command=productDetail&no=${product.no}" style="text-decoration: none; color: black;">
                            <p class="lead" style="font-size: large;">${product.title}</p>
                        </a>
                        <a href="Servlet?command=productDetail&no=${product.no}" style="text-decoration: none; color: black;">
                            <p class="lead" style="font-size: medium;">
                                <fmt:formatNumber value="${product.price}" pattern="###,###,###"/>원
                            </p>
                        </a>
                    </div>
                    <div class="bg-danger shadow-sm mx-auto" style="width: 100%; height: 400px; border-radius: 15px 15px 15px 15px;">
                        <div class="product-image">
                            <a href="Servlet?command=productDetail&no=${product.no}">
                                <img src=${product.image}>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>


<%@ include file="footer.jsp" %>
<%@ include file="./include/bottom.jsp" %>

