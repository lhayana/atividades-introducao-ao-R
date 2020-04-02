best <- function(state, outcome) {
  
  outcomes = c("heart attack", "heart failure", "pneumonia")
  
  if( outcome %in% outcomes == FALSE ) {
    stop("resultado inv�lido")
  }

  data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  
  data <- data[c(2, 7, 11, 17, 23)]
  names(data)[1] <- "name"
  names(data)[2] <- "state"
  names(data)[3] <- "heart attack"
  names(data)[4] <- "heart failure"
  names(data)[5] <- "pneumonia"
  
  states <- data[, 2]
  states <- unique(states)
  if( state %in% states == FALSE ) {
    stop("estado inv�lido")
  }
  
  data <- data[data$state==state & data[outcome] != 'NA', ]
  vals <- data[, outcome]
  rowNum <- which.min(vals)
  data[rowNum, ]$name
}

# A chamada da função deve retornar os seguintes valores:

best("TX", "heart attack")
# [1] "CYPRESS FAIRBANKS MEDICAL CENTER"

best("TX", "heart failure")
# [1] "FORT DUNCAN MEDICAL CENTER"

best("MD", "heart attack")
# [1] "JOHNS HOPKINS HOSPITAL, THE"

best("MD", "pneumonia")
# [1] "GREATER BALTIMORE MEDICAL CENTER"

best("BB", "heart attack")
# Error in best("BB", "heart attack"): estado inválido

best("NY", "hert attack")
# Error in best("NY", "hert attack"): resultado inválido
