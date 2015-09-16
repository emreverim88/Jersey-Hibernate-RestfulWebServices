<%--
  Created by IntelliJ IDEA.
  User: samet
  Date: 12.09.2015
  Time: 20:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<script src="angular.js"></script>
<script type="application/javascript" src="module.js"></script>
<script type="application/javascript" src="controller.js"></script>

<head>
    <title>Student</title>
</head>
<body ng-app="myApp">


<div ng-controller="myCtrl">

    <br>

    <br>
    <button ng-click="getList()">Show List!</button>
    <ul ng-hide="hideGet">
        <li ng-repeat="x in cevap">
            {{ x.name +', ' +x.soyad +', '+x.id}}
        </li>
    </ul>
    <br>


    <form>
        name: <input type="text" ng-model="name">
        surname: <input type="text" ng-model="surname">
    </form>
    <button ng-click="sendData()">ADD!</button>

</div>
</div>

</body>
</html>
