
function getData(i){
	var url = "alok/getDBData/" + i;
$.ajax({
  dataType: "json",
  url: url,
  data: data,
  success: handleData
});

function handleData(data){
	var row = $("<li>"+data["id"]+data["first_name"]+data["last_name"]+data["email"]+data["country"]+data["ip_address"]"</li>").hide();
	$('#alok').append(row);
	row.show("slow", function () {console.log("appended !")});
}
$(document).ready(function (){
$("button").on("click", "button#req-sub", function() {
	var myVar;
	var i = 0;
	myVar = setInterval(getData(i), 0.5);
});
});
}
