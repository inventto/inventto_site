---
---

angular.module("inventto", ['ngAnimate']).
  config(($interpolateProvider) -> $interpolateProvider.startSymbol('[[').endSymbol(']]')).
  controller "Inventtores", ($scope, $sce) ->
    $scope.inventtores = Inventto.inventtores
    $scope.cursos = []
    $scope.authors = []
    $scope.where = {}
    $scope.converter = new Showdown.converter()
    $scope.doFilter = (where)  ->
      (curso) ->
        if where.tag
          curso.tags and where.tag.name in curso.tags
        else if where.author
          where.author is curso.author
        else
          true
    
    $scope.sizeOf = (obj) -> Object.keys(obj).length
    $scope.filtering = -> $scope.sizeOf($scope.where) > 0
    $scope.clearFilter = ->
      $(".selected").removeClass("selected")
      $scope.where = {}
    $scope.filterBy = ($event, obj) ->
      for field, value of obj
        if not $scope.where[field] or $scope.where[field] isnt value
          $scope.clearFilter()
          $($event.target).addClass("selected")
          $scope.where[field] = value
        else
          $($event.target).removeClass("selected")
          delete $scope.where[field]

    $scope.todosCursos = Inventto.cursos
    tags={}
    for author, cursos of $scope.todosCursos
      _author = Inventto.inventtores[author]
      _author.cursos_counter = $scope.sizeOf(cursos)
      for titulo, curso of cursos
        curso.author = _author
        curso.titulo = titulo
        curso.descricaoHTML =  $sce.trustAsHtml( $scope.converter.makeHtml(curso.descricao) )
        $scope.cursos.push curso
        continue if not curso.tags
        for tag in curso.tags
          tags[tag] = (tags[tag] or 0) + 1
      $scope.authors.push _author

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
