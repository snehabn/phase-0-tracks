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

console.log(longestWord(["apples", "oranges", "pineapples", "kiwi"]));