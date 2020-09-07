# from a suggestion at https://discourse.julialang.org/t/install-a-packages-from-a-list/30920/3

using Pkg

dependencies = [
    "IJulia",
    "Genie"
]

Pkg.add(dependencies)

