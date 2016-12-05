// Release 0: Find the Longest Phrase

// Define function longest that takes an array as argument and returns longest item in array
// Assign  variable long to the first item in array 
// Loop through input array
  // If the length of long is less than the length of current array item
   // Assign, long to current array item
   // Otherwise, do nothing
// Return variable longest

var longest = function(arr) {
  var long = arr[0];
  
  for (var i=0; i < arr.length; i++) {
    if (arr[i].length > long.length) {
      long = arr[i];
    }
  }
  
  return long;
};


var test = ["house", "car", "soccer", "television", "microwave"];

console.log(longest(test));


// Release 1: Find a Key-Value Match

// Define function that takes two objects to see if the objects share the same key and value
  // Define two new arrays using keys from inputted objects
  // Set a new array to capture matchers
  // Loop through first array and check to see if its included in the second array
  // If its included in the second array, add key to matchers array
  // Otherwise, keep searching
// Return matchers array

var objOne = {name: "Steven", age: 54, eyes: "brown", hair: "blonde"};
var objTwo = {name: "Tamir", age: 54, eyes: "blue", hair: "blonde"};

var keyFinder = function(obj1, obj2) {
  var obj1Keys = Object.keys(obj1);
  var obj2Keys = Object.keys(obj2);
  var obj1Values = Object.values(obj1);
  var obj2Values = Object.values(obj2);
  var allMatches = {};

  for (var i=0; i < obj1Keys.length; i++)
    if ((obj2Keys.indexOf(obj1Keys[i]) > -1) && obj2Values.indexOf(obj1Values[i]) > -1) {
      allMatches[obj1Keys[i]] = obj1Values[i];
     }
    
     return allMatches;
}

console.log(keyFinder(objOne, objTwo));

// Release 2: Generate Random Test Data

// Define function to get random integer from two given numbers
function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min;
}

// Define function to generate a word randomly from alphabet
// Declare empty string to build on
// Use random number generator to determine length of string
// Loop length of string times and pick another random letter from 
// alphabet to add to empty string
var generateWord = function() {
  var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  var buildWord = "";

    for (var i = 0; i < getRandomInt(2, 10); i++) {
      buildWord += chars[getRandomInt(0, 26)];
    }
    return buildWord;
}

// Define function that takes a length of array desired
// Call generateWord function for the amount of times indicated 
// Push the generated word into array to store
var randomWordArray = function(length) {
  var randomWords = [];
  for (var i = 0; i < length; i++) {
    randomWords.push(generateWord());
  }
  return randomWords;
}

for (var i = 0; i < 10; i++) {
 newArray = randomWordArray(getRandomInt(5, 10));
 console.log(newArray);
 console.log("The longest in the array is:");
 console.log(longest(newArray));
}

