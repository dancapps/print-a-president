//Importing all of the helper functions for the api

console.log("page", page);

import { getTable, getId } from './helper_functions/getTable.js';
import { generateBackButton, backButtonFunctionality, destroyBackButton } from './helper_functions/backButton';

//need to see with this one, not sure about it
import { setCheckedOutColors, setClickedColor, resetColor, colorOffset } from './helper_functions/blockColor';

//look at this too
import { hideCheckoutButton, showCheckoutButton, getClickedFileName, checkIfCheckedOut } from './helper_functions/checkoutButton';


import { getData } from './helper_functions/getData';
import { displayMessage } from './helper_functions/displayMessage';

//need to do this
import { checkout_piece_url, reset_user_piece_url } from './globalVars';

import { getCurrentDate } from './helper_functions/date';

if(page == 'index'){


//passed to us based off the currently logged in user
console.log("currentUserId", currentUserId);
console.log("currentUserRole", currentUserRole);


var checkedOut = [];

var current, tableData, pieceCurrentlyClicked, currentPieceTable, mainModel;


//This function does the checking out of the file
//we need to check to see if there is an href attribute 
$(".checkoutButton").click(function(){

	//here we need to check if there is an href is so do the code we have here
	//if not we need to have a separate function that will prompt the user to login

	if($(".checkoutButton").attr('href') === undefined){

		//here is where we will prompt the user to sign in	
		displayMessage("login");

	} else {

		//console.log("checkout");
		console.log("pieceCurrentlyClicked", pieceCurrentlyClicked.material.name);
		console.log("currentPieceTable", currentPieceTable);
		console.log("currentUserId", currentUserId);

		let today = getCurrentDate();

		//This is how we set the pieces as checked out in the database
		$.ajax({
			url: checkout_piece_url,
			data: {
				tableName: currentPieceTable,
				materialName: pieceCurrentlyClicked.material.name,
				userId: currentUserId,
				checkoutDate: today
			},
			success: function(result){
				console.log("AJAX SUCCESS", result);

				checkedOut.push(pieceCurrentlyClicked.material.name);
				console.log("checkedOut array", checkedOut);
				setCheckedOutColors(checkedOut, mainModel);
				hideCheckoutButton();
			}
		});

		//here is where we need to set the step to 0, and the step date to current date
		$.ajax({
			url: reset_user_piece_url,
			data: {
				userId: currentUserId,
				currentDate: today
			},
			success: function(result){
				console.log("AJAX SUCCESS", result);
			}
		})


	}
});


//This is the funcion that will load each 3D model, 
//we will load them in based on the urlid that is
//given to us from sketchfab

//if you just call the function with no urlid this will just load the main 3D harrison model, if you pass
//an id it will load that model
function displayModel(urlid){

    console.log("displayModel");
    
    var iframe = document.getElementById("api-frame");
    var urlid;

    console.log("urlid", urlid);

    //function with no argument, loads in the main model
    if(!urlid){
        console.log("its blank");
        urlid = "dab9d97c24e1447eab460d05f8f4753e";

        displayMessage("homeScreen");
    //function with an argument, loads the model passed
    } else {

    }

    mainModel = new SketchfabAPIUtility(urlid, iframe, onSketchfabUtilityReady,{ui_infos: 1, ui_controls: 1, 
    	continuous_render: 0,ui_stop:1, supersample: 1,ui_inspector:1, ui_fullscreen:1,scrollwheel:0, preload:1, 
    	autostart:1, autospin:0, annotations_visible:1});

} //end displayModel


//This runs when the utility is ready, here is where we will do alot of logic

//we can pass the current model to all other functions here that might need it
function onSketchfabUtilityReady() {
    console.log("onSketchfabUtilityReady");

    displayMessage("clear");


    current = mainModel.urlID;

    //let dataToGet;

    //this returns the section that we clicked on
    let dataToGet = getTable(current);

    //tableData is an array of objects based on what section the user clicked on
    tableData = getData(dataToGet);
    console.log("TABLE DATA", tableData);

    if(dataToGet != "mainmodel"){
    	currentPieceTable = dataToGet;
    	generateBackButton();
    } else {
    	console.log("CHECK IF ALL THE SECTIONS PIECES ARE CHECKED OUT", tableData);

    	let piecesFinished = [];

    	tableData.forEach(function(piece){
    		console.log("value", piece.section);

    		//now we need to call a function that will go and get all of the pieces that have

    		let pieces = getData(piece.section);

    		//console.log("pieces", pieces);

    		let length = pieces.length;
    		let num = 0;

    		pieces.forEach(function(value){
    			//console.log("piece", value);
    			if(value.finished == "true"){
    				console.log("piece is finished");
    				num++
    			}
    		})

    		if(num === length){
    			console.log("ALL THE PIECES ARE CHECKED OUT");

    			//here is where we set the color red
    			console.log(piece.section + ' is finished');

    			piecesFinished.push(piece.material_val);
    		}

    	})

    	//maybe here we need to set the color red
    	console.log("PIECES FINISHED", piecesFinished);
    	setCheckedOutColors(piecesFinished, mainModel);
    }

    
    

    checkedOut = [];

    tableData.find(function(element){

    	if(element.checked_out === "true" || element.finished === "true"){
    		checkedOut.push(element.material_name);
    	} else {
    		//I think here is where we offset the colors?


    		//console.log("color offset", element.material_name);

    		//colorOffset(element.material_name, mainModel);
    	}
    })

    //checkedOut is an array of pieces that are checked out
   	console.log("checkedOut", checkedOut);

    setCheckedOutColors(checkedOut, mainModel);
    modelFunctions();

    
}



function modelFunctions() {

	var materialHasVal;

	mainModel.api.addEventListener('click', function(event){

	    console.log("event", event);

	    pieceCurrentlyClicked = event;
	    //name is the name of the material that we clicked on
	    let name = event.material.name;

	    console.log('NAME I AM LOOKING FOR', name);

	    

	    //checked out is the array of pieces that are checked out
	    //console.log("checkedOut", checkedOut);
	    
	    //console.log("MAINMODEL.URLID", mainModel.urlID);

	    //Runs if the user is looking at one of the eight pieces
	    if(mainModel.urlID != "dab9d97c24e1447eab460d05f8f4753e"){

	    	//console.log("user is not on the home screen");

	    	//next we check to see if the user is logged in
	    	if(currentUserId != null){

	    		console.log("user is logged in");

		    	//Next we check to see if the current user has a piece checked out
		    	var checkedOutArray = checkIfCheckedOut(currentUserId);

	   			console.log("checkedOutArray", checkedOutArray);

	   			//Here is the check, if this is 0 the current user doesnt have a piece checked out
	   			if(checkedOutArray.length == 0){

	   				//Runs if the user doesnt have a piece checked out
	   				console.log("User can checkout");

	   				//This runs if the piece clicked on is already checked out
	   				if(checkedOut.includes(name)){
				   		
				   		//here is where we hide the checkout button
				   		displayMessage("pieceCheckedOut");

				   		console.log("Remove checkout button");

				   		//Now I am here doing this so that I have something to typ 
				   		hideCheckoutButton();

				   	//This runs if the user clicks on a piece that isnt checked out
				   	} else {

				   		setClickedColor(name, mainModel);

				   		//here is where we show the checkout button

				   		console.log("Show the checkout button");
				   		
				   		//console.log("tableData", tableData);

				   		var fileName = getClickedFileName(tableData, name);

				   		console.log('%cMaterial Name Clicked On', 'color: red;');
	    				console.log(name);
				   		console.log("%cfileName", 'color: orange;');
				   		console.log(fileName);

				   		//pass the fileName to the click function for download
				   		displayMessage("clear");
				   		showCheckoutButton(fileName);

				   		
				   	}

	   			} else {
	   				//Runs if the current user has a piece checked out already
	   				console.log("Current user has a piece checked out already");

	   				displayMessage("checkedOut");
	   			}

	    	} else {
	    		//This runs if the user is viewing one of the pieces and is not logged in
	    		console.log("user is not logged in");

	    		if(checkedOut.includes(name)){
			   		//here is where we hide the checkout button
			   		displayMessage("pieceCheckedOut");

			   		console.log("Remove checkout button");

			   		
			   		hideCheckoutButton();

			   	//This runs if the user clicks on a piece that isnt checked out
			   	} else {
		    		setClickedColor(name, mainModel);

		    		displayMessage("clear");

		    		//we dont pass a fileName so we can tell the function a user isnt logged in
			   		showCheckoutButton();
			   	}
	    	}

	    } else {

	    	console.log("user is on the home screen");

	    	console.log("HERE IS WHERE WE NEED TO PUT GOING TO ANOTHER PIECE?")
	    }

		//This is used to reset the last picked color
		if(materialHasVal) {
	        if ($.inArray(materialHasVal,checkedOut) > -1){
	            setCheckedOutColors(checkedOut, mainModel);
	        }else {
	            resetColor(materialHasVal, mainModel);
	        }
	    }


	    materialHasVal = event.material.name;
	    console.log("materialHasVal", materialHasVal);

	   	//This is how we view each piece from the main model
	    if(mainModel.urlID == "dab9d97c24e1447eab460d05f8f4753e"){

	    	var section = "section_" + materialHasVal.substring(4);
	    	let newUrl = getId(materialHasVal);

	        displayModel(newUrl);
	    }

	});
} //Ends modelFunctions function



$(document).ready(function(){


	
	//this loads in the full ben harrison model
	displayModel();
})

}

