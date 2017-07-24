
//----------------
// Under your commented pseudocode, implement your function in JavaScript. Test it with driver code if you like. Anytime you'd like to run your code, you can run node explore.js from the js folder in your terminal, similar to how you run Ruby programs.
// Add driver code that calls the function in order to reverse a string of your choice (as long as it's not a palindrome!), and stores the result of the function in a variable.
function reverseWord(text) {
  var newWord = "";

  for (var i = text.length - 1; i>=0; i--) {
    newWord += text[i];
  }
  return newWord;
}

var reversedWord = reverseWord("hello world")



// Add driver code that prints the variable if some condition is true. The condition can be a silly one, like 1 == 1.
if (true) {
  console.log(reversedWord);
}