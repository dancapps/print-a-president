//this is going to be the file where we pass something
//depending on what we pass is what message we will display


export function displayMessage(type){

	let message;

	switch(type){

		case "login": 

		message = "Must be logged in to checkout a piece";

			$(".messages").html(message);
			break;

		case "checkedOut":

			message = "Current user has a piece checked out already";
			$(".messages").html(message);
			break;

		case "pieceCheckedOut":

			message = "That piece is currently checked out, pick another one";
			$(".messages").html(message);
			break;

		case "clear":
		
			message = "";
			$(".messages").html(message);
			break;


		case "homeScreen":

			message =
						"<div class='rule ruleTitle'>Follow these 7 easy steps to help rebuild history</div>" +
						"<div class='rule'>1. Choose your section</div>" +
						"<div class='rule'>2. Choose your piece</div>" +
						"<div class='rule'>3. Check out your selection</div>" +
						"<div class='rule'>4. Print your piece</div>" +
						"<div class='rule'>5. Prep your piece</div>" +
						"<div class='rule'>6. Mail your piece</div>" +
						"<div class='rule'>7. Tell us about yourself</div>";

			$(".rules").html(message);

		break;

	}

}