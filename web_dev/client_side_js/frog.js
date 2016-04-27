console.log("Testing")

function addTextShadow(){
	var frogMiscText = document.getElementsByTagName('p')
	var frogText = frogMiscText[0]
	frogText.style.textShadow = "2px 2px #008000";
}

addTextShadow()
