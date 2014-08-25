---
---

angular.module("inventto", []).
  config(($interpolateProvider) -> $interpolateProvider.startSymbol('[[').endSymbol(']]')).
  controller "Inventtores", ($scope) ->
    $scope.inventtores = Inventto.inventtores
    $scope.showOpinionsFor = (id)->
      $scope.hideOpinions()
      for userId, depoimento of $scope.depoimentos[ id]
        $scope.inventtores[userId].opinion = depoimento
    $scope.hideOpinions = ()->
      for userId, inventtor of $scope.inventtores
         $scope.inventtores[userId].opinion = null
    $scope.depoimentos = Inventto.depoimentos
    $scope.empresa = Inventto.empresa
    $scope.acreditamos = Inventto.acreditamos
    $scope.iniciativas = Inventto.iniciativas
