
# Exercício 8 ------------------------------------------------------------

# Questão 1
# Crie uma função chamada 'describe()' para descrever alguns parâmetros das colunas 
# numéricas de um dataframe. A função irá retornar um outro dataframe contendo
# a média, os valores mínimo e máximo, o número de ocorrências únicas de cada valor, 
# e o número de NAs de cada coluna. 

# Exemplo:
# Input:
# > describe(airquality)

# Output:
#             media   min  max    n_unique n_nas
# Ozone    42.129310  1.0 168.0       68    37
# Solar.R 185.931507  7.0 334.0      118     7
# Wind      9.957516  1.7  20.7       31     0
# Temp     77.882353 56.0  97.0       40     0
# Month     6.993464  5.0   9.0        5     0
# Day      15.803922  1.0  31.0       31     0

airquality=airquality

describe = function(df){
  media = NULL
  minimo = NULL
  maximo = NULL
  n_unique = NULL
  n_nas = NULL
  for(i in 1:ncol(df)){
    media[i] = mean(df[,i], na.rm=T) 
    minimo[i] = min(df[,i], na.rm=T) 
    maximo[i] = max(df[,i], na.rm=T) 
    n_unique[i] = length(unique(df[,i], na.rm=T))
    n_nas[i] = sum(is.na(df[,i]))
  }    
  df_all = data.frame(media, minimo, maximo, n_unique, n_nas)
  return(df_all)
}

describe(airquality)

# Questão 2 

# Crie uma função que retorne uma lista de tamanho 2, contendo uma matriz em cada posição. A primeira matriz da 
# lista é uma matriz quadrada (o número de linhas é igual ao número de colunas) com cada posição da matriz 
# sendo um número sorteado de 1 a 1000. A segunda matriz terá as mesmas dimensões da primeira, mas irá atribuir 
# a cada posição o valor 0, se aquela posição na primeira matriz for par, ou 1, se aquela posição na primeria 
# matriz for ímpar. A função terá um único argumento, que determinará as dimensões da matriz.

# Input:
# > faz_matriz(2)

# Output:
# $matriz1
#      [,1] [,2]
# [1,]  354  121
# [2,]  580  422
# 
# $matriz2
#       [,1] [,2]
# [1,]    0    1
# [2,]    0    0

faz_matriz = function(n){
  aux1= NULL
  aux11 = NULL
  aux2= NULL
  aux22 = NULL
  matriz1 = NULL
  matriz2 = NULL
  
  for(i in 1:n){
    aux1[i] = sample(1:1000, 1)
    if(aux1[i]%%2==0){
      aux2[i] = 0
    }
    else{
      aux2[i] = 1
    }
  }
    for(j in 1:n){
      aux11[j] = sample(1:1000, 1)
      if(aux11[j]%%2==0){
        aux22[j] = 0
      }
      else{
        aux22[j] = 1
      }
    }
  
  matriz1 = matrix(c(aux1,aux11), nrow = n, ncol = n)
  matriz2 = matrix(c(aux2, aux22), nrow = n, ncol = n)
 print(matriz1)
 print(matriz2)
}

faz_matriz(2)

# Questão 3

# Crie uma função que receba como argumentos um vetor de números e um número-alvo e realize uma busca sequencial
# no vetor utilizando um laço. A função deve retornar a posição onde encontrar o número-alvo ou zero, caso não encontre.

# Input: 
# vetor <- c(1.0, 5.0, 2.0, 3.0, 4.0) 
# alvo <- 2.0
# > seq_search(vetor, alvo)

# Output: 
# [1] 3
vetor <- c(1.0, 5.0, 2.0, 3.0, 4.0) 
alvo <- 2.0

seq_search = function(v,a){
  aux = 0
  for(i in 1:length(v)){
    if(a == v[i]){
      aux = i
    }
  }
  if(aux == 0){
   print("zero") 
  }
  else{
    cat(aux)
  }
}

seq_search(vetor, alvo)

# Questão 4 

# Crie um laço while que imprime números aleatorios normais utilizando a funcao rnorm() mas que interrompe a execucao
# caso o numero sorteado seja maior que 1.

n = 0
while(n<1){
  n = rnorm(1)
  print(n)
  }

# Questão 5

# Adapte o laço da questão anterior para que ele nao imprima numeros negativos.

n = 0.1
while(n<1){
  n = rnorm(1)
  if(n>0){
    print(n)
  }
}
