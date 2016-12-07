var colors = ["black", "white", "brown", "gray"];
var horses = ["Big Brown", "Nyquist", "Barbaro", "Giacomo"];

colors.push("burgundy");
horses.push("Old Rosebud");

console.log(colors);
console.log(horses);

var horseColors = {};

for (var i = 0; i < horses.length; i++) {
horseColors[horses[i]] = colors[i];
}

console.log(horseColors);

function Car(make, model, year, color) {
    
    console.log("Our new car", this);
    
    this.make = make;
    this.model = model;
    this.year = year;
    this.color = color;
    
    this.honk = function() { console.log("Honk Honk"); };
}

var car1 = new Car("VW", "TDI", 2011, "gray");
var car2 = new Car("Toyota", "4runner", 2016, "black");

console.log(car1);
car1.honk();
console.log(car2);
car2.honk();