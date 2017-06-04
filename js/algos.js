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




