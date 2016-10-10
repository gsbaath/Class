#version control
#6
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
new <- gc_content(data1$dnaseq)
#7
source('classify_ear_size.R')
data3 <- get_size_class(data1$earlength)
data4 <- data.frame(data1$id, data3, new)
write.csv(data4, file = "earlength.csv")



