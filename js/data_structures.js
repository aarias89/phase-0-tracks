var colors = ["blue", "red", "green", "purple"];
var horseNames = ["Edd", "John", "Mike", "Andras"];
horseNames.push("Chris");
colors.push("brown");
var horseList = {};

for (var x = 0; x < horseNames.length; x++){
  horseList[horseNames[x]]= colors[x];
}

//console.log(horseList);

//--------------------------------

// write a constructor function for a car.

function Car(make,model,year){
   this.make = make;
   this.model = model;
   this.year = year;

   this.vroom = function (){ console.log("Vroom Vroom");};
 }
 var firstCar = new Car ("Benz", "Fakemodel", "2017");
 console.log(firstCar);
 firstCar.vroom();

var secondCar = new Car ("Outti", "TT", "2017");
 console.log(secondCar);
 secondCar.vroom();
// Give it a fewdifferent properties of various data types, including at least one function.
//Demonstrate that your function works by creating a few cars with it.