//---release 0
//function to return longest string in array
function longestWord(array){
  var longest="";
  for (var i = 0; i < array.length; i++){
    if (array[i].length > longest.length) {
      longest = array[i];
    }
  }
  return (longest);
}
//driver code
console.log (longestWord(["long phrase", "longest phrase", "longer phrase"]));

//------Release 1: Find a Key-Value Match
//write a function that takes two objects and checks to see if the objects share at least one key-value pair. (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.) Here are some sample objects and their expected return values:
var person1 = {name: "Steven", age: 54};
var person2 = {name: "Tamir", age: 54};
var pet1 = {animal: "Dog", legs: 4};
var pet2= {animal: "Parrot", legs: 2};


function shareKeyValue(valOne, valTwo) {
  for (var keyOne in valOne) {
    for (var keyTwo in valTwo) {
      if (keyOne === keyTwo) {
        if (valOne[keyOne] === valTwo[keyTwo]) {
          return true;
        }
      }
    }
  }
  return false;
}
//driver code release 1
console.log(shareKeyValue(pet1,pet2));
console.log(shareKeyValue(person1,person2));





//-------Release 2: Generate Random Test Data
//Write a function that takes an integer for length
//builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts).
//The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)

function wordGen(number) {
  var newStringArray = [];

  for (var i = 0; i < number; i++) {
    var abc = "abcdefghijklmnopqrstuvwxyz";
    var randomString = "";
    var randomNum = Math.floor(Math.random() * 10) + 1;
  for (var j = 0; j < randomNum; j++ ) {
    randomString += (abc[Math.round(Math.random() * 25)]);
  }

  newStringArray.push(randomString);
  }
  return newStringArray;
}

for (var i = 0; i < 10; i++) {
  console.log(longestWord(wordGen(10)));
}
