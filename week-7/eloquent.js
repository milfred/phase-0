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

// Introduction
// Did you learn anything new about JavaScript or programming in general?
// I don'y know much about JavaScript, so there were definitely some new things here. One of the most interesting things was the fact that JavaScript is very "forgiving" in terms of what it will allow. It does seem like that will be difficult at first, but I'm interested to see how that will also give you the ability to be more flexible later on.

// Are there any concepts you feel uncomfortable with?
// Not in particular. As I said, I don't really have experience with this language, but nothing in the introduction seemed too crazy.


// Chapter 1
// Identify two similarities and two differences between JavaScript and Ruby syntax with regard to numbers, arithmetic, strings, booleans, and various operators.
//Similarities:
  // 1. The arithmetic operators are the same.
  // 2. Strings are handled in the same way.
// Differences
  // 1. In JavaScript you have to include the keyword "var" to declare a variable.
  // 2. The automatic type conversion in JavaScript seems very different from Ruby. I believe Ruby will raise an error any time you try to apply mathematical operations on dissimilar object types (except in a few cases).


// Chapter 2
// What is an expression?
// Anything that produces a value.

// What is the purpose of semicolons in JavaScript? Are they always required?
// It markes the end of an expression. They are not always required, but the rules regarding when they are not required are complicated.

// What causes a variable to return undefined?
// Undefined is returned when an operation doesn't yield a meaningful value.

// Write your own variable and do something to it in the eloquent.js file.
// See above.

// What does console.log do and when would you use it? What Ruby method(s) is this similar to?
// It prints something to the console. This is similar to p, print, and puts in Ruby.

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
// See above.

// Describe while and for loops
// While and for loops do the same thing. They will continue to loop until a specified condition is met. For is a shorter version of while, but they function the same.

// What other similarities or differences between Ruby and JavaScript did you notice in this section?
// The main thing for me is that most of the concepts are essentially the same. While loops, if/else statements, etc. For the most part, it's just the syntax that is different.


// Chapter 3
// What are the differences between local and global variables in JavaScript?
// Local variables are declared with the "var" keyword and can only be accessed inside of the function that contains them. Global variables are variables created outside of a function and can be accessed anywhere within the program as long as there isn't a local variable declared with the same name.

// When should you use functions?
// There are many different reasons to use a function. You can use them to eliminate repetition, to isolate subprograms, and define new programming vocabulary that mirror actions.

// What is a function declaration?
// A function declaration is basically giving a name to some piece of code.


// Chapter 4
// What is the difference between using a dot and a bracket to look up a property? Ex. array.max vs array["max"]
// Using the dot method is a bit easier to type if you know the name of the property and want to access it's value. However, if the name of the property is not a valid variable name (like "My Name", or 10), you have to use brackets. Also, if you want to use a variable that evaluates to the name of a property to access a value, you must use the method with brackets.

// var object = { myName : "Jason"}
// var x = "myName"
// console.log(object[x])
// => "Jason"
// console.log(object.x)
// => undefined

// What is a JavaScript object with a name and value property similar to in Ruby?
// It is similart to a hash in Ruby.


// Reflection
// What are the biggest similarities and differences between JavaScript and Ruby?
// Many of the object types and concepts are the same or very similar in JavaScript and Ruby. The main differences seem syntax and JavaScript doesn't appear to have as many built in methods as Ruby. Also, Ruby seems like it might be a bit more rigid in what it will allow.

// Was some of your Ruby knowledge solidified by learning another language? If so, which concepts?
// The idea of functions and side effects is an helpful way to think about functions in JavaScript and can translate to Ruby methods as well.

// How do you feel about diving into JavaScript after reading these chapters?
// I was starting to get a good grasp on Ruby, so switching to JavaScript at that point felt like starting over to some degree. However, after some more practice I feel like the process of learning JavaScript won't be as difficult because I have the Ruby base to draw upon.