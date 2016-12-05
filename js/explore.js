// Define reverse that takes a string from user and returns the reverse of the string
  // Take string and split into array of letters. 
  // Loop through array by counting down from last to first, 
  // Store each in new array
  // Join new array to create reversed word



var reverse = function(array) {
  var wordArray = array.split("");
  var reversedArray = [];

  for (var i=wordArray.length; i >= 0; i--) {
    reversedArray.push(array[i]);
  }

  var reversedWord = reversedArray.join("");
  return reversedWord

};

var newWord = reverse("hello world");

if (newWord.length > 3) {
  console.log(newWord);
}
else {
  console.log("Your word is 3 letters or less."); 
}
 




