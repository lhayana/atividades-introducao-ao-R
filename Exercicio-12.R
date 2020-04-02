
# Exercício 12 ------------------------------------------------------------

# Questão 1
# Calcule a média das variáveis contidas em airquality por mês.
airquality = airquality

mes = aggregate(airquality, list(airquality$Month), mean)

# Questão 2
# Calcule a média das variáveis contidas em airquality por dia.
dia = aggregate(airquality, list(airquality$Day), mean)

# Questão 3
# Calcule a média das radiação solar por mês.

radMes = aggregate(airquality$Solar.R, list(airquality$Month), mean, na.rm=T)

# Questão 4
# Imprima cada elemento do vetor 1:5 e 10:14 separados por uma letra. 
# Ex.: 1A10, 2B11, 3C12 ...
mapply(function(x,y,z){
  cat(x,z,y,",")
}, x=1:5, y=10:14, z=c("a", "b","c","d","e"))
# Questão 5
# Use mapply para combinar as strings contidas nos vetores abaixo
v1 <- c("arq1", "arq2", "arq3", "arq4")
v2 <- c("analise1", "analise2", "analise3", "analise4")

mapply(function(v1,v2){
  print(c(v1,v2))
}, v1,v2)

# com os seguintes separadores abaixo:
v3 <- c("_", "-")

mapply(function(v1,v2,v3){
  print(c(v1,v3,v2))
}, v1,v2,v3)

# E com a extensao abaixo:
v4 <- (".txt")

mapply(function(v1,v2,v3){
  print(c(v1,v3,v2, v4))
}, v1,v2,v3)

# Questão 6
# Use mapply para checar quais colunas do dataset iris possuem valores numéricos e quais não possuem.

mapply(function(x){
  is.numeric(x)
  } ,airquality[,1:6])
