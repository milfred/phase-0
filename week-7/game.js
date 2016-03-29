 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Good Knight vs. Very Bad Knight
// Overall mission: In the game, the user plays the Good Knight. They must battle the Very Bad Knight to save the kingdom.
// Goals: Create two characters, the Good Knight and the Very Bad Knight. One function will be to attack the Very Bad Knight. To do this, the user will roll a twenty-sided "die." If their roll is high enough, the attack is successful taking of one of the opponents limbs in this order: left arm, right arm, left leg, right leg. If a character has lost both of his arms, he can kick the other player, but a roll of 18 or higher will only result in one point of damage. If a knight only has one leg left, he may try to bump up against the other character with a roll of 18 or higher, but this will only serve to annoy the other character.
// Characters: Good Knight, Very Bad Knight
// Objects: Good Knight, Very Bad Knight
// Functions: Roll a "die" to attack, remove limbs from opponent if attach is successful

// Pseudocode
// Input: A number from a die roll that will determine the outcome of an attack
// Output: A string detailing the result of the attack
// Create two objects to represent the two knights
  // Each knight should have these properties:
    // leftArm, rightArm, leftLeg rightLeg, hitPoints
// Create the twenty-sided die roll function. It will return a random number from 1 to twenty.
// Create a function that uses the result of the die roll to determine the effectiveness of the attack.
  // If the attacker rolls a 20, The opponent is killed and the attacker wins.
  // If the attacker has at least one arm and rolls a successful attack, I number of hit points will be deducted from the opponent's total. The number will be one point plus an additional point for each number over the number needed to carry out a successful attack.
  // Each knight will have 25 hit points. If they fall below 21, they will lose their left arm. If they fall below 16, they will lose their right arm. If they fall below 11, they lose their left leg. If they fall below 6, they lose their right leg. If they fall below 1 hit point they lose.
  // If the attacker no longer has arms, he must roll a 20 to successfully carry out an attack by kicking his opponent. This will do 1 point of damage.
  // If the attacker has no arms and only one leg, he will need to roll a 20 to bump into the opponent and really annoy him.
  // If the attack has no arms and no legs, he will shout insults at the opponent which will wound his pride.

// Initial Code

// var goodKnight = {
//   name: "Good Knight",
//   hitPoints: 25,
// }

// var badKnight = {
//   name: "Bad Knight",
//   hitPoints: 25,
// }

// var attacker = null;
// var opponent = null;
// var rollResult = 0;
// var damage = 0;

// function turn() {
//   if (attacker == null) {
//     attacker = goodKnight;
//     opponent = badKnight;
//   }
//   else if (attacker == goodKnight) {
//     attacker = badKnight;
//     opponent = goodKnight;
//   }
//   else {
//     attacker = goodKnight;
//     opponent = badKnight;
//   }
// }

// function dieRoll() {
//   rollResult = Math.floor((Math.random() * 20) + 1);
// }

// function attack() {
//   if (rollResult >= 15) {
//     damage = (1 + (rollResult % 15));
//   }
//   else {
//     damage = 0;
//   }
//   opponent.hitPoints = opponent.hitPoints - damage;
// }

// do {
//   turn();
//   dieRoll();
//   attack();
//   alert(attacker.name + " rolled " + rollResult + ".");
//   alert(opponent.name + " took " + damage + " points of damage.");
//   alert("The " + opponent.name + " 's health is " + opponent.hitPoints + ". ")
//   if (attacker == goodKnight) {
//     alert("It's the Bad Knight's Turn.");
//   }
//   else {
//     alert("It's your turn! Roll the dice!");
//   }
// } while (opponent.hitPoints > 0);

// if (opponent == goodKnight) {
//   alert("You have lost. The Very Bad Knight has taken over the kingdom. However, it turns out that he's not such a very bad guy after all. Your former kingdom prospers and the citizens are filled with joy. Sorry you're dead and can't enjoy it.");
// }
// else {
//   alert("You have defeated the Very Bad Knight! The kingdom is safe. A feast is thrown in your honor! However, some of the Very Bad Knight's friends crash the feast and make you feel kind of bad for killing him.");
// }
// alert("That's the end. You're all done now. Thanks for playing.");



// Refactored Code

var goodKnight = {
  name: "Good Knight",
  hitPoints: 25,
};

