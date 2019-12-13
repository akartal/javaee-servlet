<%@ page import="com.uniyaz.db.DbTransaction" %>
<%@ page import="com.uniyaz.domain.Person" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: AKARTAL
  Date: 13.12.2019
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Listele</title>

    <meta charset="UTF-8">
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="styleSheet" type="text/css" href="css/style.css">
    <script type="text/javascript" src="js/main.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
            integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"></script>
</head>
<body>

<div class="menu">
    <ul class="nav">
        <li class="nav-item">
            <a class="nav-link active" href="index.html">Form Alanı</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="liste.html">Listeleme Alanı</a>
        </li>
    </ul>
</div>
<div class="container ezelim">
    <h1>Listeleme Alanı</h1>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#ID</th>
            <th scope="col">Adı</th>
            <th scope="col">Soyadı</th>
            <th scope="col">Telefon</th>
        </tr>
        </thead>
        <tbody>
        <% DbTransaction dbTransaction = new DbTransaction();
            List<Person> personList = dbTransaction.findAllPerson();
            for (Person person : personList) {
                %>
        <tr><th scope="row"><%= person.getId() %></th>
            <td><%= person.getName() %></td>
            <td><%= person.getSurname() %></td>
            <td><%= person.getPhone() %></td>
                <%
            }
        %>
        </tbody>
    </table>

</div>

</body>
</html>
