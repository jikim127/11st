function update(){
    if(document.frm.id.value.length == 0){
        alert("아이디를 입력하여주세요.")
        frm.id.focus();
        return false;
    }
    if(document.frm.pw.value == ""){
        alert("비밀번호를 입력하여주세요.")
        frm.pw.focus();
        return false;
    }
    if(document.frm.pwCheck.value == ""){
        alert("비밀번호 확인을 입력하여주세요.")
        frm.pwCheck.focus();
        return false;
    }
    if(document.frm.pw.value != document.frm.pwCheck.value){
        alert("비밀번호와 비밀번호 확인이 일치하지 않습니다. 확인하여주세요.")
        frm.pw.focus();
        return false;
    }
    return true;
}
function pwCheck()  {
    if(document.frm.pwCheck.value == ""){
        alert("비밀번호를 입력하여주세요.")
        frm.pwCheck.focus();
        return false;
    }
}