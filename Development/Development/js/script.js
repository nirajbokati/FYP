/* ============================================================================
   ============================= Slider =======================================
   ============================================================================= */ 
   /* This is the script for slider slider */

    var slide1 = new Image();
    var slide2 = new Image();
    var slide3 = new Image();
    var slide4 = new Image();
    var slide5 = new Image();
    var slide6 = new Image();
/*The fucnction is made such that if the function remain undefined it ccontrol sliding of other pages using else and  if*/

    if (typeof page == "undefined" || page == null){
        slide1.src="../images/slider/1.jpg";           
        slide2.src="../images/slider/2.jpg";
        slide3.src="../images/slider/3.jpg";
        slide4.src="../images/slider/4.png";
        slide5.src="../images/slider/5.jpg";
        slide6.src="../images/slider/6.jpg";
    } else {    
        slide1.src="images/slider/1.jpg";           
        slide2.src="images/slider/2.jpg";
        slide3.src="images/slider/3.jpg";
        slide4.src="images/slider/4.png";
        slide5.src="images/slider/5.jpg";
        slide6.src="images/slider/6.jpg";
    }

    var step = 1 // This is the initial value for first image number
    
    // slider function
    function slider(){ 

        // It changes the source of image as per the value of step
        document.images.slide.src=eval("slide"+step+".src");

        // this increases the value of step until the value reaches 6
        if (step < 6){
            step++;}
        else{
            step = 1;
        }   

        setTimeout("slider()",2000); 
    }
    slider();


/**************************************************************
 ************************* Form Message ***********************
 **************************************************************/

/* This opens new window and provides when user submits the correct form after validation */
function form_message() {
    var page = window.open();                                                               // this opens the new windows
    page.document.open();                                                                   // this opens the document
    page.document.write("<h2>Thanks for Contacting Us. We will get to you soon.</h2>");     // this writes the new message in the window
    page.document.close();                                                                  // this closes the document
}

/**************************************************************
 ************************ Form Validation *********************
 **************************************************************/
/* =============================================================================
   ============================= Form Validation ===============================
   ============================================================================= */ 
/* This is the function to validate the contact form */
function validateForm() {
    var formValue = document.getElementById("form");
    var name = formValue.elements[0].value;
    var number = formValue.elements[1].value;
    var email = formValue.elements[2].value;
    var address = formValue.elements[3].value;

    // Check the length of form values provided by uses
    if(name.length == 0 || number.length == 0 || email.length == 0 || address== 0){
        alert("Please fill all empty spaces in the form");       // displays message when a form field is empty
    } else{
        alert("Thank you "+ name + " for submitting the form");  // displays message after submitting form
    }
}

/**************************************************************
 ***************************  Date *****************************
 **************************************************************/

/* This function show's date in days, month and year. It is used in contact page */
function show_date() {
    var date = new Date();
    var d = date.getDate();                                                                 //this stores date in varibale d
    var m = date.getMonth()+1;                                                                //this stores month number in varibale m
    var y = date.getFullYear();                                                                 //this stores year in variable y
    document.getElementById("date").innerHTML = d+"/"+m+"/"+y;                              //this displays day/month/year
}


/**************************************************************
 ***********************  Social Image Map ********************
 **************************************************************/

/* This function shows various message when hovered in social network icons */
function writeText(text) {
    document.getElementById("social_message").innerHTML = text;                             //this changes the value of social_message with text received
}


