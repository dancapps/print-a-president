 
import { get_single_table_url, get_mainmodel_url } from '../globalVars';


 export function getData(table){

	var goodData;
	console.log("getData table", table);

	if(table == "mainmodel"){

		console.log("IF TABLE IS MAINMODEL", table);

		$.ajax({

			url: get_mainmodel_url,
			async: false,
			dataType: 'json',
			success: function(result){

				console.log("ajax getMainmodel", result);

				goodData = result;
			
			},
			error: function(){
				console.log("AJAX WAS BAD")
			}
		});

		return goodData;

	} else {

		console.log("NOT THE MAINMODEL", table);
		
		var returnData;

		$.ajax({

			url: get_single_table_url,
			async: false,
			dataType: 'json',
			data: {
				tableName: table
			},
			success: function(result){

				//console.log("ajax test");
				//console.log(result);

				returnData = result;
			},
			error: function(){
				console.log("AJAX WAS BAD")
			}
		});
	}

	//console.log("result", returnData);
	return returnData;
}