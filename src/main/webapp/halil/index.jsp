<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="application/javascript" src="../angular.js"></script>
    <script type="application/javascript" src="js.js"></script>
    <title></title>
</head>
<body ng-app="app">

<div ng-controller="StudentController">

    <p style="color: green">{{message}}</p>

    <form ng-model="student">
        <table>
            <tr>
                <td>Name</td>
                <td><input type="text" ng-model="student.name"/></td>
            </tr>
            <tr>
                <td>Surname</td>
                <td><input type="text" ng-model="student.soyad"/></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button ng-click="add()">{{button_text}}</button>
                </td>
            </tr>
        </table>
    </form>


    <table border=".1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Surname</th>
            <td>Operation</td>
        </tr>
        <%--Repeat--%>
        <tr ng-repeat="student in studentsList">
            <td>{{student.id}}</td>
            <td>{{student.name}}</td>
            <td>{{student.soyad}}</td>
            <td>
                <button ng-click="delete(student.id)">Delete</button>
                <button ng-click="update(student)">Update</button>
            </td>
        </tr>
        <%--Repeat--%>
    </table>

</div>

</body>
</html>
