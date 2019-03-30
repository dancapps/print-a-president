<?php


include './includes/config.php';


include ABSOLUTE_PATH . '/includes/header.php';
include ABSOLUTE_PATH . '/includes/databaseConnect.php';
include ABSOLUTE_PATH . '/includes/main_nav.php';

?>

<div id="profileWrapper">

    <div class="nothingRented"></div>

    <div class="proContent">

        <ul class="profileChecklist"></ul>

        <div class='profileButtons'>
            <div class="profileReturnWrapper"></div>

            <div class='downloadButtonWrapper'></div>
        </div>

    </div>

</div>


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


    <script> let page="profile"; </script>

    <script src="./build/main.bundle.js"></script>


    <?php
    include ABSOLUTE_PATH . '/includes/footer.php';
    ?>