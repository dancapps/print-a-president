import { get_checklist_url, get_user_step_url, update_user_step_url, piece_check_url, update_finished_piece_url,
get_user_finished_pieces_url, admin_return_piece_url } from './globalVars'

import { getCurrentDate } from './helper_functions/date';


if(page === 'profile'){

	console.log("profile page");





	let piece;


function checkForPiece(){


	//here is where we need to check if the user has a piece checked out, the only way we show the checklist
	console.log("Check For Piece");

	

	$.ajax({
		url: piece_check_url,
		data: {
			userId: currentUserId
		},
		dataType: 'json',
		success: function(userPiece){
			console.log("userPiece", userPiece);

			if(userPiece.length == 1){

				piece = userPiece;

				//console.log("user has a piece checked out");

				getChecklist();
				showReturnButton();

				showDownloadButton(piece[0]);
			} else {
				$(".profileChecklist").html("");
				$(".profileReturnWrapper").html("");

				$(".nothingRented").html("<h1>No Piece Currently Rented Out</h1>")
			}

			//printChecklist(checklist, userStep);

			//I think maybe here is where we need to get the step that the user is on based off of the userId
		}
	})
}

function initReturn(){

	$(".profileReturn").bind("click", function(){
		console.log("return piece");
		



		userReturnPiece();
		$(".downloadButton").remove();
	})
}

function showReturnButton(){

	$(".profileReturnWrapper").append("<div class='profileReturn'>Return Piece</div>");

	initReturn();
}

function userReturnPiece(){

	let piece_id = piece[0].piece_id;

	$.ajax({
		url: admin_return_piece_url,
		data: {
			piece_id: piece_id
		},
		dataType: 'json',
		success: function(result){
				
				console.log("PIECE WAS RETURNED");

				checkForPiece();

			//I think maybe here is where we need to get the step that the user is on based off of the userId
		}
	})

}


//console.log("currentUserId", currentUserId);

//we need to get the user id

//here is where we will get the checklist from the database
function getChecklist(){

	//we only want the checklist if they have a piece cheked out, we will need to do a check first to see if
	//they do have a piece, if so do all this, if not just skip it

	console.log("GET CHECKLIST FUNCTION");

	$.ajax({
			url: get_checklist_url,
			dataType: 'json',
			success: function(checklist){
				console.log("AJAX SUCCESS", checklist);

				

				//I think maybe here is where we need to get the step that the user is on based off of the userId

				$.ajax({
					url: get_user_step_url,
					data: {
						userId: currentUserId
					},
					dataType: 'json',
					success: function(userStep){
						console.log("AJAX SUCCESS", userStep);

						printChecklist(checklist, userStep);

						//I think maybe here is where we need to get the step that the user is on based off of the userId
					}
				})
			}
		})
}

function printChecklist(result, userStep){

	//clear the div
	$(".profileChecklist").html("");

	console.log("PRINT CHECKLIST");
	console.log("userStep", userStep[0].step);
	userStep = parseInt(userStep[0].step);
	//console.log("CURRENT USER ID", currentUserId);
	//$(".proContent").html("CHECKLIST GOES HERE");

	//we will need an if statement if the id > than the step on the user acct


	console.log("RESULT.LENGTH", result.length);

	let lastId = result.length - 1;

	for(let x = 0; x < result.length; x++){

		if(userStep >= x){
			status = "finished";
		} else {
			status = "notFinished";
		}

		$(".profileChecklist").append("<li class='checklistItem " + status + "' id='" + result[x].id + "'>" + result[x].name + "</li>")
	}

	initButtons(lastId);
}

function initButtons(lastId){
	$(".notFinished").click(function(){
		//here is where we update the checklist on the users checklist

		


		console.log(this.id);

		let step = parseInt(this.id);

		console.log("LASTID", lastId);
		console.log("STEP", step);

		

		let currentDate = getCurrentDate();

		//update the user's step
		$.ajax({
			url: update_user_step_url,
			data: {
				userId: currentUserId,
				step: step,
				step_start_date: currentDate

			},
			success: function(){
				
				console.log("UPDATED");

				getChecklist();

				//I think maybe here is where we need to get the step that the user is on based off of the userId
			}
		});


		if(step === lastId){

            let currentDate = getCurrentDate();

			console.log("WE JUST FINISHED THE LAST PIECE");

			//here is where we are going to update the piece and move the checkedout to finished
			$.ajax({
				type: 'GET',
				url: update_finished_piece_url,
				data: {
					userId: currentUserId,
					finishedDate: currentDate
				},
				success: function(result){
					
					console.log("UPDATED THE LAST PIECE", result);

					getChecklist();

					//I think maybe here is where we need to get the step that the user is on based off of the userId
				}
			})


		}

	})
}

function getFinishedPieces(userId){

	$.ajax({
		url: get_user_finished_pieces_url,
		data: {
			userId: currentUserId
		},
		dataType: 'json',
		success: function(result){
			
			console.log("A LIST OF CHECKED OUT PIECES", result.length);

			

			//I think maybe here is where we need to get the step that the user is on based off of the userId
		}
	})

}

function showDownloadButton(piece){
	console.log("user has a piece checked out", piece);

	let link = `http://bdrdev.co/projects/printapresident/files/${piece.file_name}`;

	$(".downloadButtonWrapper").append("<div class='downloadButton'><a href='" + link + "'>Download Piece</a></div>")
}


$(document).ready(function(){

	console.log("profile is ready");

	checkForPiece();
	getFinishedPieces(currentUserId);
})
}