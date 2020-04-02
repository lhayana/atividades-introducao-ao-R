
# Exercício - Dataframes --------------------------------------------------

# Vamos usar alguns datasets modelo que o pacote 'datasets' dispõe. Para informações
# sobre cada dataset usado, rode ?<nome_do_dataset> no console.

# Questão 1 ---------------------------------------------------------------
peso <- data.frame("Nomes" = c("Pedro", "Maria","Jose",
                               "Airton", "Paulo", "Daniela", 
                               "Fatima"),
                   "Peso" = c(56,50,70,69,80,77,65), stringsAsFactors = F)

altura <- data.frame("Nomes" = c("Pedro", "Ricardo","Joao","Jose",
                                 "Airton", "Denise", "Paulo", "Daniela", 
                                 "Fatima"),
                     "Altura" = c(178,150,158,169,189,184,172,162,159), stringsAsFactors = F)



# Verifique quantas pessoas possuem ambas as informacoes de peso e altura. 

y <- peso$Nomes%in%altura$Nomes
sum(y)

# Questão 2 ---------------------------------------------------------------
# Carregue os dataframes contidos no arquivo .RData fornecido. 
load("COGs.RData")
# Obs.: O comando acima irá carregar o arquivo apenas se este estiver na sua pasta de trabalho.
# Caso não consiga carregar desta maneira, clique duas vezes no arquivo e ele será importado.

# Verifique se todos os "cog_id" do objeto cogids estão contidos no objeto cog.human.data.

id <-cogids$cog_id%in%cog.human.data$cog_id
total <- nrow(cogids)
total = as.integer(total)
if(total==sum(id)){
  print("Todos estao")
}
# O arquivo cog.human.data contem 3 tipos de OG: COG, NOG e KOG. Construa tres
# dataframes contendo cada um somente um tipo de OG (i.e. COG, NOG e KOG). 

cog <- c(cog.human.data$"COG")
nog <- c(cog.human.data$"NOG")
kog<- c(cog.human.data$"KOG")


# Verifique qual dos tres apresenta maior numero de OG diferentes.

difcog <- unique(cog) 
difnog <- unique(nog) 
difkog <- unique(kog) 

# Questão 3 ---------------------------------------------------------------
# O R possui alguns conjuntos de dados salvos na sua versao basica.
# Um deles eh o 'airquality', que eh uma tabela contendo informacoes 
# sobre a qualidade do ar em Nova Iorque durante o periodo de maio a 
# setembro de 1973. 

# Digite 'airquality' no console e visualize os dados contidos nele.
# Guarde este em uma outra variavel com um nome de sua preferencia.

air <- airquality

# Renomeie as colunas do dataframe. Use os nomes em portugues. 
row.names(air) <- c("Ozonio", "Solar", "Vento", "Tempo", "Mes", "Dia")

# Quantas linhas e quantas colunas essa tabela possui?

rowSums(air)
colSums(air)

# Qual a temperatura maxima entre os meses de maio a julho (meses 5 a 7)?

max(air, na.rm = FALSE)

# Crie um outro dataframe contendo todas as observaçoes com valores de radiacao
# solar maiores que 100. 

rad <- air$Solar.R > 100
cem <- air[rad,]

# Ordene o dataframe anterior de acordo com os valores descrescentes
# da concentracao de ozonio no ar.

ordem<-cem[with(cem, order(Ozone, decreasing = T)), ]
ordem






