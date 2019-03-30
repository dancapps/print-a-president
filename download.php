 <?php

    include './includes/config.php';

    //$name = $_GET["name"];

    //echo $name;

    //echo "<br>" . ABSOLUTE_PATH;

    // header('Content-Description: File Transfer');
    // header('Content-Type: application/force-download');
    // header("Content-Disposition: attachment; filename=\"" . basename($name) . "\";");
    // header('Content-Transfer-Encoding: binary');
    // header('Expires: 0');
    // header('Cache-Control: must-revalidate');
    // header('Pragma: public');
    // header('Content-Length: ' . filesize($name));
    // ob_clean();
    // flush();
    // readfile( ABSOLUTE_PATH . "/files/" . $name); //showing the path to the server where the file is to be download
    // exit;


    $file = basename($_GET["name"]);
    echo $file;
    $file = URL_ROOT . '/files/' . $file;
    echo "<br>" . $file;

    if(!file_exists($file)){ // file does not exist
        die('file not found');
        echo "FILE NOT FOUND";
    } else {

        echo "file found";
//     header("Cache-Control: public");
//     header("Content-Description: File Transfer");
    header("Content-Disposition: attachment; filename=$file");
//     header("Content-Type: application/zip");
//     header("Content-Transfer-Encoding: binary");

//     // read the file from disk
    // readfile($file);
}