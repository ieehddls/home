const answer_item = document.getElementsByClassName("answer-item");

var answer_count = 0;

function numberBtnClick(t){
    console.log(t.innerText);
    answer_item[answer_count].innerText = t.innerText;
    answer_count++;
    if(answer_count == 3){
        console.log("3입니다. 전송");   
        answer_count = 0;
    }
    t.style.visibility = 'hidden';
}