var badKnight = {
  name: "Very Bad Knight",
  hitPoints: 25,
};

// Declare variables that will be changed
var attacker = null;
var opponent = null;
var rollResult = 0;
var damage = 0;

// Flips attacker/opponent roles every turn
function turn() {
  if (attacker === null) {
    attacker = goodKnight;
    opponent = badKnight;
  }
  else if (attacker == goodKnight) {
    attacker = badKnight;
    opponent = goodKnight;
  }
  else {
    attacker = goodKnight;
    opponent = badKnight;
  }
}

// Rolls die
function dieRoll() {
  rollResult = Math.floor((Math.random() * 20) + 1);
}

// Determine damage of attack based on the result of the die roll
function attack() {
  if (rollResult >= 10 && rollResult < 15) {
    damage = 1;
  }
  else if (rollResult >= 15) {
    damage = (2 + (rollResult % 15));
  }
  else {
    damage = 0;
  }
  opponent.hitPoints = opponent.hitPoints - damage;
}

// Explain game concept
alert("You are a knight named Good Knight (yeah that's really your name) and the benevolent ruler of a beautiful country named JavaLand. (Don't confuse this with the kingdom of Java. The two kingdoms aren't even near each other, but everyone was talking about how great Java is when they named JavaLand. It was really just a marketing thing.) Unfortunately, a bad knight has invaded your country and wants to take your crown from you. They call him the Very Bad Knight! (No, that's not really his name. It's just what people call him.) You must face the Very Bad Knight in single combat and win to save your kingdom. Good luck!");

// Explain game rules
alert("Here are the rules:\nYou and the Very Bad Knight will take turns attacking.\nYou each start out with 25 hit points.\n(If you don't know what hit points are, go to Wikipedia and search for 'Dungeons & Dragons.')\nTo attack, you will roll a 20-sided die.\nIf you roll a number between 1 and 9, your opponent takes no damage.\nIf you roll between 10 and 14, your opponent takes 1 point of damage.\nRolls of 15 to 20 will inflict the following damage amounts:\n15: 2 points\n16: 3 points\n17: 4 points\n18: 5 points\n19: 6 points\n20: 7 points");
alert("You're up first! Roll the die!");

// Set roles, roll die, determine damage amount, and give user the results
// until one of the combatants no longer has any hit points.
do {
  turn();
  dieRoll();
  attack();
  alert("The " + attacker.name + " rolled " + rollResult + ".\n" + "The " + opponent.name + " took " + damage + " point(s) of damage.\n");
  if (opponent.hitPoints < 1) {
    break;
  }
  else if (attacker == goodKnight) {
      alert("The " + opponent.name + " 's health is " + opponent.hitPoints + ". It's the Very Bad Knight's Turn.");
    }
  else {
    alert("The " + opponent.name + " 's health is " + opponent.hitPoints + ". It's your turn! Roll the die!");
    }
} while (opponent.hitPoints > 0);

// Deliver results of the game
if (opponent == goodKnight) {
  alert("You have lost. The Very Bad Knight has taken over the kingdom. However, it turns out that he's not such a bad guy after all. Your former kingdom prospers and the citizens are filled with joy. Sorry you're dead and can't enjoy it.");
}
else {
  alert("You have defeated the Very Bad Knight! The kingdom is safe. A feast is thrown in your honor! However, some of the Very Bad Knight's friends crash the feast and it's kind of awkward. You know, because you killed their friend and everything.");
}
alert("That's the end. You're all done now. Thanks for playing.");


// Reflection
// What was the most difficult part of this challenge?
// The most difficult part for me mentally was setting achieveable goals for myself given the time I had to work on it. I had to abandon my initial idea and then pare down my second concept to something more manageable. During coding, the thing that took the longest to figure out was how to have my characters take turns.

// What did you learn about creating objects and functions that interact with one another?
// It was very useful to have them separated and call them to make my game run. Although we used classes and had some challenges to teach us to separate functions into pieces and store data in data structures, working on something open ended like this really made it clear why this is a good idea. Once I had good data and working functions for each action of my game, it was easy and enjoyable to put the whole thing together.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I hadn't used the Math.floor method before. Basically it rounds a number down to the nearest whole number.

// How can you access and manipulate properties of objects?
// By calling the object name with the property name using either the dot or bracket method. If the property name is more than one word, you must use the bracket method.
