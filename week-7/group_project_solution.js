// Refactored code

var numArray = [1,2,3]

// Create function to sum numbers in an array
function sum(numbers) {
  return numbers.reduce(function(a, b) {
    return a + b;
  });
}

console.log(sum(numArray));

// Create function to return the mean of the sum of all numbers in an array
function mean(numbers) {
  return sum(numbers) / numbers.length;
}

console.log(mean([1,2,3]));

// Create a function to find the median of a set of numbers in an array
// If the array has an even number of values, return the median and an array containing the two digits that will be divided to get the median
function median(number) {
  number.sort();
  var countedNumbers = number.length;
    if(countedNumbers % 2 != 0) {
      var index = Math.floor((countedNumbers / 2));
      return number[index];
    }
  else {
    var evenIndex = (countedNumbers / 2) - 1;
    var addedSlice = number.slice(evenIndex,evenIndex+2);
    console.log(addedSlice);
    return (addedSlice[0] + addedSlice[1]) / 2;
    }
}

console.log(median([1,2,3]));
console.log(median([1,2,3,4]));

// User stories
// 1. As a user, I want to be able to input a group of numbers into a function called "sum" and have it give me the sum of all numbers in the group.
// 2. As a user, I want to be able to input a group of numbers into a function called "mean" and have it give me the mean of those numbers.
// 3. As a user, I want to be able to input a group of numbers into a function called "median" and have it give me the median of those numbers. If there are an even number of values in the group of numbers, I also want the function to give me the two numbers that are divided to product the mean.