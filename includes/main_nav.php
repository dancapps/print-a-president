<?php 

//role = 1 == admin
//role = 2 == regular user
    
if(isset($_SESSION["user_logged"])){

    //logged in user id
    $logged_id = $_SESSION["user_id"];

    //logged in user name
    $login = $_SESSION["user_logged"];

    //logged in user role
    $role = $_SESSION["user_role"];

    //echo $role;
}

?>


<nav class="nav navigation">
    <div class="websiteTitle">
        <h1>Print a President</h1>
    </div>
    <div class="linkWrap">
        <!-- <a href="/index.php"><img type="gif" width="89px" height="50px" src="_LOGO SLICE_1.gif"></a> -->
        <a class="anchor" id="home" href="<?= URL_ROOT ?>/index.php">HOME</a>
        <!-- <a id="about" href="#">ABOUT</a>
        <a id="printing" href="#">PRINTING</a>
        <a id="contributors" href="#">CONTRIBUTORS</a> -->
        <a class="anchor" id="contact">CONTACT</a>
        <!-- show login if login is empty -->
        <?php
        if(empty($login)) {
            echo " <a class='anchor' id='login'>LOGIN</a>";
            echo " <a class='anchor' id='register'>REGISTER</a>";


        }else{ //if logged in, show logout and profile
            echo " <a class='anchor' id='profile' href='" . URL_ROOT . "/profile.php' >PROFILE</a>"; //id="profile"
            echo " <a class='anchor' href='logout.php'>LOGOUT</a>";


            if ($role == 1){
                echo " <a class='anchor' href='admin.php'>ADMIN</a>";
            }
        }
        ?>
    <!-- navigation end -->
    </div>
    <div class="hamburgerMenu">
        <span> <i class="fas fa-bars nav-toggle"></i> </span>
        <ul>

            <li><a class="anchor" id="home" href="<?= URL_ROOT ?>/index.php">HOME</a></li>
            <li><a class="anchor" id="contact">CONTACT</a></li>
            <?php
            if(empty($login)) {
                echo " <li><a class='anchor' id='login'>LOGIN</a></li>";
                echo " <li><a class='anchor' id='register'>REGISTER</a></li>";


            }else{ //if logged in, show logout and profile
                echo " <li><a class='anchor' id='profile' href='" . URL_ROOT . "/profile.php' >PROFILE</a></li>"; //id="profile"
                echo " <li><a class='anchor' href='logout.php'>LOGOUT</a></li>";


                if ($role == 1){
                    echo " <li><a class='anchor' href='admin.php'>ADMIN</a></li> ";
                }
            }
            ?>
        </ul>
    </div>
</nav>

<!--signup Modal-->

<div class="registerModal">
    <div class="bg"></div>
    <div class="registerForm">
        <div class="regHeader">
            <h3>Register for your Print A President Account</h3>
            <div class="closeWrap"><h3 class="regClose">X</h3></div>
        </div>

        <div class="regForm">
            <form action="register.php" method="POST" class="formStyle">

                <input name="firstname" type="text" size="55" placeholder="FIRST NAME" required>
                <input name="lastname" type="text" size="55" placeholder="LAST NAME" required>
                <input name="email" type="email" size="55" placeholder="EMAIL" required>
                <input name="password" type="password" size="55" placeholder="PASSWORD" required>
                <input name="phone" placeholder="PHONE NUMBER" size="55" type="text">

                <span class="formButtons">
                    <input class="regSubmit" type="submit" value=" REGISTER " />
                    <!-- <input class="button" type="button" value=" CANCEL " onclick="window.location.href = 'index.php'" /> -->
                </span>
                
            </form>

        </div>
    </div>
</div>
<!--/signup Modal-->


<!--Login Modal-->
<div class="loginModal">
    <div class="bg"></div>
    <div class="loginForm">
        <div class="liHeader">
            <h3>Login to your Print a President account</h3>
            <div class="closeWrap"><h3 class="liClose">X</h3></div>
        </div>

        <div class="liForm">
            
            <form method='POST' action='login.php' class="formStyle">
                
                <br>
                <input class="login_input" type='email' name='email' size='55' placeholder="EMAIL" required>
                <input class='login_input' type='password' name='password' size='55' placeholder="PASSWORD" required>
                <span class="formButtons">

                    <input class="loginSubmit" type='submit' value='  LOGIN  '>
                <!-- <input class="button" type="submit" name="Cancel" value=" CANCEL " onclick="window.location.href = 'index.php'" /> -->
            </span>
            </form>
            <br>
            <span class="formButtons"><a class="forgotButton">FORGOT PASSWORD?</a></span>
        </div>
    </div>
</div>
<!--/login Modal-->


<!--forgot Modal-->
<div class="forgotModal">
    <div class="bg"></div>
    <div class="forgotForm">
        <div class="forgotHeader">
            <h3>Forgot Username/Password?</h3>
            <div class="closeWrap"><h3 class="forgotClose">X</h3></div>
        </div>

        <div class="forForm">
            <p>Please enter the email associated with your account to retrieve your username and/or reset your password.</p>
            <form action="forgotPassword2.php" method="post" class="formStyle">
                <input type="text" name="email" size="55"/>
                <span class="formButtons"><input type="submit" value=" SUBMIT " />
                <input type="hidden" name="register" value="TRUE" /></span>
            </form>

        </div>
    </div>
</div>
<!--/forgot Modal-->


<!--contact Modal-->
<div class="contactModal">
    <div class="bg"></div>
    <div class="contactForm">
        <div class="contactHeader">
            <h3>Contact Us</h3>
            <div class="closeWrap"><h3 class="conClose">X</h3></div>
        </div>

        <div class="conForm">
            <form action="contactSend.php" method="POST" class="formStyle">
                <input name="firstname" type="text" size="55" placeholder="FIRST NAME" required>
                <input name="lastname" type="text" size="55" placeholder="LAST NAME" required>
                <input name="email" type="email" size="55" placeholder="EMAIL" required>
                <input name="phone" placeholder="PHONE NUMBER" size="55" type="text">
                <textarea name="message" cols="54" rows="10" placeholder="PLEASE TYPE YOUR MESSAGE HERE..."></textarea>
                <input class='conSubmit' type="submit" name="submit" value=" SUBMIT " />
               <!--  <input class="button" type="button" value=" CANCEL " onclick="window.location.href = 'index.php'" /> -->
            </form>
        </div>
    </div>
</div>
<!--/contact Modal-->


<!--profile Modal-->

<!-- I want to get these all in their own page , dont wanna think ab it right now -->
<!--<div class="profileModal">-->
<!--    <div class="bg" id="profilePage"></div>-->
<!---->
<!---->
<!--        <div class="proContent">-->
<!---->
<!--            <ul class="profileChecklist"></ul>-->
<!---->
<!---->
<!--        </div>-->
<!---->
<!---->
<!--</div>-->
<!--/profile Modal-->