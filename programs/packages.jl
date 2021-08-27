###############################
### create report quasi-package

using Pkg

# generate and activate the package for the current directory
Pkg.generate(".")
Pkg.activate(".")

# if this were to be applied for a different directory, use these lines
# Pkg.generate("path/to/reportpackage")
# Pkg.activate("path/to/reportpackage")

# set of packages you want to install
dependencies = [
    "IJulia",
    "Genie",
    "OnlineStats"
]

# add these packages to the report's quasi-package
# after this step there should be a Project.toml in "path/to/reportpackage" with the packages above
# and a Manifest.toml in "path/to/reportpackage" with those packages' dependencies
Pkg.add(dependencies)

###############################
### re-use of packages
# The following lines are for folks re-using this package/ replicating the project

using Pkg

# activate the report's quasi-package
Pkg.activate(".")
# instantiate: this will install any new dependencies in Manifest.toml and Project.toml
Pkg.instantiate()

