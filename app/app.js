var myApp = angular.module('myApp',[]);
//*controllers*//
myApp.controller('MsgController',function($scope){
    $scope.error = "Oops... No flights are available due to lockdown.";
});

//*Filters*//
myApp.controller('DateController', function($scope) {
    $scope.today = new Date();
});

//*Directive*//
     myApp.directive('myDirective',function(){
       return{
         template: "Service currently unavailable"
       }
    } );

//*Inheritance*//
myApp.controller('AppController',function($scope){
    $scope.message = "Kindly visit after some time!!!";
});

//*Ng-repeat*//
myApp.controller("List1Controller", function($scope) {

   $scope.names1 = ["Kingfisher","Indigo","SpiceJet"];

 });



 myApp.controller("List2Controller", function($scope) {

    $scope.names2 = ["Indigo","SpiceJet","AirAsia"];

  });



  myApp.controller("List3Controller", function($scope) {

     $scope.names3 = ["Kingfisher","AirAsia","GoAir"];

   });


   myApp.controller("List5Controller", function($scope) {

      $scope.names5 = ["Vistara","SpiceJet","GoAir"];

    });

    myApp.controller("List4Controller", function($scope) {

       $scope.names4 = ["AirAsia","Indigo","Kingfisher"];

     });
	 
//*Event Controller*//
myApp.controller('EvtCtrl', function($scope) {
$scope.showMe = false;
$scope.myFunc = function() {
$scope.showMe = !$scope.showMe;
}
});

//*Service*//
myApp.controller('wrkCtrl', function($scope, $Math){
    $scope.tot = $Math.add(50,28);
});
myApp.service('$Math',function() {
	this.add =  function (a,b) {
        return(a+b);
	};
});

//*Factory*//
myApp.controller('TotCtrl', function($scope, $Wish){
    $scope.tot = $Wish.add(18,20);
    });
myApp.factory('$Wish',function() {
    var wishlist = {};
    wishlist.add =  function (a,b) {
    return(a+b);
    };
    return wishlist;
});
