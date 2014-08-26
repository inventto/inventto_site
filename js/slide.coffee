---
---

angular.module("inventto", []).
  config(($interpolateProvider) -> $interpolateProvider.startSymbol('[[').endSymbol(']]')).
  controller "Slides", ($scope) ->
    $scope.empresa = Inventto.empresa
    $scope.acreditamos = Inventto.acreditamos
    $scope.iniciativas = Inventto.iniciativas
    $scope.inventtores = Inventto.inventtores
    $scope.jonatas = Inventto.inventtores.jonatas
    $scope.projetos = Inventto.projetos

