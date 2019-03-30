<?php 

include './includes/config.php';


include ABSOLUTE_PATH . '/includes/header.php';
include ABSOLUTE_PATH . '/includes/databaseConnect.php';
include ABSOLUTE_PATH . '/includes/main_nav.php';

?>

<div id="adminWrapper">

	<div class="adminTopInformation">


		<div id="currentStats">
			<div class='statsHeader'>General Statistiics</div>
			<div id="totalPieces"></div>
			<div id="piecesCheckedOut"></div>
			<div id="piecesFinished"></div>
			<div id="piecesLeft"></div>
		</div>

		<div id="checklist">

			<div class='statsHeader'>Piece Checklist</div>
			<div class="checklistLocation"></div>

		</div>

	</div>

	
	<div id="checkedOutList">
		<div class='checkedHeader'>Currently Checked Out Pieces</div>

	</div>

</div>

<script> let page='admin' </script>

<script src="./build/main.bundle.js"></script>