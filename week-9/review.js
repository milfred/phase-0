// Translate PezDispenser Challenge from Ruby to JavaScript

// User Stories
// - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that represent Pez so it's easy to start with a full Pez dispenser.
// - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser so I can know how many are left.
// - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
// - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
// - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order of the flavors coming up.

// Pseudocode
// Input: A list of collection of flavors, a flavor to add
// Output: The number of Pez in the dispenser, A list of all the Pez in the dispenser, the first flavor in the dispenser
// Steps
// 1. Create a constructor to represent the Pez Dispenser that takes one argument which will be an array containing the flavors
// 2. Create a function that will return the number of Pez in the dispenser.
// 3. Create a function that will return a list of all of the Pez in the dispenser.
// 4. Create a function that will return and delete the first Pez flavor in the array.
// 5. Create a function that will add a new flavor to the array and return it's name.

// Create the new Pez dispenser and populate it with flavors
function pezDispenser(flavors) {
    this.flavors = flavors;
};

// Count the number of Pez in the dispenser
function pezCount(dispenser) {
  return dispenser["flavors"].length;
};

// Return a list of all Pez in the dispenser
function allPez(dispenser) {
  return dispenser["flavors"].join(", ");
};

// Get first Pez from the dispenser
function getPez(dispenser) {
  return dispenser["flavors"].shift();
};

// Add new Pez to the dispenser
function addPez(dispenser, newFlavor) {
  dispenser["flavors"].unshift(newFlavor);
  return dispenser["flavors"][0];
};



var flavors = (['cherry', 'chocolate', 'cola', 'grape', 'lemon', 'orange', 'peppermint', 'raspberry', 'strawberry'].sort(function() { return 0.5 - Math.random() }));
var superMario = new pezDispenser(flavors);
console.log("A new Pez dispenser has been created. You have " + pezCount(superMario) + " pez!");
console.log("Here's a look inside the dispenser:");
console.log(allPez(superMario));
console.log("Adding a banana pez.");
addPez(superMario, "banana");
console.log("Now you have " + pezCount(superMario) + " pez!");
console.log("Oh, you want one do you?");
console.log("The pez flavor you got is: " + getPez(superMario));
console.log("Now you have " + allPez(superMario) + " pez!");



// Reflection
// What concepts did you solidify in working on this challenge?
// Creating a constructor function and passing constructor data to a function without instance variables.

// What was the most difficult part of this challenge?
// Realizing that I needed to pass the superMario dispenser to the functions as an argument because there aren't instance variables like there are in Ruby.

// Did you solve the problem in a new way this time?
// No. It's essentially the same logic.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
// Again, no. It was basically the same since the logic was the same.