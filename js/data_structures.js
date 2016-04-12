var names = ["prancy", "bob", "charlie", "squirt"];
var colors = ["blue", "purple", "red", "green"];

console.log(names);
console.log(colors);

names.push("jim");
colors.push("orange");

console.log(names);
console.log(colors);

//The keys of your object should be horse names, and the values should be colors


for (var i = 0; i < names.length; i++) {
  console.log(names[i] + ": " + colors[i]);
}

function Car(model, year, color) {
 
  console.log("Drive this car:", this);
  
  this.model = model;
  this.year = year;
  this.color = color;
 }

var anotherCar = new Car("Mini Cooper", 2010, "Black");
console.log(anotherCar);
console.log("Your car is " + anotherCar.model + ".")
console.log("The year of your car is " + anotherCar.year + ".")
console.log("Your car's color is " + anotherCar.color + ".")

console.log("")
var anotherCar = new Car("Subaru", 2014, "White");
console.log(anotherCar);
console.log("Your car is " + anotherCar.model + ".")
console.log("The year of your car is " + anotherCar.year + ".")
console.log("Your car's color is " + anotherCar.color + ".")

console.log("")
var anotherCar = new Car("Dodge", 2008, "Red");
console.log(anotherCar);
console.log("Your car is " + anotherCar.model + ".")
console.log("The year of your car is " + anotherCar.year + ".")
console.log("Your car's color is " + anotherCar.color + ".")


var car = {
  model: 'Dodge', 
  'year': 2008, 
  snow: true, 
    weather: function() { 
      if (this.snow) {
        console.log("Put chains on tires.");
      } else {
        console.log("Good to go!");
      }
    }
};


car.snow = true;
car.weather();

// Release 3
// 1. You can use a for loop to loop through each index for the keys and values.
// 2. Getting input seems straightforward but manipulating that input doesn't seem to be possible within the constructor function. It has to be done outside of the function and can be repetitive.





