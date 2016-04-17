
// Method: Take a string and return the reverse of it.

// Input: String

// Steps:
/// take each character in the string and return in reverse order.
//// starting at the end of the string, FOR each character, return the character and decrement by an index of 1 to the next character
/// append the individual characters to an initialized array
/// join the array of characters

// Output:
/// returns a string of the reverse of input.


function reverse(str_input) {
// var str_input = "Hello!";

	var arr = [];
	for (var i = str_input.length - 1; i >= 0; i--) {
		arr.push(str_input[i]);		
	}
	var joined_output = arr.join("");
	
	return joined_output
}


function cond_output(input) {
	if (reverse(input).length <= 5) {
		console.log("Your word has a length less or equal to 5.");
		console.log(reverse(input));
	}
	else {
		console.log("Your word has a length greater than 5.");
	}
}

cond_output("Papaya");
cond_output("Hello");
