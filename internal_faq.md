---
layout: post
---

# Fluxo geral de produção de software

Manual de Procedimentos


# Repositório

## Usuário Pessoal

###- Clone

###- Pull

#### - Merge

### – Commit + Push

#### - Usuário

#### - Padrão

### Número da Tarefa

### Hora

### Finalizando Tarefa



# Redmine

## o que é?

## para que usamos na inventto?



## Cadastro de Planejamento

## Cadastro de Tarefas

### Tipos de Tarefas

### Padrão de Nomenclatura (Títulos)

## Fechamento de Tarefas

### Via Commit

### Alterando Tarefa Via Redmine

###  Contagem de Tempo de Tarefa

### Acompanhamento do Planejamento



  ... O registro de tarefas possibilita realizar melhores estimativas...



# Versão

## Requisitos

### Requisitos Funcionais

### Requisitos Não-Funcionais

### Tarefas

### Tipos de Tarefas?

* Ajustes
* Requisitos Planejados
* Extras
* Outras Demandas
* Bugs (Bug é um erro de produção, uma falha não entregue ao cliente não é BUG)

#### Contagem de Tempo

* recomenda-se o uso de cronômetro
* pomodoro?

#### Finalização da Versão
#### Coferência e preenchimento final da issue no Redmine
####  Commit para o Repositório
* Tarefas Atômicas
* Sempre que possível
* Evitar manter muita defasagem entre o Repositório e sua máquina.

##  - Horas Individuais
###  - Contagem Final de Horas

# Documentos
## Projeto
## Entrega de Versão
## Levantamento de Requisitos
## Documento de Release

* Não enviar a versão para o cliente sem documentar
* Apresentar as novas funcionalidades
* Se possível apresentar exemplos

# Fotos do Quadro no Redmine

* gravar no Redmine

# Dia

## Stand Up Meeting - reunião em pé

### Revisão do dia anterior - o que eu fiz ontem?

### Quais foram os impedimentos?

### Planejamento dirário - o que farei hoje?


# Semana

## Início - Segunda feira

### Reunião semanal do projeto
### Estimativa dos próximos 5 dias de trabalho
### Como funciona a estimativa?


## Fim - Sexta Feira

### Contabilizando as horas
### Medindo a produtividade
### Estabelecendo novas metas


### Manhã


### Tarde

# Mês
# Ano


# Como fazer commits no projeto

## Commits curtos

## Como lançar horas nos commits



# Como fazer um novo orçamento

# Como analisar um requisito/funcionalidade

# Como descrever uma funcionalidade

Adotamos o modelo de User Story:

    Como <ator - quem terá acesso à feature>
    Gostaria de <ação - o que o usuário irá fazer>
    A fim de <finalidade - define o valor da tarefa para o produto final>

Ex:

    Como Administrador do sistema
    Gostaria de criar um cliente
    A fim de manter um registro de todos os meus clientes

Outra parte muito importante é definirmos os critérios de aceitação, ou seja, quando eu sei que a tarefa está completa e será aceita. Isso irá ajudar a:

* saber com detalhes o que é esperado
* escrever testes
* saber que terminei uma tarefa
* facilitar o trabalho do Product Owner para revisar se a tarefa está completa

Ex:

Critérios de aceitação:

* cliente deve obrigatoriamente ter: nome e idade
* cliente deve estar salvo no banco de dados
* deve haver uma lista no sistema com todos os clientes cadastrados
* a lista deve ser dividida em páginas com 15 registros por página

Resumindo, uma US completa ficaria assim:

    Título: Cadastrar clientes

    Como administrador do sistema
    Gostaria de criar um cliente
    A fim de manter um registro de todos os meus clientes

    Critérios de aceitação:

    cliente deve obrigatoriamente ter: nome e idade
    cliente deve estar salvo no banco de dados
    deve haver uma lista no sistema com todos os clientes cadastrados
    a lista deve ser dividida em páginas com 15 registros por página


# Como organizamos as tarefas de um projeto

# Como descrever uma tarefa de um projeto

# Como organizamos a ordem das tarefas e a prioridade

# Como se relacionar com o cliente

## Em uma reunião presencial

## Quanto a questões específicas do projeto

## Quanto a bugs

## Quanto a sugestões

### Como descrever um email

    Olá eu sou o <fulano> represento o time de desenvolvimento no projeto <x> do seu cliente <y>/

    Estamos precisando <solução> pois estamos tendo <seguinte problema>

    Gostariamos de contar com sua colaboração em <seguintes aspectos>.

    Qualquer dúvida estamos a disposição.

    <fulano>
    <developer> na Invent.to.


# O que fazer quando os problemas acontecerem?


## como encontrar o erro?

Encontre um erro que possa ser a causa. Analise os logs e observe os detalhes do ambiente.

## identificar a causa


* Onde ocorreu o erro?
* Qual máquina? Em todas? Apenas uma?
* Quantas pessoas relataram o caso?
* É um problema do usuário ou um erro do sistema?

## criar hipóteses

Reveja o erro e descreva para você mesmo passo a passo como chegou até o problema.

## testar hipóteses

Repita a sua ação e prove que a causa que descreveu é realmente o objeto de analise.

## executar soluções

Teste possíveis soluções e reteste suas hipóteses. Caso necessário reformule ou crie novas hipóteses para validar a solução em diferentes aspectos.

# Processos #TODO

Descrição das tarefas organizacionais gerais da empresa. Fluxos de processos e procedimentos para solução de problemas.

### Como mapear um processo

![](http://yuml.me/diagram/scruffy/class/[Macro Processo]->[Processo])

![](http://yuml.me/diagram/scruffy/class/[Processo]->[Atividade])

![](http://yuml.me/diagram/scruffy/class/[Atividade]^-[Tarefa], [Atividade]^-[SubProcesso])

### Divisão de processos

* Guias de profissão
* Manuais de instrução

### Desenvolvimento

* Análise do requisito
* Desenvolvimento orientado a testes
* Modelagem orientada a objetos
* Escolha e aplicação de padrões (design patterns)
* Adaptação e mantimento do modelo existente

### Design e Arquitetura de Software

* Conversa com cliente
* Levantamento de requisitos
* Definição de prioridades
* Prototipação de telas
* Estórias do usuário

### Comercial

### Suporte

### Implantação

### Macro processo

### Tarefas organizacionais

#### Convites por email
#### Ligação para clientes
#### Email para empresas parceiras
