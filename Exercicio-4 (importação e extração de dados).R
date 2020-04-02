# Exerc�?cio - Importação e Exportação de dados ----------------------------

# Este exerc�?cio será feito usando o arquivo happiness.csv disponibilizado no sigaa. 

# Questão 1 ---------------------------------------------------------------

# Neste exerc�?cio, vamos importar uma tabela (em arquivo de texto) como um dataframe, fazer algumas operações
# e em seguida vamos salvar o resultado em um outro arquivo de texto.
# Antes de importar o arquivo, verifique sua estrutura (como as colunas estão separadas, se tem cabeçalho, etc.)

readLines("/home/norberto/Downloads/happiness_2015.csv", 10)

# Importe o arquivo corretamente e o armazene em uma variável. Obs.: A tabela possui alguns campos numéricos
# onde o separador decimal é uma v�?rgula. Importe a tabela de modo que as v�?rgulas sejam transformadas
# em pontos (procure ajuda na documentação das funções de importação vistas na aula).

happiness<-read.csv(file="/home/norberto/Downloads/happiness_2015.csv", header = T, sep="\t", dec=",", comment.char = "*",
         stringsAsFactors = F, quote = "") 

# Verifique se a classe das colunas do dataframe condizem com o tipo de dado armazenado. Por exemplo, 
# a coluna dos pa�?ses é um vetor de caracter?

mode(happiness$Country)

# Crie um subset do dataframe contendo apenas as informações dos pa�?ses da América Latina e Caribe.

idxAC <- grep("Latin America and Caribbean", happiness$Region)
ALeCaribe <- happiness[idxAC,]

# De acordo com o rank de felicidade, qual pa�?s da América Latina é o mais feliz?

feliz <- ALeCaribe[happiness$Happiness.Rank == 1,]

# Crie um outro subset contendo apenas os pa�?ses europeus. 
# Qual o pa�?s mais feliz da europa?

idxEu <- grep("Europe", happiness$Region)
Europa <- happiness[idxEu,]
EuroFeliz <- Europa[happiness$Happiness.Rank == 1,]

# Salve o dataframe com as informações da América Latina em um arquivo de texto. Ele deve utilizar como
# separador o ';'. 

idxLA <- grep("Latin America", happiness$Region)
LaAm <- happiness[idxLA,]
write.table(LaAm, file="America_Latina.txt", sep=";", row.names=FALSE) 


