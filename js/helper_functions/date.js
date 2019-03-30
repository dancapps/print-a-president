//any function that has to do with dates

export function getCurrentDate(){

	var date = new Date();
	let yyyy = date.getFullYear();
	let dd = date.getDate();
	let mm = date.getMonth() + 1;

	console.log("day", dd);

	let today = yyyy + '-' + mm + '-' + dd;

	console.log("today", today);

	today = "'" + today + "'";

	return today;
}