var colors = ["blue", "green", "red", "black"];
var names = ["Ed", "Dan", "Kevin", "jack"];
 colors.push("white");
 names.push("Seef");

 console.log(colors);
console.log(names);

 var house = {};
for (var i = 0; i < names.length; i++){
  house[names[i]]=colors[i];
}

console.log(house);

function Car (year,mark,model){
  this.year = year;
  this.mark = mark;
  this.model = model;

  this.hum = function() {
    console.log("Hum!");
  };
}

var  sedan = new Car("2017","Toyota","Camry");
var van = new Car("2017","Mercedes","Sprinter");
console.log(sedan);
sedan.hum();
console.log(van);
van.hum();