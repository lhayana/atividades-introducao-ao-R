# Exercicio 6 -------------------------------------------------------------

# Questão 1 ---------------------------------------------------------------

# Jose e Paulo adoram jogar basquete nas suas horas livres. Eles mantem uma
# competicao entre si e por isso decidiram registrar todas as cestas que eles
# marcam durante as partidas.
# Ate agora foram 8 partidas e José fez 8, 10, 12, 9, 15, 16, 11, 7 cestas.
# Paulo fez 5, 11, 13, 14, 23, 14, 9, 10 cestas.
# Crie um data frame para armazenar todas essas informacoes numa unica estrutura de dados,
# em seguida, crie uma funcao que receba como argumento esse data frame e calcule:
# 1. A soma dos pontos de cada jogador, assumindo que ambos fizeram apenas cestas de 3 pontos;
# 2. A media de pontos de cada jogador;
# 3. A partida que teve o maior placar total (o placar total eh a soma das pontuacoes dos dois jogadores)
# OBSERVACAO: utilize as funcoes print() e/ou cat() para imprimir na tela do console os resultados.

dfJose = c(8, 10, 12, 9, 15, 16, 11, 7)
dfPaulo = c(5, 11, 13, 14, 23, 14, 9, 10)

funcao = function(x,y){
  soma1 = sum(x)
  media1 = mean(x)
  soma2 = sum(y)
  media2 = mean(y)
  maior = max(soma1,soma2)
cat("Soma Jose:", soma1,"\n","Soma Paulo:", soma2,"\n","Media Jose:", media1, "\n",
    "Media paulo", media2, "\n", "Maior placar total", maior)
}

funcao(dfJose, dfPaulo)

# Questão 2 ---------------------------------------------------------------

# Leia o arquivo network.txt disponível no sigaa. Ele possui informações de uma rede de interação de proteínas. 

# Crie uma funcao para calcular a proporção da conectividade de um nó com relação a conectividade total da rede. 
# Por exemplo, se o nó 'NGF' se conecta com 16 outros nós, qual a proporção disto em relação a conectividade total
# da rede?
# Input: dois argumentos: nome da proteína e o dataframe onde será feita a operação
# Output: o valor da proporcao da conectividade do nó na rede.
# > conectividade: conectividade("NGF", network)
# [1] 0.180791

readLines("C:/Users/20131141130143/Downloads/network.txt", 10)

network = read.table("C:/Users/20131141130143/Downloads/network.txt", header = T, sep = "\t", 
           comment.char = "", stringsAsFactors = F, quote = "")

conectividade = function(nome,df){
  res1 <- df[df$node1 == nome, "node2"]
  res2 <- df[df$node2 == nome, "node1"]
  cat(res1,res2)
}

conectividade("NGF",network)

# Questão 3 ---------------------------------------------------------------

# Escreva uma função que converta a temperatura em Fahrenheit (F) para Celsius (ºC).
# Input: Vetor numérico contendo a temperatura em F
# Output: O valor da temperatura em ºC.
# > conversor_temp(32)
# [1] 0

conversor_temp = function(f){
  c = (f-32)*(5/9)
  cat(c)
}

conversor_temp(32)

# Questão 4 ---------------------------------------------------------------

# Considere o dataset 'airquality', trabalhado em aulas passadas. Escreva uma função que 
# calcule a média, o desvio padrão e a variância das variáveis 'Ozone', 'Solar.R', 'Wind', 'Temp' 
# e retorne estes valores como um dataframe. Lembre-se de remover os NAs
# Input: 
# Output: dataframe contendo 3 linhas e 4 colunas
# > calcular_parametros(airquality)
# #            Ozone    Solar.R      Wind     Temp
# media   42.12931  185.93151  9.957516 77.88235
# sd      32.98788   90.05842  3.523001  9.46527
# var   1088.20052 8110.51941 12.411539 89.59133

calcular_parametros = function(x){
  medias = apply(x[, 1:4], 2, mean)
  desvio = apply(x[, 1:4], 2, sd)
  variancia = apply(x[, 1:4], 2, var)
  df = data.frame(medias,desvio,variancia)
  print(df)
}

calcular_parametros(airquality)
