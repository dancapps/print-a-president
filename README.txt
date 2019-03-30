

When making changes to this site from computer to server / other computers there a couple of things that need to be changed

	1. Make sure in 'classes/data.class.php' the database connection is correct

	2. In 'includes/config.php' change ABSOLUTE_PATH and URL_ROOT to the correct paths

	3. In 'includes/databaseConnect.php' the database connection is correct

	4. In 'js/globalVars.js' make sure the base variable is the correct url 

	5. In 'js/helper_functions/backButton' make sure that the link in the backButtonFunctionality function is correct

	6. In 'js/helper_functions/adminHelper' make sure that the link in the adminReturnPiece function is correct


A couple of notes if you are uploading this to a server

	1. DO NOT upload 'node_modules'

	2. You do not need the whole 'js' folder, only 'build' and the 'js/SketchfabAPIUtility.js' file

	3. Do not need 'sass' folder, only 'css' folder

	4. Do not need '.idea'

	5. make sure you upload the database file to the server as well

If you download this from gitHub or from Zeb

	1. run 'npm install' in the command line inside the project to get the 'node_modules' folder

When working on this project

	1. run 'npm run webpack' to compile the js file, this will also compile whenever changes are made so no need to run it every time you make a change

	2. run 'npm run watch-css' this will compile the sass files into a single css file, again this will run when a change is made so no need to run it evertime you save