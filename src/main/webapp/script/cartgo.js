function cartConfirmSelection() {
    var response = confirm("장바구니에 담으시겠습니까?");
    if (response) {
        return true;
    } else {
        return false;
    }
}
function orderConfirmSelection() {
    var response = confirm("구매하시겠습니까?");
    if (response) {
        return true;
    } else {
        return false;
    }
}
