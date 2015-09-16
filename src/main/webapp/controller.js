app.controller('myCtrl', function ($scope, $http) {

    $scope.hideGet = true;
    $scope.studentName = "emre";
    $scope.studentSurname = "verim";

    $http.get("http://localhost:8080/emre-rest-test/studentrestservice").success(function (response) {

        $scope.getList = function () {

            $scope.hideGet = !$scope.hideGet;
        }

        $scope.cevap = response;

    });

    $scope.sendData = function () {

        $http({
            url: "http://localhost:8080/emre-rest-test/studentrestservice",
            method: "POST",
            data: {
                name:  $scope.name,
                soyad:  $scope.surname,
                id: 4
            }
        }).then(function(response) {
                alert("worked");
            },
            function(response) { // optional

            });

    }

});