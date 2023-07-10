const answer_item = document.getElementsByClassName("answer-item");
const number_item = document.getElementsByClassName("btn-primary");
const result_item = document.getElementsByClassName("result-item");


var answer_count = 0;
var i = 0;

function numberBtnClick(t){
    answer_item[answer_count].innerText = t.innerText;
    answer_count++;
    t.style.visibility = 'hidden';
    if(answer_count == 3){
        sendData();
    }
}

function sendData(){
    var url = "http://localhost:8080/ball?first=" + answer_item[0].innerText 
        + "&second=" + answer_item[1].innerText 
        + "&third=" + answer_item[2].innerText;

    fetch(url)
    .then(response => response.json())
    .then(json => {
        result_item[i++].appendChild(createResultElement(json));

        if(i == 9) reset();
        else cancel();
    });
}

function createResultElement(json){
    let ball_count_key = ["S", "B"];
    let result_key = ["first", "second", "third"];

    let result_div = document.createElement("div");

    let result_item_div = document.createElement("div");
    result_item_div.setAttribute('class', 'result-item');



    let answer_div = document.createElement("div");

    result_key.forEach(item => {
        let answer_span = document.createElement("span");
        answer_span.innerHTML = json[item];
        answer_div.appendChild(answer_span);
    });

    // for(let i = 0; i<3; i++){
    //     let answer_span = document.createElement("span");
    //     answer_span.innerHTML = i;
    //     answer_div.appendChild(answer_span);
    // }

    let ball_count_div = document.createElement("div");

    ball_count_key.forEach(item =>{
        let ball_count_span = document.createElement("span");
        ball_count_span.innerHTML = json[item];
        ball_count_div.appendChild(ball_count_span);
    });

    // for(let i =0; i<2; i++){
    //     let ball_count_span = document.createElement("span");
    //     ball_count_span.innerHTML = json[json_key[i]];
    //     ball_count_div.appendChild(ball_count_span);
    // }

    result_div.appendChild(answer_div);
    result_div.appendChild(ball_count_div);

    return result_div;
}

function reset(){
    i = 0;
    cancel();
    for(let a of result_item){
        a.innerHTML = "";
    }
}

function cancel(){
    answer_count = 0;
    for(let a of number_item){
        a.style.visibility = 'visible';
    }
    for(let a of answer_item){
        a.innerText = "";
    }
}