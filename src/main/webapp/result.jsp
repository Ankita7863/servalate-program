<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<title>Result</title>



<style>

.pass { color: green; }

.fail { color: red; }

</style>



</head>



<body>



<h2>Student Result</h2>



<p>Roll No: ${roll}</p>

<p>Name: ${name}</p>



<h3>Marks</h3>

<p>Sub1: ${s1}</p>

<p>Sub2: ${s2}</p>

<p>Sub3: ${s3}</p>

<p>Sub4: ${s4}</p>

<p>Sub5: ${s5}</p>



<p>Average: ${avg}</p>



<p>Result:

<span class="${result == 'Pass' ? 'pass' : 'fail'}">

    ${result}

</span>

</p>



<br>

<a href="index.jsp">Go Back</a>



</body>

</html>