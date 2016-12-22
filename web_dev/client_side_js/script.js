console.log("The script is running");

var orange_pic = document.getElementById("orange");
orange_pic.style.border = "10px solid orange";

var purple_pic = document.getElementById("purple");
purple_pic.style.border = "10px solid purple";



function create_new_header(event) {
console.log("Testing create_new_header function");
event.target.innerHTML = "Wildflowers: The New Hottest Shake and Bake Trend";
}

var new_header = document.getElementsByTagName("h1")[1];
new_header.addEventListener("click", create_new_header);



var new_paragraph = document.createElement("p");
var node = document.createTextNode("Adding a new test paragraph");

new_paragraph.appendChild(node);

var new_element = document.getElementById("external-links");
new_element.appendChild(new_paragraph);