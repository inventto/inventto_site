---
---

converter = new Showdown.converter()
angular.module("inventto", []).
  config(($interpolateProvider) -> $interpolateProvider.startSymbol('[[').endSymbol(']]')).
  controller "Inventtores", ($scope, $sce) ->
    $scope.inventtores = Inventto.inventtores
    $scope.cursos = []
    $scope.autores = []
    $scope.filtro = {}
    $scope.filtrar = (por) ->
      (curso) ->
        if por.tag
          curso.tags and por.tag.name in curso.tags
        else if por.autor
          por.autor is curso.autor
        else
          true
    
    $scope.sizeOf = (obj) -> Object.keys(obj).length
    $scope.filtrarPor = (obj) ->
      for field, value of obj
        if not $scope.filtro[field] or $scope.filtro[field] isnt value
          $scope.filtro[field] = value
        else
          delete $scope.filtro[field]

    $scope.todosCursos = Inventto.cursos
    tags={}
    for autor, cursos of $scope.todosCursos
      _autor = Inventto.inventtores[autor]
      _autor.cursos = cursos
      for titulo, curso of cursos
        curso.autor = _autor
        curso.titulo = titulo
        curso.descricaoHTML =  $sce.trustAsHtml( converter.makeHtml(curso.descricao) )
        $scope.cursos.push curso
        continue if not curso.tags
        for tag in curso.tags
          tags[tag] = (tags[tag] or 0) + 1
      $scope.autores.push _autor

    $scope.tags_cursos = do (tags) ->
      keys = Object.keys(tags).sort (a, b) -> tags[b] - tags[a]
      {name, count: tags[name]} for name in keys
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

