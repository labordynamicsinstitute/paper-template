####################################
# global libraries used everywhere #
####################################

mran.date <- "2019-09-01"
options(repos=paste0("https://cran.microsoft.com/snapshot/",mran.date,"/"))



pkgTest <- function(x)
{
	if (!require(x,character.only = TRUE))
	{
		install.packages(x,dep=TRUE)
		if(!require(x,character.only = TRUE)) stop("Package not found")
	}
	return("OK")
}

global.libraries <- c("dplyr","devtools","rprojroot","tictoc")

results <- sapply(as.list(global.libraries), pkgTest)
