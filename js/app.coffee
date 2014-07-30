---
---

angular.module("inventto", []).
  config(($interpolateProvider) -> $interpolateProvider.startSymbol('[[').endSymbol(']]')).
  controller "Inventtores", ($scope) ->
    $scope.team =
      jonatas: {name: "Jônatas Davi Paganini", email: "jonatas@invent.to", bio: "Developer", social: { twitter: "jonatasdp", instagram: "jonatasdp", facebook: "jonatas.paganini"}, profile: "homer.jpg"},
      tafarel: {name: "José Luiz Tafarel", email: "tafarel@invent.to", bio: "Developer", profile: "time/tafarel.jpg"},
      lucao: {name: "Lucas Cardoso", bio: "developer", profile: "time/lucao.jpg", email: "lucao@invent.to"},
      rafagnin: {name: "Lucas Rafagnin", bio: "developer", email: "rafagnin@invent.to", profile: "homer.jpg"},
      marlon: {name: "Marlon Henrique Scalabrin", bio: "Yoda master", email: "marlon@invent.to", profile: "homer.jpg"},
      jack: { name: "Mauricio Krzesinski", bio: "Game developer", email: "jack@invent.to", profile: "time/jack.jpg"},
      mitrut: { name: "Wellington Mitrut", bio: "Pixel Man", email: "mitrut@invent.to", profile: "time/mitrut.jpg"},
