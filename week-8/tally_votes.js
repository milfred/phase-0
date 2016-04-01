// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Evan Druce.
// This challenge took me 2 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Input: Student votes
// Output: Winners
// Steps:
//   1. For each vote in the votes object, assign the person's name as the property and the total number of votes as the value in the voteCount object.
//   2. Find the maximum value of votes for each officer position and assign the property to the correct position in the officers object.


// __________________________________________
// Initial Solution

// function voteCounter() {

  // for (var prop in votes) {
  //   if prop == "president" {
  //     voteCount.president[prop] = 0;
  //     voteCount.president[prop] = ++;
  //   };
  //   else if votes[prop] == "vicePresident" {
  //     voteCount.vicePresident[prop] = 0;
  //     voteCount.vicePresident[prop] = ++;
  //   };
  //   else if votes[prop] == "secretary" {
  //     voteCount.secretary[prop] = 0;
  //     voteCount.secretary[prop] = ++;
  //   };
  //   else votes[prop] == "treasurer" {
  //     voteCount.treasurer[prop] = 0;
  //     voteCount.treasurer[prop] = ++;
  //   };
  // }
// }

// function voteCounter(obj) {
//   for (var voter in obj) {
//     for (var office in obj[voter]) {
//       if (voteCount[office].hasOwnProperty(obj[voter][office]) {
//         voteCount[office][obj][voter][office] += 1
//       }
//       else {
//         voteCount[office][obj][voter][office] = 1
//       }
//     }
//   }
// }

for (var voter in votes) {
  for (var office in votes[voter]) {
    var votedVoter = votes[voter][office]
    var countedVotes = voteCount[office]
    if (countedVotes.hasOwnProperty(votedVoter)) {
      countedVotes[votedVoter] += 1;
    }
    else {
      countedVotes[votedVoter] = 1;
    }
  }
}

function highVoteGetter(candidates) {
  var counter = 0;
  var highVoteGetter = "";
  for (var name in candidates) {
    if (candidates[name] > counter) {
      counter = candidates[name];
      highVoteGetter = name;
    }
  }
  return highVoteGetter;
}

for (var office in officers) {
  officers[office] = highVoteGetter(voteCount[office]);
}

console.log(officers);


// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// Much like in Ruby, you have to nest methods for iteration to get the level you want to iterate over.

// Were you able to find useful methods to help you with this?
// I've obviously used the for method before, but not for..in. hasOwnProperty was also new to me.

// What concepts were solidified in the process of working through this challenge?
// It definitely helped my understanding of iterating over multidimensional arrays.

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)