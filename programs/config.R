#Any libraries needed are called and if necessary installed through `libraries.R`:

source(file.path(programs,"global-libraries.R"),echo=FALSE)
source(file.path(programs,"libraries.R"), echo=FALSE)

onet.src.base <- "https://www.onetcenter.org/dl_files/database/"
onet.src.version <- "23_2"
onet.src.file <- paste("db",onet.src.version,"excel.zip",sep="_")

oes.src.base <- "https://www.bls.gov/oes/special.requests/"
oes.src.version <- "2018"
oes.src.file <- paste("oesm",substr(oes.src.version,3,4),"nat.zip",sep="")

soc_definitions_loc <- "https://www.bls.gov/soc/soc_structure_2010.xls"