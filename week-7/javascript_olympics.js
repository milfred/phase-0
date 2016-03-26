 // JavaScript Olympics

// I paired with Alicia Briceland on this challenge.

// This challenge took me 2.5 hours.


// Bulk Up

  var harry = {
    name: "Harry",
    event: "Marathon"
  }
  var serena = {
    name: "Serena",
    event: "Tennis"
  }

var atheleteArray = [harry, serena]

function win(array) {
  for (var i = 0; i < array.length; i++) {
    var current = array[i];
    current["win"]= current.name + " won the " + current.event + "!"
   console.log(current["win"])
  }
}

win(atheleteArray)

// Jumble your words

function reverseString(string) {
  var array = string.split("").reverse();
  return array.join("");
}

console.log(reverseString("I love Dev Bootcamp!"))

// 2,4,6,8

function evens(numArray) {
  var evenArray = numArray.filter(function(val) {
    return 0 == val % 2;
  });
  return evenArray
}

console.log(evens([9,4,0,2,5,3,222222]))

// "We built this city"

var Athlete = function(){
  this.name = "Michael Phelps";
  this.sport = "swimming";
  this.quote = "It's medicinal I swear!"
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// It's not Ruby! But...I'm this challenge helped me start to feel more comfortable with it. I learned how to store the value of an object inside an array. Got some experience researching JavaScript methods and found the filter method, which worked very well for even number challenge. It took me some time to figure out how to make it work, but it was definitely a very good solution.

// What are constructor functions?
// Object literal creates one object. A constructor function allows you to create many Objects of the same type.

// How are constructors different from Ruby classes (in your research)?
// Clearly the syntax is different, so I'm not going to go over all of that. One thing that is different is that you don't need to initialize a constructor. To create something similar to an instance method in a class in Ruby, you create a new function outside the constructor and assign it to a named property of the constructor's prototype property. I don't quite understand prototype yet, but I can see how the methods are linked to the constructor even though the "reside" outside of it.