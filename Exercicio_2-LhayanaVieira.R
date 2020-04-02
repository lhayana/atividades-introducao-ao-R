
# Exerc?cio 2 - Matrizes ----------------------------------------------------

# Em R, uma matriz ? uma cole??o de elementos do mesmo tipo (numeric, character ou logical)
# organizada em um n?mero fixo de linhas e colunas. Como trabalhamos somente com linhas e colunas
# uma matriz ?, portanto, uma estrutura de dados bi-dimensional.

# Quest?o 1 ----------------------------------------------------------------------------
# Construa uma matriz com 3 linhas que contenha os numeros de 1 a 9

matriz <- matrix(data=1:9,nrow=3,ncol=3)

# Quest?o 2 ----------------------------------------------------------------------------
# O Senhor dos An?is (no original em ingl?s, The Lord of the Rings) ? uma trilogia cinematogr?fica 
# dirigida por Peter Jackson com base na obra-prima hom?nima de J. R. R. Tolkien. 
# Os tr?s filmes foram rodados em simult?neo na Nova Zel?ndia e faturaram cerca de 3 bilh?es 
# de d?lares de receitas conjuntas de bilheteira.
# Crie 3 vetores contendo a bilheteria de cada um dos filmes, a primeira posi??o de cada vetor
  # indicar? a bilheteria na Am?rica do Norte, enquanto a segunda posi??o indicar? a bilheteria no resto do mundo.
  # Bilheterias dos filmes da trilogia O Senhor do An?is (em milh?es de d?lares):
# - A Sociedade do Anel: 
#     US$ 315,544 (Am?rica do Norte)
#     US$ 555,985 (Resto do Mundo)
# - As Duas Torres: 
#     US$ 342,551 (Am?rica do Norte)
#     US$ 583,495 (Resto do Mundo)
# - O Retorno do Rei: 
#     US$ 377,845 (Am?rica do Norte)
#     US$ 742,083 (Resto do Mundo)

Soc.Anel <- c(315.544, 555.985)
DuasTorres <- c(342.551, 583.495)
Ret.Rei <- c(377.845, 742.083)

# Quest?o 3 ----------------------------------------------------------------------------
# Crie uma matriz onde cada linha represente um filme da trilogia O Senhor dos aneis
# e cada coluna represente sua bilheteria na Am?rica do Norte e no resto do mundo.

trilogia <- matrix(c(Soc.Anel, DuasTorres, Ret.Rei),nrow=2,ncol=3)

# Defina os atributos colnames() e rownames() para identificar textualmente o que cada linha e coluna representam
colnames(trilogia) <- c("A Soc. do Anel", "Duas Torres", "Retorno do Rei")
rownames(trilogia) <- c("America do Norte", "Resto do mundo")
# Em seguida exiba a matriz no console para visualizar como ficou o resultado

trilogia

# Quest?o 4 ----------------------------------------------------------------------------
# Utilize a fun??o rowSums() para calcular a bilheteria mundial de cada filme da trilogia, armazenando em um novo vetor
# Em seguida, concatene esse vetor rec?m criado na matriz de bilheteria da quest?o anterior.

colSums(trilogia)
# COMENTÁRIO: ----------------------
# Você esqueceu de concatenar o resultado na matriz da questão anterior.
# ----------------------------------

# Quest?o 5 ----------------------------------------------------------------------------
# A trilogia de filmes de O Hobbit, que se passa no mesmo mundo fant?stico de O Senhor dos An?is, tamb?m obteve uma
# expressiva bilheteria compar?vel em n?meros com a antecessora. 
# Repita o procedimento realizado nas Quest?es 2 e 3
# para criar uma nova matriz com as bilheterias da trilogia de O Hobbit e em seguide concatene-a com a matriz da
# trilogia O Senhor dos Aneis, criando uma nova matriz combinada.
# Bilheterias dos filmes da trilogia O Hobbit (em milh?es de d?lares):
# - Uma Jornada Inesperada: 
#     US$ 303,003 (Am?rica do Norte)
#     US$ 718,1 (Resto do Mundo)
# - A Desola??o de Smaug: 
#     US$ 258,366 (Am?rica do Norte)
#     US$ 700,0 (Resto do Mundo)
# - A Batalha dos Cinco Ex?rcitos: 
#     US$ 255,119 (Am?rica do Norte)
#     US$ 700,9 (Resto do Mundo)

J.Inesp <- c(303.003, 718.1)
Smaug <- c(258.366, 700.0)
C.Exercitos <- c(255.119, 700.9)
hobbit <- matrix(c(J.Inesp, Smaug, C.Exercitos),nrow=2,ncol=3)
tolkien <- matrix(c(trilogia, hobbit),nrow=2,ncol=6)
colnames(tolkien) <- c("A Soc. do Anel", "Duas Torres", "Retorno do Rei","Uma J. Inesperada", "A Des. de Smaug", "A B. dos Cinco Exercitos")
rownsames(tolkien) <- c("America do Norte", "Resto do mundo")
# COMENTÁRIO: ----------------------
# Este ultimo comando esta com um erro de digitacao no nome da funcao.
# ----------------------------------

# Quest?o 6 ----------------------------------------------------------------------------
# Utilizando a matriz criada anteriormente, selecione as bilheterias no restante do mundo para todos os filmes
# e armazene-as em um novo vetor. Em seguida, calcule a m?dia de bilheteria dos filmes fora da Am?rica do Norte.

bilheterias <- apply(tolkien[, 1:6], 1, sum)
mundo <- bilheterias[2]
media = mundo/6

# Agora, selecione a bilheteria fora da Am?rica do Norte dos 2 primeiros filmes da trilogia O Senhor dos Aneis
# e em seguida calcule a m?dia de bilheteria desses 2 filmes.

dois <- apply(tolkien[, 1:2], 2, sum)
media <- sum(dois)/2

# Quest?o 7 ----------------------------------------------------------------------------
# Supondo que o valor m?dio do ingresso para o cinema custe US$ 5 d?lares, calcule o n?mero estimado de espectadores
# que assistiram cada filme

est = bilheterias/5
est