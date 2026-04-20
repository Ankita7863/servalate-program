//10.b Build an Application to get Rollno, Studentname, Sub1, Sub2, Sub3, Sub4 and Sub5  through JSP called
// index.jsp with client sided validation and submit to the servlet called ResultServlet and process all
// the fields with server sided validation and display all the data along with result ( Pass if all subjects greater 
//than 40%) and Average marks through result.jsp with a link to move to the client side


<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<title>Student Form</title>



<script>

function validateForm() {

    let roll = document.forms["form"]["roll"].value;

    let name = document.forms["form"]["name"].value;



    let marks = [

        document.forms["form"]["sub1"].value,

        document.forms["form"]["sub2"].value,

        document.forms["form"]["sub3"].value,

        document.forms["form"]["sub4"].value,

        document.forms["form"]["sub5"].value

    ];



    if (roll === "" || name === "") {

        alert("Roll No and Name are required!");

        return false;

    }



    for (let i = 0; i < marks.length; i++) {

        if (marks[i] === "" || marks[i] < 0 || marks[i] > 100) {

            alert("Enter valid marks (0–100)");

            return false;

        }

    }



    return true;

}

</script>



</head>



<body>



<h2>Student Result Form</h2>



<form name="form" action="ResultServlet" method="POST" onsubmit="return validateForm()">



Roll No: <input type="text" name="roll"><br><br>

Name: <input type="text" name="name"><br><br>



Sub1: <input type="number" name="sub1"><br><br>

Sub2: <input type="number" name="sub2"><br><br>

Sub3: <input type="number" name="sub3"><br><br>

Sub4: <input type="number" name="sub4"><br><br>

Sub5: <input type="number" name="sub5"><br><br>



<input type="submit" value="Submit">



</form>



</body>

</html>