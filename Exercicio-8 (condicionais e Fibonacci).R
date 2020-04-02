 
# Exercicio 7 -------------------------------------------------------------

# Questão 1
# Crie uma função que receba os valores de a, b e c de um polinômio de 2 grau e verifique
# se este polinômio possui: (i) duas raizes reais distintas (ii) duas raizes reais iguais ou
# (iii) não possui raizes reais. A função também deve imprimir as raizes do polinômio, se existirem.

# Exemplo:
# > calc_raizes(1, -2, -3)
# O polinômio possui duas raizes reais diferentes.
# Raizes: 3 -1

# > calc_raizes(1, 2, 3)
# O polinômio não possui raizes reais.

# > calc_raizes(1, 8, 16)
# O polinômio possui duas raizes reais iguais.
# Raiz: -4

raiz = function(a, b, c){
  delta = (b*b)-(4*a*c)
  Rdelta = sqrt(delta)
  x = is.na(Rdelta)
  if(x==TRUE){
    stop("O polinomio nao possui raizes reais.")
  }
  r1 = (-b+Rdelta)/2*a
  r2 = (-b-Rdelta)/2*a
  if(r1 == r2){
    print("o polinomio possui duas raizes reais iguais")
    return(r1)
  }
  if (r1 != r2){
    print("o polinomio possui duas raizes reais diferentes")
    cat("raizes:",r1,r2)
  }
  }

# -------------------------------------------------------------------------

# Questão 2
# Uma empresa decidiu aumentar o salário dos seus empregados, de acordo 
# com a tabela abaixo:
  
######################################
# Salário			      Taxa de reajuste
######################################
# 0 - 400.00				    15%
# 400.01 - 800.00	  		12%
# 800.01 - 1200.00		  10%
# 1200.01 - 2000.00		  7%
# Acima de 2000.00			4%
######################################

# Escreva uma função que receba como argumento o salário do empregado e imprima 
# o novo salário, o reajuste ganho (em reais) e o aumento percentual obtido com
# relação ao salário anterior.

# Exemplo:
# > calc_salario(salario = 400)
# O novo salário é 460 reais.
# O reajuste foi de 60 reais, correspondendo a 15 % de reajuste.

calc_salario = function(y){
  if(y>=0 && y<=400){
    pc=15
    ny=y*1.15
    rj=ny-y
    cat("novo salario:",ny,"\n o reajuste foi de",rj,"reais. Que corresponde a",pc,"%")
  }
  
  if(y>400 && y<=800){
    pc=12
    ny=y*1.12
    rj=ny-y
    cat("novo salario:",ny,"\n o reajuste foi de",rj,"reais. Que corresponde a",pc,"%")
  }
  
  if(y>800 && y<=1200){
    pc=10
    ny=y*1.10
    rj=ny-y
    cat("novo salario:",ny,"\n o reajuste foi de",rj,"reais. Que corresponde a",pc,"%")
  }
  
  if(y>1200 && y<=2000){
    pc=7
    ny=y*1.07
    rj=ny-y
    cat("novo salario:",ny,"\n o reajuste foi de",rj,"reais. Que corresponde a",pc,"%")
  }
  
  if(y>2000){
    pc=4
    ny=y*1.04
    rj=ny-y
    cat("novo salario:",ny,"\n o reajuste foi de",rj,"reais. Que corresponde a",pc,"%")
  }
}

# -------------------------------------------------------------------------

# Questão 3

# Na matemática, a Sequência de Fibonacci é uma sequência de números inteiros, 
# começando por 0 e 1, na qual cada termo subsequente corresponde a soma dos dois anteriores.
# Os números de Fibonacci são, portanto, os números que compõem a seguinte sequência:
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, ...
# Utilizando o que vimos até agora em sala de aula, construa uma função recursiva que calcule o n-ésimo
# número da sequência de Fibonacci.
# 

fibonacci=function(n){
  a=1
  b=1
  
  if(n==1){
    print(0)
  }
  else if(n==2){
    print(1)
  }
  else if(n==3){
    print(1)
  }
  else{
   for(i in 4:n){
     x=a+b;
     a=b;
     b=x;
   }
  print(x)
  }
}

fibonacci(4)
fibonacci(8)



