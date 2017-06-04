// Method to create reverse string
// input: string
// Steps:
    // create a new variables for empty string
    // iterate string
    // for each letter reverse order add in to the new empty string
// output: string

function reverse (str) {
  var reverse_string =" ";
for (var i = str.length-1; i >= 0; i-=1) {
   reverse_string += str[i];
}
   return reverse_string;
}

console.log(reverse("hello"));

word = "hello";
var ispalindrome = false;
var words = true;
if (ispalindrome){
  console.log("Would not to reverse the string.");
}
else
{
  console.log("Would be reverse the string: " + reverse(word));
}

if (1==1){
  console.log("Yes the conditino is ture and the variable is:" +word);
}
