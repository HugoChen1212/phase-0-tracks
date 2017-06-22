var colors = ['blue', 'pink', 'black', 'red'];
var names = ['joe', 'bob', 'ryan', 'jack'];
colors.push('green');
names.push('evan');

console.log(colors);
console.log(names);

var horse = {};

for(var i = 0; i < colors.length; i++) {
  horse[names[i]] = colors[i];
}

console.log(horse);

function Car(make, model, year) {
  this.make = make;
  this.model = model;
  this.year = year;

  this.hum = function() {console.log('hum!'); };
}

var new_car = new Car('jeep', 'cherokee', 2005);
console.log(new_car);
new_car.hum();