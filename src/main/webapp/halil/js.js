/**
 * Created by samet on 13.09.2015.
 */
var app = angular.module('app', []);
app.controller("StudentController", function ($scope, $http) {

    $scope.studentsList = [];
    $scope.button_text = "Create";


    var getAllData = function () {
        $http.get("http://localhost:8080/emre-rest-test/studentrestservice").then(function (response) {
            $scope.studentsList = response.data;
        }, function (response) {
        });
    };
    getAllData();
    $scope.add = function () {
        var studentModel = $scope.student;

        if ($scope.button_text == "Create") {

            $http.post("http://localhost:8080/emre-rest-test/studentrestservice", studentModel).then(function (response) {
                /*success*/
                $scope.message = response.data.destcription
                getAllData();
                $scope.student = {};
            }, function (response) {


            });

        }
        else {
            $http.put("http://localhost:8080/emre-rest-test/studentrestservice", studentModel).then(function (resp) {
                $scope.message = resp.data.destcription;
            }, function (resp) {

            });
        }
    };


    $scope.delete = function (id) {

        $http.delete("http://localhost:8080/emre-rest-test/studentrestservice/" + id).then(function (resp) {
            getAllData();
            $scope.message = resp.data.destcription
        }, function (resp) {
            console.log("failure");
        });
    }

    $scope.update = function (update_student) {

        $scope.student = update_student;
        $scope.button_text = "Update";

    }


});
