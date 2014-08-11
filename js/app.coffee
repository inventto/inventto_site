---
---

angular.module("inventto", []).
  config(($interpolateProvider) -> $interpolateProvider.startSymbol('[[').endSymbol(']]')).
  controller "Inventtores", ($scope) ->
    jonatas = name: "Jônatas Davi Paganini", email: "jonatas@invent.to", bio: "Developer", profile: "time/jonatas.png", site: "ideia.me", social: {twitter: "jonatasdp", instagram: "jonatasdp", facebook: "jonatas.paganini", github: "jonatas", skype: "jonatas.paganini", pinterest: "jonatasdp", youtube: "user/jonatasdp", gravatar: "93b1c03b74dff7a41060d41a2da750ce"}
    tafarel = name: "José Luiz Tafarel", email: "tafarel@invent.to", bio: "Developer", profile: "time/tafarel.jpg", site: "jltafarel.github.io"
    lucao = name: "Lucas Cardoso", bio: "Developer", profile: "time/lucao.jpg", email: "lucao@invent.to"
    rafagnin = name: "Lucas Rafagnin", bio: "Developer", email: "rafagnin@invent.to", profile: "homer.jpg"
    marlon = name: "Marlon Henrique Scalabrin", bio: "Yoda master", email: "marlon@invent.to", profile: "homer.jpg"
    jack = name: "Mauricio Krzesinski", bio: "Game developer", email: "jack@invent.to", profile: "time/jack.jpg"
    mitrut = name: "Wellington Mitrut", bio: "Pixel Man", email: "mitrut@invent.to", profile: "time/mitrut.jpg", social: {twitter: "wmitrut", instagram: "wmitrut", github: "wmitrut", gravatar: "278d0b5b8f680ac2a39bb3d8a6e21be3"}

    inventtores =
      jonatas: jonatas
      tafarel: tafarel
      lucao: lucao
      rafagnin: rafagnin
      marlon: marlon
      jack: jack
      mitrut: mitrut

    $scope.inventtores = inventtores
    $scope.showOpinionsFor = (id)->
      for userId, depoimento of $scope.depoimentos[id]
        $scope.inventtores[userId].opinion = depoimento
    $scope.hideOpinionsFor = (id)->
      for userId, depoimento of $scope.depoimentos[id]
        $scope.inventtores[userId].opinion = null
    $scope.depoimentos = 
      jonatas:
        jack: "tem que ser on the fly"
        tafarel: "metaprogramando o mundo"
        mitrut: "É tudo nosso brother"
      tafarel:
        jack: "E acha bonito"
        mitrut: "Mazoooooooooooome"
        jonatas: "vai que é tuaaaaa tafarel!!!"
        rafagnin: "ALL-IN"
      lucao:
        mitrut: "Falo nada, só observo..."
        tafarel: "uhul"
        rafagnin: "Conspirações"
        jonatas: "abre o irb ae lucão"
        jack: "o cara tem le mans na cabeça"
      marlon: 
        jack: "Então cara, é assim..."
        tafarel: "A solução!"
        mitrut: "Pra te resumir… o marlon é como se fosse o Neo"
        jonatas: "chega na grade ae tio Marlon!!!"
        rafagnin: "Me da um help?"
      jack: 
        tafarel: "ahhh, o cara dos joguinho!"
        rafagnin: "vai um energético ae?” (Jack - Quem?, eu?)"
        jonatas: "e o pigeons? vamos jogar :D"
      mitrut: 
        tafarel: "um cara que transborda conhecimento (literalmente)"
        jack: "Cara, ja fui la na tua casa perto da igreja(eu nunca morei perto da igreja…"
        jonatas: "e roda no IE6?"
        rafagnin: "Sem spoilers..."
      rafagnin:
        tafarel: "mais feio que uma mão de 7 e 2"
        jack: "Yes Science"
        jonatas: "Yes Science!!!"
        mitrut: "eeeesse é o broder"
