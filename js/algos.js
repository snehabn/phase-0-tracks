//Release 0

//Method: function that takes in an array of words or phrases and returns the longest word or phrase.

//Input: array of words or phrases

//Steps:
/// Loop through the array:
/// Find the length of the zeroth element of the array --> set that to max length.
/// IF the length of the subsequent element is greater than the previous longest element, set the subsequent element to be the longest word and its length as the max length.
/// ELSE move to the subsequent element in the array, until all elements have been compared.

//Output:
/// Return the longest word 

function longestWord(arrayOfwords){
	
	if (arrayOfwords == [] || arrayOfwords == undefined || arrayOfwords == null) {
		console.log("Invalid entry.");
		return "";
	}

	var maxLength = arrayOfwords[0].length;
	var maxWord = arrayOfwords[0];
	

	for (var i = 0; i < arrayOfwords.length; i++) {
		if (arrayOfwords[i].length > maxLength){
			maxLength = arrayOfwords[i].length;
			maxWord = arrayOfwords[i];
		}
	}

	return maxWord;
}




// Release 1

// Method: write a function that takes two objects and checks to see if the objects share at least one key-value pair.

// Input: two objects to be compared

// Steps: 
/// Loop over the key and value pairs of one object and compare to the other
//// IF the the value of a key of an object is equal to the value of a key of the second object, return true.
///ELSE return false.

// Output: true if there are matching pairs, false if there are not.


function objectCompare(object1, object2) {
	for (var key in object1) {
		if (object1[key] == object2[key]) {
			// console.log("True");
			return true;
		}
	}
	return false;// had to insert the return false outside of the for loop to allow the program to loop through all of the key-value pair comparisons.
}

//Driver codes

//Release 0 
console.log(longestWord(["apples", "oranges", "pineapples", "kiwi"]));


//Release 1
console.log(objectCompare({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
console.log(objectCompare({name: "Steven", age: 54}, {name: "Tamir", age: 86}));
console.log(objectCompare({name: "Bob", age: 54, sport: "baseball"}, {name: "Joe", age: 87, sport: "baseball"}));
