---
---

angular.module("inventto", []).
  config(($interpolateProvider) -> $interpolateProvider.startSymbol('[[').endSymbol(']]')).
  controller "Slides", ($scope) ->
    $scope.empresa = Inventto.empresa
    $scope.acreditamos = Inventto.acreditamos
    $scope.iniciativas = Inventto.iniciativas
    $scope.inventtores = Inventto.inventtores
    for nick, inventtor of Inventto.inventtores
      $scope[nick] = inventtor
    $scope.projetos = Inventto.projetos
    $scope.servicos = Inventto.servicos
    $scope.ferramentas = Inventto.ferramentas

