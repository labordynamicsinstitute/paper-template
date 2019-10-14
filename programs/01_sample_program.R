# Download ONET and BLS OES data
# Data is about 50MB - depending on your connection, this might take a while.

source(file.path(rprojroot::find_root(rprojroot::has_file("pathconfig.R")),"pathconfig.R"),echo=FALSE)
source(file.path(programs,"config.R"), echo=FALSE)
source(file.path(programs,"global-libraries.R"), echo=FALSE)

# download O*net data
if ( file.exists(file.path(acquired,onet.src.file))) {
  download.file(paste0(onet.src.base,onet.src.file),destfile = file.path(acquired,onet.src.file))
  unzip(file.path(acquired,onet.src.file),file.path("db_23_2_excel","Alternate Titles.xlsx"),
      junkpaths = TRUE,exdir = acquired)
}

# download bls OES data
if ( file.exists(file.path(acquired,oes.src.file))) {
  download.file(paste0(oes.src.base,oes.src.file),destfile = file.path(acquired,oes.src.file))
  unzip(file.path(acquired,oes.src.file),
      file.path(paste0("oesm",oes.src.version,"nat"),paste0("national_M",oes.src.version,"_dl.xlsx")),
      junkpaths = TRUE,exdir = acquired)
}



