
//need to do a check to be sure we know that they are an admin

import { displayCheckedOutList, getTotalPieces, getPiecesCheckedOut, 
	getFinishedPieces, getPiecesLeft, adminReturnPiece, getChecklist } from './helper_functions/adminHelper';
import { get_checkedout_pieces_url, get_checklist_url } from './globalVars';




if(page == 'admin'){




	//The first thing we need to do is get all the users that have a piece checked out
	//function that gets user data of all users that have pieces checked out
	function getCheckedOutData(){

		$.ajax({
			url: get_checkedout_pieces_url,
			dataType: 'json',
			success: function(result){
				
				console.log("Ajax Success", result)

				displayCheckedOutList(result);

				
				
			}
		})
	}

	function getCurrentStats(){


		getTotalPieces();
		getPiecesCheckedOut();
		getFinishedPieces();
		getPiecesLeft();

		
	}



	$(document).ready(function(){

		console.log("Admin page is ready");

		//generates a list of currently checked out pieces and stats to go with them
		getCheckedOutData();

		//gets pieces finished, currently checked out, finished, total pieces
		getCurrentStats();

		//gets the steps so the admin has an idea of the progress people are making when looking at what step theyre on
		getChecklist();

	})
}