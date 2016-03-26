// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// Input: A integer
// Output: A string with commas separating the number every three digits
// Steps:
// 1. Separate Numbers with Commas in JavaScript
// 2. Transform number into string
// 3. Reverse the string
// 4. If the length of the string is less than 4, print the string
// 5. Create variable to determine how many groups of three digits there are in the string
// 6. If the length of the string mudulo 3 returns 0,
// iterate by how many groups of three there are minus 1, use slice to insert comma every three digits
// 7.  If the length of the string modulo 3 does not return 0, do the same iteration without subtracting 1 from groups of three

// Initial Solution

// function separateComma(number) {
//   var numberString = number.toString();
//   var numberArray = numberString.split("");
//   var groups_of_three = numberString.length;
//   var arrayReverse = numberArray.reverse();
//   // return groups_of_three
//   if(numberString.length < 4)
//     return numberString;
//   else if(numberString.length % 3 == 0)
//     for (var i = 3; i < groups_of_three; i += 3){
//       arrayReverse.splice(arrayReverse[i], 0, ",");
//       return arrayReverse;
//     }
//   var counter = 3;
//   for(var i=0; i < counter; i++)

// }

// Refactored Solution

function commaSeparator(number) {
  var reversedArray = number.toString().split("").reverse();
  var i = 3;
  do {
    reversedArray.splice(i, 0, ",");
    i += 4;
  } while (i < reversedArray.length);
  return reversedArray.reverse().join("");
}

// Your Own Tests (OPTIONAL)

console.log(commaSeparator(123456789123))
console.log(commaSeparator(1234567891231235568))
console.log(commaSeparator(12345678912312355680))

// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// The approach was pretty similar to what I did in Ruby. The JavaScript, while more verbose than my Ruby solution, is probably a bit more readable. In Ruby I just chained a bunch of methods together. It was one line, but a very long line. In JavaScript I had to break it up into more pieces that make it easier to tell what is going on.

// What did you learn about iterating over arrays in JavaScript?
// I learned the "do...while" method which I was not familiar with, but is basically the same as "while" in Ruby.

// What was different about solving this problem in JavaScript?
// I wish I could say that it was easier to do the same exercise in JavaScript because of the knowledge I have from Ruby, but it took me quite awhile because I'm still trying to ingrain the syntax.

// What built-in methods did you find to incorporate in your refactored solution?
// I used .toString(), .split(), .reverse(), .splice(), .length, .do...while, and .join().

