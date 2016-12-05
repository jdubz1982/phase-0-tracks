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




