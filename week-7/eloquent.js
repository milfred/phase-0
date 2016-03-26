// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var cat_name = "Finn";
console.log(cat_name, "says, \"I want to eat right meow!\"");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var counter = 1;
while (counter <= 7) {
  console.log("#".repeat(counter ++));
}

// Functions

// Complete the `minimum` exercise.

var min = function(x, y) {
  return Math.min(x, y);
}

console.log(min(200, 8));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  myName : "Jason Milfred",
  myAge : 43,
  myFavFoods : ["pizza", "shrimp", "murg makhani"],
  myQuirk : "I once attended a school of cartoon art, because I wanted to draw comic books."
};