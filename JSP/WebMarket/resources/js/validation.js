function CheckAddProduct(){
    var productId = document. getElementById("productId");
    var name = document. getElementById("name");
    var unitPrice = document. getElementById("unitPrice");
    var unitsInStock = document. getElementById("unitsInStock");

    const productIdRegExp = /^P[0-9]{4,11}$/;

    const productIdMsg = "[상품 코드]\nP와 숫자를 조합하여 5 ~ 12까지 입력하세요. \n첫 글자는 반드시 P로 시작하세요.";
    const nameMsg = "[상품명]\n최소 4자에서 최대 12자까지 입력하세요.";
    const priceIsNumMsg = "[가격]\n숫자만 입력하세요.";
    const priceUnderZeroMsg = "[가격]\n음수는 입력할 수 없습니다.";
    const stockMsg = "[재고수]\n숫자만 입력하세요.";

    function check(e, msg){
        alert(msg);
        e.select();
        e.focus();
        return false;
    }

    if(!productIdRegExp.test(productId.value)){
        check(productId, productIdMsg);
        return false;
    }
    
    if(name.value.length < 4 || name.value.length > 12){
        check(name, nameMsg);
        return false;
    }
    
    if(unitPrice.value.length == 0 || isNaN(unitPrice.value)){
        check(unitPrice, priceIsNumMsg);
        return false;
    }

    if(unitPrice.value < 0){
        check(unitPrice, priceUnderZeroMsg);
        return false;
    }
    
    if(isNaN(unitsInStock.value)){
        check(unitsInStock, stockMsg);
        return false;
    }

    document.newProduct.submit();
}