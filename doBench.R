library(readr) # CSV file I/O, e.g. the read_csv function
library(doParallel)
library(benchmarkme)

# prepare df
bnames=c("user","ram","cpumodel","cpuhastighed","cores","crossprodI","lmI","sortI")
# create dataframe for these columnames
#mydf = <create df>

# now gather information from benchmarkme
res <- benchmark_matrix_cal()
vuser = "<din bruger>"
vram = 
#v1=<first crossprod>
#v2=<first lm>
#v3=<first sort>

#prepare modelfields
  
# now extract info
  
#vmod=<model>
#vspeed=<processor ghz>
#vcores=<num of cores>

# collect into vector

resv = c(vuser,vram,vmod,vspeed,vcores,v1,v2,v3)
mydf <- rbind(mydf,resv)

# write to file "newout.csv"
