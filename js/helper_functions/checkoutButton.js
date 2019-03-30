//all of the helper functions for anything that has to do with the checkout button

import { checkout_check_url } from '../globalVars';

export function hideCheckoutButton(){

	$(".checkoutButton").css("display", "none");

	$(".checkoutButton").removeAttr('href');

}

export function showCheckoutButton(fileName){
	console.log("SHOW CHECKOUT BUTTON");
	$(".checkoutButton").css("display", "flex");

	

	console.log("FILENAME", fileName);

	if(!fileName){
		console.log("no file name")
	} else  {

		//Sets the href for the download if we are passed one
		setLink(fileName);
	}

	
}

function setLink(fileName){

	console.log("filename", fileName);
	let link = `http://bdrdev.co/projects/printapresident/files/${fileName}`;

	//+ fileName;

	//This is how I am setting the link for the user to download one of the
	$(".checkoutButton").attr('href', link);

}

export function getClickedFileName(tableData, name){
	let fileName;

	//loops the the array of objects to find the entry where the material name matches then we return the actual file name
	tableData.forEach(function(element){
		if(element.material_name === name){
			console.log(element.file_name);

			console.log("FILENAME FROM HELPER FUNCTION", element.file_name);

			fileName = element.file_name;
		}
	})

	return fileName;
}

//This is the function that checks if the current logged in user has a piece checked out or not
export function checkIfCheckedOut(userId){

	console.log("CHECKIFCHECKEDOUT");

	let checkedOutArray = [];

	$.ajax({
		url: checkout_check_url,
		data: {
			userId: userId
		},
		dataType: 'json',
		async: false,
		success(result){
			console.log("RESULT", result);

			checkedOutArray = result;
		}

	})

	return checkedOutArray;
}

