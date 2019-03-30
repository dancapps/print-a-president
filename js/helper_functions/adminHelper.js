

import { get_checklist_url, get_total_pieces_url, get_checkedout_pieces_url, get_finished_pieces_url, admin_return_piece_url } from '../globalVars';
import { getCurrentDate } from './date.js';

export function getTotalPieces(){

	let totalPieces;

	$.ajax({
		url: get_total_pieces_url,
		dataType: 'json',
		async: false,
		success: function(totalPieces){
			
			console.log("totalPieces", totalPieces.length);

			totalPieces = totalPieces.length;

			$("#totalPieces").html("Total Pieces: " + totalPieces);

			
			
			
		},
		error: function(){

			console.log("error getting checklist data")
		}
	})

}

export function getPiecesCheckedOut(){

	let checkedOutPieces;

	$.ajax({
		url: get_checkedout_pieces_url,
		dataType: 'json',
		success: function(checkedOutPieces){
			
			//console.log("checkedOutPieces", checkedOutPieces.length);

			checkedOutPieces = checkedOutPieces.length;

			$("#piecesCheckedOut").html("Pieces Checked Out: " + checkedOutPieces);

			
			
		},
		error: function(){

			console.log("error getting checklist data")
		}
	})


}

export function getFinishedPieces(){

	let finishedPieces;

	$.ajax({
		url: get_finished_pieces_url,
		dataType: 'json',
		success: function(finishedPieces){
			
			console.log("finishedPieces", finishedPieces.length);

			finishedPieces = finishedPieces.length;

			$("#piecesFinished").html("Finished Pieces: " + finishedPieces);

			
			
		},
		error: function(){

			console.log("error getting checklist data")
		}
	})


}

export function getPiecesLeft(){

	$.ajax({
		url: get_total_pieces_url,
		dataType: 'json',
		async: false,
		success: function(totalPieces){
			
			//console.log("totalPieces", totalPieces.length);

			totalPieces = totalPieces.length;

			$.ajax({
				url: get_finished_pieces_url,
				dataType: 'json',
				success: function(finishedPieces){
					
					//console.log("finishedPieces", finishedPieces.length);

					finishedPieces = finishedPieces.length;

					console.log("pieces Left: ", totalPieces - finishedPieces);

					$("#piecesLeft").html("Pieces Left to Complete: " + (totalPieces - finishedPieces))

					
					
				},
				error: function(){

					console.log("error getting checklist data")
				}
			})
			
		},
		error: function(){

			console.log("error getting checklist data")
		}
	})
}


export function displayCheckedOutList(users){

	console.log("users", users);

	//we need to get the step the user is on and how many days they have been on that step
	$.ajax({
		url: get_checklist_url,
		dataType: 'json',
		success: function(steps){
			
			console.log("checklist", steps)

			printCheckedOutList(users, steps);
			
		},
		error: function(){

			console.log("error getting checklist data")
		}
	})

}

function adminReturnPiece(piece_id){
	console.log("admin return piece", piece_id);

	$.ajax({
		url: admin_return_piece_url,
		data: {
			piece_id: piece_id
		},
		success: function(result){
			
			console.log("was success", result);

			//my site
			///window.location = "http://bdrdev.co/projects/printapresident/admin.php";

			//localhost
			//window.location = "http://localhost/BenHarrisonSite4/admin.php";
			
		}
	})


}


function initReturnButton(){

	$(".returnPiece").click(function(){

		adminReturnPiece(this.id);
	})
}

function printCheckedOutList(users, steps){

	let currentDate = getCurrentDate();

	

	//console.log("currentDate", currentDate);

	currentDate = new Date(currentDate);

	for(let user of users){

		console.log("currentDate", currentDate);


		let checkedDate = "'" + user.checkOutDate + "'";
		let stepDate = "'" + user.step_start_date + "'";



		checkedDate = new Date(checkedDate); 
		stepDate = new Date (stepDate);

		console.log("stepDate", stepDate);

		let daysChecked = ((currentDate - checkedDate) / 86400000);
		let stepDays = ((currentDate - stepDate) / 86400000);


		let singleCheckout = 
		"<div class='singleCheckout' id='" + user.piece_id + "'>" + 

		"<div class='checkoutStats'>" + 

		"<div>" + user.firstname + " " + user.lastname + " - " + user.email + "</div>" +
		"<div>Checked out on: " + user.checkOutDate + ". (" + daysChecked + " days)</div>" +
		"<div>Step: " + user.step + " - " + steps[user.step].name + "</div>" + 
		"<div> Step was started on: " + user.step_start_date + ". (" + stepDays + " days)</div>" +  

		"</div>" + 
		
		"<div class='returnPiece' id='" + user.piece_id + "'>RETURN PIECE</div>" + 

		"</div>";




		$("#checkedOutList").append(singleCheckout);
	}

	initReturnButton();

}


//here is where we will get the checklist from the database
export function getChecklist(){

	//we only want the checklist if they have a piece cheked out, we will need to do a check first to see if
	//they do have a piece, if so do all this, if not just skip it

	console.log("GET CHECKLIST FUNCTION");

	$.ajax({
			url: get_checklist_url,
			dataType: 'json',
			success: function(checklist){
				console.log("AJAX SUCCESS", checklist);

				printChecklist(checklist);

				//I think maybe here is where we need to get the step that the user is on based off of the userId

			}
		})
}


function printChecklist(checklist){

	console.log("printChecklist");

	checklist.forEach(function(value){

		console.log("value", value);

		$(".checklistLocation").append("<div class='checklistItem'>" + value.id + ": " + value.name + "</div>")
	})
}

