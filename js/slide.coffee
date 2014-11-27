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

$ ->
  preencheResistor = ->
    inteiro = $("#inteiro").val()
    decimal = $("#decimal").val()
    expoente = $("#expoente").val()

    $("#inteiro").attr("style", $($("#inteiro")[0].options[$("#inteiro")[0].selectedIndex]).attr("style"))
    $("#decimal").attr("style", $($("#decimal")[0].options[$("#decimal")[0].selectedIndex]).attr("style"))
    $("#expoente").attr("style", $($("#expoente")[0].options[$("#expoente")[0].selectedIndex]).attr("style"))
    $(".resposta").html (inteiro + "," + decimal + " x10^" + expoente + " ohms")

  calculaResistencia = ->
    voltage = parseFloat($(".voltage").val())
    resistance = parseFloat($(".resistance").val())
    current = parseFloat($(".current").val())

    if !isNaN(voltage)
      console.log "tem voltagem"
      if !isNaN(resistance)
        current = voltage / resistance
        console.log "current = " + current
        $(".current").val current
      else if !isNaN(current)
        resistance = voltage / current
        console.log "resistance = " + resistance
        $(".resistance").val resistance
      else
        console.log "erro 1"
    else if !isNaN(resistance) and !isNaN(current)
      voltage = resistance * current
      console.log "voltage = " + voltage
      $(".voltage").val voltage
    else
      console.log "erro 2"
      

  $("#inteiro, #decimal, #expoente").on("change", preencheResistor)

  $(".calcular-ohm").on("click", calculaResistencia)

