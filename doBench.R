library(readr) # CSV file I/O, e.g. the read_csv function
library(readr)
library(Rtsne)
library(doParallel)
library(benchmarkme)

# prepare df
bnames=c("user","ram","cpumodel","cpuhastighed","cores","crossprodI","lmI","sortI")
mydf <- data.frame(matrix(ncol = 8, nrow = 0)) 
names(mydf) <- bnames

# now gather information
res <- benchmark_matrix_cal()
rescpu=get_cpu()
vuser = "kurt"
vram = get_ram()
v1=res[7,1]
v2=res[10,1]
v3=res[13,1]

#prepare modelfields
modarr = unlist(strsplit(rescpu$model_name,"@"))
vmod=modarr[[1]]
vspeed=modarr[[2]]
vcores=rescpu$no_of_cores
# collect into vector

resv = c(vuser,vram,vmod,vspeed,vcores,v1,v2,v3)
names(resv) <- bnames
mydf <- rbind(mydf,resv)
mydf <- mydf[-c(2),]

# write to file
write_csv(mydf,"newout.csv")


