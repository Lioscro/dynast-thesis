args <- commandArgs(T)

rds <- readRDS(args[1])
write.table(as.matrix(rds), args[2], sep='\t')