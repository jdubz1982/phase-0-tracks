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
    if (arr[i] > long) {
      long = arr[i];
    }
  }
  return long;
}


var test = ["house", "car", "television", "computer", "stove"];

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



