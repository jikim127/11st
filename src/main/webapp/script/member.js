function cartCheck(){
    var answer=confirm("장바구니를 이용하시겠습니까?")
    if(answer){
        window.location.href="main.jsp"
    }else{
        window.location.href="productDetail.jsp"
    }
}

function loginCheck() {
    if(document.frm.id.value.length==0) {
        alert("아이디를 입력해주세요.");
        frm.id.focus();
        return false;
    }
    if(document.frm.pw.value=="") {
        alert("비밀번호를 입력해주세요.");
        frm.pw.focus();
        return false;
    }
    return true;
}
function joinCheck() {
    if(document.frm.name.value.length==0) {
        alert("이름을 입력해주세요.");
        frm.name.focus();
        return false;
    }
    if(document.frm.id.value=="") {
        alert("아이디 입력 후 중복체크 해주세요.");
        frm.id.focus();
        return false;
    }
    if(document.frm.pw.value=="") {
        alert("비밀번호를 입력해주세요.");
        frm.pw.focus();
        return false;
    }
    if(document.frm.pw.value!=document.frm.pw_check.value) {
        alert("암호가 일치하지 않습니다.");
        frm.pw.focus();
        return false;
    }
    if(document.frm.phone.value=="") {
        alert("전화번호를 입력해주세요.");
        frm.phone.focus();
        return false;
    }
}
function idCheck(){
    if(document.frm.id.value==""){
        alert("아이디를 입력하여 주세요");
        document.frm.id.focus();
        return false;
    }

    var url = "Servlet?command=idCheck&id=" + document.frm.id.value;
    window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=500");
}

function idok(){
    // opener.frm.id.value = document.frm.id.value;
    // opener.frm.reid.value = document.frm.id.value;
    self.close();
}

function findCheck() {
    if(document.frm.name.value.length==0) {
        alert("이름을 입력해주세요.");
        frm.name.focus();
        return false;
    }
    if(document.frm.phone.value=="") {
        alert("비밀번호를 입력해주세요.");
        frm.phone.focus();
        return false;
    }
}

function pageBack(){
    history.back();
}