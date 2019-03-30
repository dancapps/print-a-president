<?php


include './includes/config.php';


include ABSOLUTE_PATH . '/includes/header.php';
include ABSOLUTE_PATH . '/includes/databaseConnect.php';
include ABSOLUTE_PATH . '/includes/main_nav.php';
?>


    <!--youtube video-->
<div class="wrapper">
<div id="homeSection">
    <div class="homeLeft">
<!--        <iframe id="calloutVideo" src="https://www.youtube.com/embed/NtR6UVUB7z0?ecver=2&modestbranding=0&rel=0&showinfo=0&color=white&fs=0&loop=1&autoplay=1&controls=0" frameborder="0" ></iframe>-->
        <img src="assets/images/BH_Logo.png" alt="Benjamin Harrison Presidential Site Logo">
    </div>

    <div class="homeRight">
        <div class="homeQuarterImage">
            <div class="homeQuarterImageOverlay">
                <h1>Print a President</h1>
            </div>
        </div>
        <div class="homeQuestionWrapper">
            <div class="questions">
                <div id="who" class="question">
                    <h1>Who?</h1>
                </div>

                <div id="what" class="question">
                    <h1>What?</h1>
                </div>

                <div id="when" class="question">
                    <h1>When?</h1>
                </div>

                <div id="where" class="question">
                    <h1>Where?</h1>
                </div>

                <div id="why" class="question">
                    <h1>Why?</h1>
                </div>
            </div>
            <div id="answer">

            </div>
        </div>
    </div>
</div>

    <!--api frame for sketchfab-->
    <div id="printingWrapper">

        <div class="api_detail_wrapper">
            <div class="api_detail_section">
                <?php
                if(isset($_SESSION["user_id"])){
                    //echo "SOMEONE IS LOGGED IN";
                }
                ?>

                <div class="checkoutButtonWrapper">
                    <a class="checkoutButton">CHECKOUT</a>
                </div>

                <div class="messages"></div>
                 <div class="rules"></div>

                <div class="backButtonLocation"></div>
            </div>
        </div>

        <iframe id="api-frame" frameborder="0"></iframe>

    </div>

    <!--contributors section-->
    <div id="contributorWrapper">
        <div id="contributorTitle">
            <h1>THANK YOU</h1>
        </div>
<!--                <div id="contributorContent">-->
<!--                    <h1>|| Your Name Here, Your Organization Here ||</h1>-->
                    <?php

                    $sql = "SELECT firstname, lastname FROM users";
                    $wordcloudArray = array();
                    $idxNum = 0;
                    $wordcloudArray += array($idxNum=>'THANK YOU');


                    if($result = mysqli_query($conn, $sql)) {
                        while($row = mysqli_fetch_row($result)) {
//                            $row = $idxNum.$row;
//
                            $idxNum = $idxNum + 1;
//                            echo $idxNum;
//                            print_r($row[0]);
//                            print_r($row[1]);
//                            $wordcloudArray[] = $row;
                            $wordcloudArray += array($idxNum=>$row[0] . ' ' . $row[1]);

//                            echo ($idxNum);

                        }
                        echo json_encode($wordcloudArray);
                    }

//                    $result->close();

//                        $row = mysqli_fetch_array($result,MYSQLI_NUM);
//                        printf ("%s %s \n",$row[0],$row[1]);
//                        // set array
//                        $wordcloudArray = array();
//
//                        // look through query
//                        while($row = $query){
//
//                            // add each row returned into an array
//                            $wordcloudArray[] = $row;
//
//                            // OR just echo the data:
//                            echo $row['firstname, lastname']; // etc
//
//                        }
//
//
//                    //Handle selection errors
//                    if (!$query) {
//                        $errno = $conn->errno;
//                        $errmsg = $conn->error;
//                        echo "Selection failed with: ($errno) $errmsg<br/>\n";
//                        $conn->close();
//                        require_once ('includes/footer.php');
//                        exit;
//                    }
//                    echo "<p>";
//                    //create a while loop here to insert one row for each user.
//                    while (($row = $query->fetch_assoc()) !== NULL) {
//                        echo "<b>" , $row['firstname'] ,' ' , $row['lastname'] ,  "</b>" , "," , ' ' , $row['organization'] , '  ' , "||" , '  ';
//                    }
//                    echo "</p>";
//                    ?>
<!--                </div>-->
    </div>


    <div id="collaboratorWrapper">
        <div id="collaboratorTitle"><h1><b>COLLABORATORS</b></h1></div>
        <div id="collaboratorContent">
            <p>
                <b>Charles Hyde & Jennifer Capps</b>, Benjamin Harrison Presidential Site | <b>Robert Sunderlin & Tori Roessler</b>, IUPUI 2017 Fall Capstone Class | <b>Zebulun Wood</b>, IUPUI | <b>Rob Lastinger</b>, IUPUI 3D Lab | <b>Jeff Maurer</b>, Virtual Xperience | <b>Jeff Rogers & Chauncey Frend</b>, Advanced Visualization Laboratory | <b>Jennifer Johnson</b>, Center for Digital Scholarship | <b>Scott Umsteadt & Levi Conklin</b>, IUPUI 2017 Spring N420 Class
            </p>
        </div>
    </div>


    <script type="text/javascript" src="https://static.sketchfab.com/api/sketchfab-viewer-1.3.1.js"></script>
    

    <?php
    if(isset($_SESSION["user_id"])){
        ?>

        <script>
            let currentUserId = '<?php echo $_SESSION["user_id"] ?>';
            let currentUserRole = '<?php echo $_SESSION["user_role"] ?>';
        </script>

        <?php
    } else {
        ?>

        <script>
            let currentUserId = null;
            let currentUserRole = null;
        </script>

        <?php
    }

    ?>


    

    
    <script> let page="index"; </script>

    <script src="./build/main.bundle.js"></script>


<?php
include ABSOLUTE_PATH . '/includes/footer.php';
?>