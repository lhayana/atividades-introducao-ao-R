# Exercício 10 ------------------------------------------------------------

# Vimos na última aula mais algumas funções da família dos apply():

# -- lapply(): Aplica uma função a uma lista e sempre retorna uma nova lista de mesmo tamanho da lista de entrada.
# SINTAXE:
#         lapply(X, FUN, ...)

# -- sapply(): Aplica uma função a uma lista e tenta retornar um objeto o mais simplificado possível.
# SINTAXE:
#         sapply(X, FUN, ..., simplify = TRUE, USE.NAMES = TRUE)

# -- tapply(): é usado para aplicar uma função de agregação em uma variável principal, baseado nos fatores de uma 
# variável agrupadora.
# SINTAXE:
#         tapply(VARIAVEL_PRINCIPAL, VARIAVEL_AGRUPADORA(Factor), FUNCAO)


# Questão 1 ---------------------------------------------------------------

# Usando o dataset mtcars, calcule   o valor maximo de consumo (mpg) 
# agrupando por transmissão (am) e por número de cilindros (cyl)
data("mtcars")
attach(mtcars)
tapply(mtcars$mpg, list(mtcars$cyl, mtcars$am), max)

# Questão 2

# Usando o dataset DNase, calcule a média da concentração de DNase e a 
# média da densidade agrupando por corrida do experimento.
data("DNase")
DNase=DNase
tapply(DNase$density, DNase$Run, mean)

# Questão 3

# Usando o dataset Iris, calcule a média do comprimento das pétalas
# agrupando por espécies.
data("iris")
iris=iris
tapply(iris$Sepal.Lenght, iris$Species, mean, na.rm = TRUE)


# Questão 4

# Usando tapply(), calcule a mediana da circunferência das arvóres no dataset Orange.
data("Orange")
tapply(Orange$circumference, Orange$Tree, median)



# Questão 5

# Obtenha o mesmo resultado da questão anterior, agora usando uma combinação de sapply() e split().
data("Orange")
orange = Orange
x=split(orange$circumference, orange$Tree)
sapply(x, median)
