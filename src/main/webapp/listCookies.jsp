<%@ page import="javax.servlet.http.*" %>
<html>
<body>

<h2>Active Cookie List</h2>

<%
    Cookie[] cookies = request.getCookies();

    if (cookies != null) {
%>
        <table border="1">
        <tr>
            <th>Name</th>
            <th>Value</th>
            <th>Max Age</th>
        </tr>

<%
        for (Cookie c : cookies) {
%>
        <tr>
            <td><%= c.getName() %></td>
            <td><%= c.getValue() %></td>
            <td><%= c.getMaxAge() %></td>
        </tr>
<%
        }
%>
        </table>

<%
    } else {
%>
        <h3>No Active Cookies Found</h3>
<%
    }
%>

<br>
<a href="index.jsp">Add More Cookies</a>

</body>
</html>