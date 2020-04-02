
# Exercício ---------------------------------------------------------------

# Este exercício será feito com os pacotes vistos na última aula. Para instalá-los, use:
install.packages(c("dplyr", "tidyr", ""))

# E carregue-os:
library(dplyr)
library(tidyr)
library(ggplot2)

# Use, de preferência, as funções vistas nos pacotes da aula.
# Questão 1 ---------------------------------------------------------------
# Com o dataset DNase, calcule a média e o desvio padrão da concentração de DNA e
# a média e o desvio padrão da densidade.
# Output (6 primeiras linhas):
#   Run   media_conc sd_conc media_dens sd_dens
#   <ord>      <dbl>   <dbl>      <dbl>   <dbl>
# 1 10          3.11    4.18      0.721   0.581
# 2 11          3.11    4.18      0.710   0.590
# 3 9           3.11    4.18      0.706   0.597
# 4 1           3.11    4.18      0.677   0.601
# 5 4           3.11    4.18      0.681   0.615
# 6 8           3.11    4.18      0.706   0.605

DNase = DNase

DNase %>%
 select(conc, density)%>%
 summarise(mean_conc = mean(conc, na.rm = T),sd_conc = sd(conc, na.rm = T),
           mean_dens = mean(density, na.rm = T), sd_dens = sd(density, na.rm = T))


# Conte quantas ocorrências com valores de densidade maiores que 1 há em cada corrida.
# Output (6 primeiras linhas):
#   Run       n
#  <ord>   <int>
# 1 10        6
# 2 11        4
# 3 9         6
# 4 1         6
# 5 4         4
# 6 8         6

DNase %>%
  select(Run, density)%>%
  mutate(n = ifelse(density > 1, density, NA))%>% 
  group_by(Run) %>% 
  count(n)


# Questão 2 ---------------------------------------------------------------
# Com o dataset airquality, unifique as colunas Day e Month utilizando o separador "/"
# Output (6 primeiras linhas):
# Ozone Solar.R Wind Temp Data
# 1    41     190  7.4   67  1/5
# 2    36     118  8.0   72  2/5
# 3    12     149 12.6   74  3/5
# 4    18     313 11.5   62  4/5
# 5    NA      NA 14.3   56  5/5
# 6    28      NA 14.9   66  6/5

airquality = airquality

airquality %>% 
unite(col = Day, Month, sep = "/")

# Quest�o 3 ---------------------------------------------------------------
# Considere o seguinte data frame contendo as atua��es de alguns jogadores do campeonato brasileiro 2019.
brasileirao <- data.frame(
  jogador = c("Gabigol", "Cebolinha", "Dudu", "D.Alves", "Arrascaeta", "Fábio"),
  time = c("FLARJ", "GRERS", "PALSP", "SAOSP", "FLARJ", "CRUMG"),
  scoreRodada1 = c("17.5","15.8","5.6","4.2","26.4","9.7"),
  scoreRodada2 = c("10.9","18.2","16.3","4.5","26.5","2.5")
)

# Utilize a fun��o gather() para criar uma coluna chamada "rodada" como sendo a chave e outra 
# coluna chamada "score" para armazenar os valores numéricos dos scores de cada jogador.
# Output:
# jogador  time       rodada score
# 1     Gabigol FLARJ scoreRodada1  17.5
# 2   Cebolinha GRERS scoreRodada1  15.8
# 3        Dudu PALSP scoreRodada1   5.6
# 4     D.Alves SAOSP scoreRodada1   4.2
# 5  Arrascaeta FLARJ scoreRodada1  26.4
# 6       Fábio CRUMG scoreRodada1   9.7
# 7     Gabigol FLARJ scoreRodada2  10.9
# 8   Cebolinha GRERS scoreRodada2  18.2
# 9        Dudu PALSP scoreRodada2  16.3
# 10    D.Alves SAOSP scoreRodada2   4.5
# 11 Arrascaeta FLARJ scoreRodada2  26.5
# 12      Fábio CRUMG scoreRodada2   2.5

brasileirao %>% 
gather(key = "rodada", value = "score", scoreRodada1:scoreRodada2)

