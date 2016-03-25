// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// Input: A integer
// Output: A string with commas separating the number every three digits
// Steps:
// 1. // Separate Numbers with Commas in JavaScript **Pairing Challenge**
// 2. Transform number into string
// 3. Reverse the string
// 4. If the length of the string is less than 4, print the string
// 5. Create variable to determine how many groups of three digits there are in the string
// 6. If the length of the string mudulo 3 returns 0,
// iterate by how many groups of three there are minus 1, use slice to insert comma every three digits
// 7.  If the length of the string modulo 3 does not return 0, do the same iteration without subtracting 1 from groups of three

// Initial Solution

function separateComma(number) {
  var numberString = number.toString();
  var numberArray = numberString.split("");
  var groups_of_three = numberString.length;
  var arrayReverse = numberArray.reverse();
  // return groups_of_three
  if(numberString.length < 4)
    return numberString;
  else if(numberString.length % 3 == 0)
    for (var i = 3; i < groups_of_three; i += 3){
      arrayReverse.splice(arrayReverse[i], 0, ",");
      return arrayReverse;
    }
  // var counter = 3;
  // for(var i=0; i < counter; i++)

}
console.log(separateComma(123456789123))



// Refactored Solution
// def separate_comma(number)
//   comma_separated_number = number.to_s.reverse.split('').each_slice(3).map {|obj| obj.push(",") }.join.chop.reverse
// end


// Your Own Tests (OPTIONAL)




// Reflection


// Initial Solution




// Refactored Solution




// Your Own Tests (OPTIONAL)




// Reflection