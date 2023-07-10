<script type="text/javascript" >
    fetch("http://localhost:8080/ball?first=1&second=3&third=2")
    .then(response => response.json())
    .then(json => console.log(json));
</script>