###############################
### create report quasi-package

using Pkg

# generate and activate the package for the submitted report
Pkg.generate("path/to/reportpackage")
Pkg.activate("path/to/reportpackage")

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

using Pkg

# activate the report's quasi-package
Pkg.activate("path/to/reportpackage")
# instantiate: this will install any new dependencies in Manifest.toml and Project.toml
Pkg.instantiate()

