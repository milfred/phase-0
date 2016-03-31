/*
Gradebook from Names and Scores
I worked on this challenge with: John Colella
This challenge took me 1 hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]



// __________________________________________
// Write your code below.


var gradebook = {
  "Joseph": {},
  "Susan": {},
  "William": {},
  "Elizabeth": {},
};

gradebook["Joseph"]["testScores"] = scores[0];
gradebook["Susan"]["testScores"] = scores[1];
gradebook["William"]["testScores"] = scores[2];
gradebook["Elizabeth"]["testScores"] = scores[3];

gradebook["addScore"] = function(name, score) {
  gradebook[name]["testScores"].push(score);
}

gradebook["getAverage"] = function(name) {
  return average(gradebook[name]["testScores"]);
};

function average(integers) {
  var sum = integers.reduce(function(a, b) {
    return a + b;
  })
  return sum / integers.length;
};


// __________________________________________
// Reflect
// What did you learn about adding functions to objects?
// I hadn't really done this before, so it helped me get a better idea of the types of situations that this would be helpful as well as the syntax for doing so.

// How did you iterate over nested arrays in JavaScript?
// We used the reduce method to sum the items in the array, then divided the sum by the length of the array.

// Were there any new methods you were able to incorporate? If so, what were they and how did they work?
// We didn't use any new methods, but this exercise helped me with my understanding of calling and modifying properties and values in objects.