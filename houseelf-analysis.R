#version control
library(stringr)
data1 <- read.csv("./data/houseelf_earlength_dna_data_1.csv", header = TRUE)
gc_content <- function(data1){
data2 <- str_to_upper(data1)
Gs <- str_count(data2,pattern = "G")
Cs <- str_count(data2,pattern = "C")
t <- str_length(data2)
GC <- ((Gs + Cs)/t* 100)
return(GC)
}
gc_content(data1$dnaseq)


