---
  layout: post
  title: Tipos de aplicativo
  author: jonatas
---

# Que tipo de programa fazemos?

Essa pergunta de duplo sentido já chegou até nós de diversas maneiras e muitas vezes as pessoas têm dificuldade para entender qual tipo de programa ou solução precisam.

Dessa forma pretendo apresentar aqui algumas características dos tipos de sistemas que trabalhamos.

# Mobile nativo

Temos domínio da plataforma Android (do Google) e estamos entrando no mundo do iOS (da Apple).

As principais vantagens dos aplicativos nativos são:

* Desfrutam de todo hardware: câmera, GPS, acelerômetro, giroscópio etc
* Desfrutam de todo software nativo como: envio de sms, email, compartilhamento, recorte de imagens etc
* São mais rápidos pois são compilados e ficam amarzenados no dispositivo
* Trazem uma experiência mais agradável para o usuário
* Você programa direto na plataforma e têm acesso as diversas vantagens dos componentes nativos

As desvantagens são:

* Um código por plataforma
* Incompatibilidade dos modelos de smartphones
* Incompatibilidade das versões específicas do sistema operacional

# Web / Mobile

* Basicamente um website que funciona no mobile
* E também funciona para múltiplas plataformas
* Acesso limitado as capacidades nativas de hardware e da plataforma
* Incompatibilidade de componentes entre plataformas
* Um código para todas plataformas

## Híbridos

* Baixa pela loja da plataforma e roda localmente
* Usa todo conteúdo HTML5, CSS e JS como na web mas em uma "aplicação" separada para seu código
* Mapeia API's nativas das plataformas específicas para ser consumida por uma biblioteca única em javascript
* Possívelmente dá para manter rodando na web como um website normal


# Embarcados

Além de linguagens de alto nível também trabalhamos com hardware e dispositivos embarcados.

Hoje estamos no mundo da internet das coisas e todas as pessoas tem acesso à diversos aparelhos de hardware e software que estão integrados e trocando informações.

Se você quiser podemos lhe ajudar melhorando a forma que sua máquina lava louças ou mesmo explorar o crescimento de uma determinada planta em determinadas condições de solo ou ainda programar umas luzes legais para o natal que exibe a logo da sua empresa e o papai noel com o dedão pra cima fazendo "beleza campeão"!

    Se você disse sim para uma das três ideias acima podemos lhe ajudar :)

Para qualquer uma destas ideias malucas que você decidir investir nós podemos lhe ajudar.

# Escolha do hardware

Existe uma série de tarefas que você terá que analisar como o melhor microcontrolador, ou o que cabe no seu bolso e também ver quais sensores vai ser possível conectar e qual a capacidade máxima. Também vai ter que decidir sobre a sustentabilidade e se vai usar baterias ou pilhas ou painéis solares. Nós podemos lhe ajudar a testar, pesquisar e fazer a melhor escolha na decisão do hardware para seu invento.

Estes dispositivos são computadores simplificados que podem ser úteis para coletar informações do mundo real como sensores de água, humidade, temperatura entre outros.

Abaixo seguem os dispositivos que temos estudado e trabalhado:

* MSP430 - linguagem C
* Raspberry PI - linguagem Python
* Beaglebone Black II - linguagem javascript
* Arduino -  linguagem arduino (baseado em C e C++)
* Android - linguagem java

# Algorítmos de processamento

Sistemas que simplesmente não tem interação com o usuário. Apenas processam e processam.

Dentro desta linha de trabalho, nossas principais atividades estão programar sistemas que rodam processos estocásticos de análise estatísticas para bolsa de valores.

O processo inicia de uma forma simples mas cresce incrementalmente para gerência de risco e também roteamento de ordem diretamente na bolsa de valores. Todos estes programas não necessitam intervenção humana e rodam em "background" ou seja, nos "fundos" do sistema, sem interação com o usuário.

# Integração entre sistemas de background

Um pouco mais profundamente, trabalhamos muito na integração de processos e serviços entre aplicações.

Integramos sistemas que denominamos como serviços e que rodam em diferentes máquinas em diferentes linguagens, falando apenas em protocólos.

Por exemplo, se formos construir uma estratégia de investimento para o mercado financeiro, temos as etapas básicas:

* Manuseio dos dados históricos
* Aplicação e codificação das regras de compra e venda
* Criação de um ambiente de gerência de risco
* Criação da estratégia de roteamento

Após o funcionamento e teste da estrutura básica de análise singular entram outros desafios mais complexos como:

* Otimização dos parâmetros de entrada
* Gerência de múltiplos perfis de investimento
* Gerência de múltiplas contas de investidores

Depois da implantação desta parte nossos desafios se voltam para:

* Gerênciamento e escalabilidade de processos
* Sincronismo e agendamento de processos


Cada tipo de tarefa exige processador, memória e acesso ao disco em proporções e intensidades diferentes.

Além disso existem uma série de maneiras de codificar o mesmo problema e algumas linguagens lidam melhor com os problemas em grande escala e intensidade.

Para você ter uma noção do volume de dados que trabalhamos imagine que um ativo com liquidez interessante tem cerca de 20 operações reais por segundo, durante 7 horas de mercado isso é cerca de 7 * 20 * 60 = 8400 eventos por dia.

Isso significa cerca de 40% do volume de dados perante as especulações existentes em um primeiro nível que denominamos "topo do book". Então é fácil ver agente trabalhando e manuseando arquivos de 50 milhões de linhas ;)

Então muitas vezes escrevemos código em diversas linguagens e comunicamos as linguagens para aproveitar melhor o desempenho da linguagem para execução de cada tarefa em específico.

Em outros casos nosso trabalho é apenas integrar algumas etapas e em outros ficamos com a responsabilidade de integrar o trabalho de outras equipes e também formalizarmos o próprio protocolo e fazermos as escolhas das melhores ferramentas.

Neste caso nossos sistemas utilizam de frameworks para processamento de eventos complexos denominado: "Complex Event Processing" e outras vezes em soluções mais simples utilizamos apenas arquivo texto, terminal shell, linguagem bash, e criamos scripts em shell ou ruby que rodam no linux para executar os processos.

Para cada tipo de comunicação existe um protocólo ideal ou mesmo uma maneira fácil de realizar determinada tarefa.

Para cada tipo de trabalho, existe uma forma padrão para organizar a arquitetura do código e escrever de forma clara e que seja fácil de dar manutenção.

Dentro de nossas experiências de background encaramos desafios em:


* Ruby, Shell, Python
* C, C++ e C#
* Java e jRuby

Também estamos aprendendo outras linguagens como:

* Elixir
* Lua
* Go
* R

# Integração entre hardware e Android

Temos uma série de integrações interessantes entre hardware e Android. Entre elas as principais são:

## Dispositivos Bluetooth integrado a hardware externo

Temos experiência com gerenciando múltiplos dispositivos bluetooth em um único Android.

##  Integração de hardware externo com MCP2200

* Com catracas digitais
* Com aparelhos de ginástica como: esteiras, bicicletas, steps, sensor de batimento cardíaco

##  Integração de hardware externo com MSP430

O MSP430 é um componente muito interessante para pequenas integrações de hardware. Estamos produzindo alguns protótipos com este hardware e apresenta um bom custo/benefício.

Já integramos ele via bluetooth e também via porta serial. Ambos com Android.

# Integração e migração entre software

Também temos experiência apenas na integração de serviços de software.

Este caso se aplica quando:

* O usuário tem um programa e precisa transferir os dados dele para outro programa
* Ou não deseja ter que realizar a mesma operação em dois lugares
* Ou ainda não quer que exista a ação em dois softwares

