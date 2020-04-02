# Exercício 1 - Introdução ao R -----------Lhayana Vieira-------

# O R, por padrão, possui como pasta de trabalho a pasta de documentos do usuário.
# Este recurso pode ser visto rodando-se a seguinte função:
getwd()

# A pasta de trabalho é o primeiro diretorio onde o R ira procurar arquivos ou onde
# ele irá salvar arquivos.

# Vamos agora especificar uma pasta de trabalho a ser usada nesta sessão:
# 1. Especifique o caminho de um diretorio no seu computador
caminho <- "/home/norberto/Atividade"

# 2. Coloque o objeto 'caminho' criado como argumento da função
setwd("/home/norberto/Atividade")

# A funcao "setwd()" ira especificar a pasta de trabalho desejada.
# Agora que ja estabelecemos nossa pasta de trabalho, vamos praticar alguns
# conceitos que vimos na aula.

##################################################

# Questão 1 ---------------------------------------------------------------

# José e Paulo adoram jogar basquete nas suas horas livres. Eles mantém uma
# competição entre si e por isso decidiram registrar todos os pontos que eles
# marcam durante as partidas.
# Até agora foram 8 partidas e José fez 8, 10, 12, 9, 15, 16, 11, 7 cestas.
# Paulo fez 5, 11, 13, 14, 23, 14, 9, 10 cestas.

# Crie dois objetos que contenham o número de cestas que cada um fez
jose<-c(8,10,12,9,15,16,11,7)
paulo<-c(5, 11, 13, 14, 23, 14, 9, 10)
# Verifique a que classe de cada um dos objetos
class(jose)
class(paulo)
# Crie um vetor de classe 'character' contendo a ordem das partidas tidas ate entao, por exemplo
# "primeira", "segunda", "terceira"...
partidas<-c("primeira", "segunda", "terceira", "quarta", "quinta", "sexta", "setima", "oitava")
# Verifique a que classe pertencem os objetos criados anteriormente
class(partidas)
# Considerando que ambos fizeram apenas cestas de 2 pontos, crie outros dois objetos
# que mostrem a quantidade de pontos que cada um fez.
pontosJose<-jose*2
pontosPaulo<-paulo*2


# Usando a funcao sum(), crie mais dois objetos que guardem a soma dos pontos
# de cada jogador.

somaJose<-sum(pontosJose)
somaPaulo<-sum(pontosPaulo)
somaJose
somaPaulo

# Com a utilização da ajuda do R, procure por uma função que possibilite o cálculo de médias.
# Com ela, calcule as médias de pontos dos dois jogadores e atribua estes valores
# a objetos diferentes

mediaJose<-somaJose/length(jose)
mediaPaulo<-somaPaulo/length(paulo)

# Compare os valores das médias calculadas usando os operadores lógicos ">" e "<".
mediaPaulo>mediaJose
mediaPaulo<mediaJose
# Quem teve um desempenho médio melhor?

if(mediaPaulo<mediaJose){
  "Jose obteve desempenho médio melhor"
}else{
  "Paulo obteve desempenho médio melhor"
}

