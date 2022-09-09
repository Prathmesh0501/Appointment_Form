var date = new Date();
var tdate = date.getDate();
if (tdate < 10) {
    tdate = '0' + tdate;
}
var tmonth = date.getMonth() + 1;
if (tmonth < 10) {
    tmonth = '0' + tmonth
}
var tyear = date.getFullYear();
var minDate = tyear + "-" + tmonth + "-" + tdate;
console.log(minDate);
document.getElementById('date').setAttribute('min', minDate);



function Thankyou() {
    document.location.href = "index.php"
}


// Validation of Form
function validateForm() {
    var returnval = true;

    var title = document.forms['myform']['title'].value;
    if (title.length == 0) {
        setError("Please select Title")
        returnval = false;
    }


    var fname = document.forms['myform']['firstname'].value;
    if (fname.length < 2) {
        setError("First name should have atleast 2 character")
        returnval = false;
    }

    var lname = document.forms['myform']['lastname'].value;
    if (lname.length < 2) {
        setError("last name should have atleast 2 character")
        returnval = false;
    }

    var email = document.forms['myform']['email'].value;
    if (email.length == 0) {
        setError("Email ID Requried")
        returnval = false;
    }

    var phoneNumber = document.forms['myform']['number'].value;
    if (phoneNumber.length < 13 && phoneNumber.length > 13) {
        setError("Please add country code and total length should be 13")
        returnval = false;
    }

    var address = document.forms['myform']['address'].value;
    if (address.length == 0) {
        setError("Please Enter Address")
        returnval = false;
    }

    var date = document.forms['myform']['date'].value;
    if (date.length == 0) {
        setError("Please Select Date")
        returnval = false;
    }

    var time = document.forms['myform']['time'].value;
    if (time.length == 0) {
        setError("Please choose desired time")
        returnval = false;
    }


    var services = document.forms['myform']['services'].value;
    if (services.length == 0) {
        setError("Please Select type of service")
        returnval = false;
    }

    return returnval;
}
// Setting Error Message
function setError(error) {
    var a = document.getElementById('formerror');
    a.innerText = error;

}   