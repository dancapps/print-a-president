
//import { checkForPiece } from './helper_functions/profile.js';


//GLOBALS
let windowPosition = $(window).scrollTop();
let winMiddle = ($(window).height() / 4);
let navBar = $("nav");
let links = $("nav > .linkWrap> a");
let linkWrap = $(".linkWrap");
let loggedIn;

function setModals() {
    let btnID;

    $("body nav span a").click(function(e){
        btnID = this.id;
        console.log(this.id);

        //show login modal click function

        if (btnID === "login"){
            $(".registerModal").css("visibility", "hidden");
            $(".contactModal").css("visibility", "hidden");
            $(".loginModal").css("visibility", "visible");
            $(".navigation").addClass('modal');
        }

        //show register modal click function

        if (btnID === "register"){
            $(".loginModal").css("visibility", "hidden");
            $(".contactModal").css("visibility", "hidden");
            $(".registerModal").css("visibility", "visible");
            $(".navigation").addClass('modal');
        }

        //show contact modal click function

        if (btnID === "contact"){
            $(".loginModal").css("visibility", "hidden");
            $(".registerModal").css("visibility", "hidden");
            $(".profileModal").css("visibility", "hidden");
            $(".contactModal").css("visibility", "visible");
            $(".navigation").addClass('modal');
        }

        //show profile modal click function

        if (btnID === "profile"){
            $(".profileModal").css("visibility", "visible");
            $(".navigation").addClass('modal').delay( 300 );

            //console.log("The Profile is showing");
            //checkForPiece()
        }

        //show forgot username/password modal click function

    });

    $(".loginForm .forgotButton").click(function(e){
        e.preventDefault();
        $(".loginModal").fadeOut(300);
        setTimeout(function () {
            $(".forgotModal").css("visibility", "visible");
            $(".errDiv").html("");
            $(".forInput").css("border","1px solid gray");
        },300)
    });


    //close function for login modal 'X'
    $(".loginForm .liClose").click(function(e){
        $(".loginModal").css("visibility", "hidden");
        $(".navigation").removeClass('modal');
    });

    //close function for register modal 'X'
    $(".registerForm .regClose").click(function(e){
        $(".registerModal").css("visibility", "hidden");
        $(".navigation").removeClass('modal');

    });

    //close function for contact modal 'X'
    $(".contactForm .conClose").click(function(e){
        $(".contactModal").css("visibility", "hidden");
        $(".navigation").removeClass('modal');

    });

    //close function for profile modal 'X'
    $(".profileForm .proClose").click(function(e){
        $(".profileModal").css("visibility", "hidden");
        $(".navigation").removeClass('modal');

    });

    //close function for forgot username/password modal 'X'
    $(".forgotForm .forgotClose").click(function(e){
        $(".forgotModal").css("visibility", "hidden");
        $(".navigation").removeClass('modal');
    });

    //sets close function for background object on all modals
    $(".bg").click(function(e){
        $(".loginModal").css("visibility", "hidden");
        $(".registerModal").css("visibility", "hidden");
        $(".contactModal").css("visibility", "hidden");
        $(".profileModal").css("visibility", "hidden");
        $(".forgotModal").css("visibility", "hidden");
        $(".navigation").removeClass('modal');
    });
}

function setScroll(){

    //scroll to location clicked
    $("nav .linkWrap a").click(function(e){

        let _btnID = this.id;

        $('html, body').animate({
            scrollTop:$("#" + _btnID + "Section").offset().top
        },2000);
    });

    //scroll back to the top
    $(".scrollTop").click(function(e){
        e.preventDefault();
        $('html, body').animate({
            scrollTop: 0
        }, 2000);
    });
}

function navScroll() {
    // console.log('running');
    $(document).scroll(function () {
        let $nav = $(".nav");
        $nav.toggleClass('scrolled', $(this).scrollTop() > $nav.height());
    });
}

// function navScroll() {
//     // console.log('running');
//     $(document).scroll(function () {
//         let $nav = $(".nav");
//         let $anchor = $(".anchor");
//         $nav.css("background-color", "white", $(this).scrollTop() > $nav.height());
//         $anchor.css("color", "#16194B", $(this).scrollTop() > $nav.height());
//     });
// }

function showAnswer() {
    console.log('running');

    let whoAnswer = "Print a President is an innovative project between the Benjamin Harrison Presidential Site, and you, the 3D printing and history enthusiast.";
    let whatAnswer = "The purpose of Print a President is to crowdprint a life-sized statue of our 23rd president, Benjamin Harrison. Crowdprinting is a new method of 3D printing that allows us to partner with enthusiasts from all around the world to help complete this goal.";
    let whenAnswer = "The Presidential Site is looking to obtain a life-sized statue of Benjamin Harrison as soon as possible, which is why we have requested your help.";
    let whereAnswer = "The fully finished statue will introduce a new way to capture the attention of young minds, and adults alike. While the original statue can be viewed at the Benjamin Harrison Presidential Site, the 3D printed replica will be moved from location to location, becoming an interactive show piece.";
    let whyAnswer = "We at the Benjamin Harrison Presidential Site are eager to spark a love for history in young kids. The finished statue will be brought to schools and showcases, and used as a type of puzzle that will allow for the kids to become more involved.";

    $("#who").css("color", "#b38e53");
    $("#answer").append(whoAnswer);

    $("#who").hover(
        function() {
            $(".question").css("color", "#16194B");
            $("#who").css("color", "#b38e53");
            $("#answer").empty();
            $("#answer").append(whoAnswer);
        },
    );

    $("#what").hover(
        function() {
            $(".question").css("color", "#16194B");
            $("#what").css("color", "#b38e53");
            $("#answer").empty();
            $("#answer").append(whatAnswer);
        },
    );

    $("#when").hover(
        function() {
            $(".question").css("color", "#16194B");
            $("#when").css("color", "#b38e53");
            $("#answer").empty();
            $("#answer").append(whenAnswer);
        },
    );

    $("#where").hover(
        function() {
            $(".question").css("color", "#16194B");
            $("#where").css("color", "#b38e53");
            $("#answer").empty();
            $("#answer").append(whereAnswer);
        },
    );

    $("#why").hover(
        function() {
            $(".question").css("color", "#16194B");
            $("#why").css("color", "#b38e53");
            $("#answer").empty();
            $("#answer").append(whyAnswer);
        },
    );

}

function hamburgerFunc() {
    let hamburgerMenu = $('.hamburgerMenu'); // CSS Class of Nav Menu
    let navToggle = $('.nav-toggle'); // CSS Class of Toggle Button
    let content = $('.wrapper'); // Site Container

    let isOpen = 0; // Is the menu open or closed?
    let menuWidth = $('.nav').css('width');
    let menuWidthInverse = "-" + menuWidth;

    $(navToggle).click(function(){
        if ( isOpen === 0 ) {
            $(".hamburgerMenu ul").css("margin-right", "-124.75px");
            $(navToggle).removeClass('fa-bars');
            $(navToggle).addClass('fa-times');
            isOpen++;
        } else {
            $(".hamburgerMenu ul").css("margin-right", "-400.75px");
            $(navToggle).removeClass('fa-times');
            $(navToggle).addClass('fa-bars');
            isOpen--;
        }
    })
}


$(document).ready(function(){
    setModals();
    setScroll();
    navScroll();
    showAnswer();
    hamburgerFunc();
});
