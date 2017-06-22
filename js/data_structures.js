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