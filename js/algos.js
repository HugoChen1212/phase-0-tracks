// Function to find the longest phrase
// input: list with words or phases
// steps:
    // create a new variable and assign empty string
    // iterate each words or phases
    // IF the list's item is larger than the new variable's length
    // assign to the new variable
    // Other case
    // assign new variable equal to new variable
    // return the longest words or phases in the list
// output: string

function Logest_Phrase (list){
  var  longest_word = "";
  for (var i = 0; i < list.length; i++){
    if (list[i].length > longest_word.length){
      longest_word = list[i];
    }
    else{
      longest_word = longest_word;
    }
  }
  return longest_word;
}

list = ["long phrase","longest phrase","longer phrase"];

console.log(Logest_Phrase(list));

// Function to find a key-value match
// input: Hash and other Hash
// steps:
  // iterate through both Hash
  // compare to both each key-value
  // IF at least one key-value pair matches between the two Hash
  // return true
  // IF no key-value pair matches between the two
  // return false
// output: Boolean

function Key_Value_Match (object1, object2) {
for (var k in object1){
  for (var i in object2){
   if ( object1[k] == object2[i]){
     return true;
   }
}
}
return false;
}

console.log(Key_Value_Match({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(Key_Value_Match({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3}));
console.log(Key_Value_Match({animal: "Dogs", legs: 4}, {animal: "Dog", legs: 3}));


// Function to Generate Random Test Data
// input: interger and array
// steps:
  // create a new_array
  // set the range of the words we need
  // add the words in the a new_array
  // create another array
  // set the number words need to be random
  // get starte random words from the new_array
  // add the output of the random words to another array
// return another array
// output: another array

function Random_data (num, array) {
 var range_words = [];
for (var i = 0; i < array.length; i++){
  if (array[i].length >= 0 && array[i].length < 10){
    range_words.push(array[i]);
  }
}
 var output = [];
for (var k = 0; k < num; k++){
  var random_index  = Math.floor(Math.random() * range_words.length);
  output.push(range_words[random_index]);
}
return output;
}

example=["long ph","longest","car","apple","phrase","longer", "a", "dfkjdlfjaldfjldfj"];


for (var n = 0; n < 10; n++){
ramdom_array=Random_data(3,example);
console.log(ramdom_array);
console.log(Logest_Phrase(ramdom_array));
}

