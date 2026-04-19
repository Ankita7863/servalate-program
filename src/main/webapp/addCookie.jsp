<%@ page import="javax.servlet.http.*" %>
<%
    String name = request.getParameter("cname");
    String domain = request.getParameter("cdomain");
    String ageStr = request.getParameter("cage");

    if (name != null && ageStr != null) {

        int age = Integer.parseInt(ageStr);

        Cookie cookie = new Cookie(name, "SampleValue");

        cookie.setMaxAge(age); // expiry time
        cookie.setDomain(domain); // domain set

        response.addCookie(cookie);
%>

<html>
<body>

<h2 style="color:green;">Cookie Added Successfully!</h2>

<h3>Cookie Details:</h3>
Name: <%= name %> <br>
Domain: <%= domain %> <br>
Expiry Age: <%= age %> seconds <br>

<br>
<a href="listCookies.jsp">Go to Active Cookie List</a>

</body>
</html>

<%
    } else {
%>

<h3 style="color:red;">Invalid Input!</h3>
<a href="index.jsp">Go Back</a>

<%
    }
%>