//import { displayModel } from '../apiFunctionality';
import { hideCheckoutButton } from './checkoutButton';

//This file is for all of the functions that deals with the back button to go
//back to the main model

export function generateBackButton(){
	console.log("need a back button");

	$(".backButtonLocation").append("<div class='api_back_button'>BACK TO MAIN MODEL</i></div>");

	$(".api_back_button").click(function(){

		backButtonFunctionality();
	})
}

export function backButtonFunctionality(){
	console.log("clicked the back button");

	//displayModel();

	//window.location = "http://bdrdev.co/projects/printapresident/index.php"

	window.location = "http://localhost/print-a-president/index.php";
	// window.location = "http://localhost/print-a-president/index.php#printingWrapper";

	
	hideCheckoutButton();
	destroyBackButton();
}

export function destroyBackButton(){

	console.log("destroyBackButton", $(".api_back_button"));
	$(".api_back_button").remove();
}
