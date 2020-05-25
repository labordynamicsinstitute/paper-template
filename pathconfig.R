# ###########################
# CONFIG: define paths and filenames for later reference
# ###########################

# Change the basepath depending on your system

basepath <- rprojroot::find_root(rprojroot::has_file("pathconfig.R"))

# Main directories
acquired <- file.path(basepath, "data","acquired")
interwrk <- file.path(basepath, "data","interwrk")
generated <- file.path(basepath, "data","generated")
outputs <- file.path(basepath, "analysis" )
programs <- file.path(basepath,"programs")

for ( dir in list(acquired,interwrk,generated,outputs)){
	if (file.exists(dir)){
	} else {
	dir.create(file.path(dir))
	}
}
