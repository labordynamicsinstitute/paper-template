# The program directory

All programs should go here. You might have separate directories, or separate programs, for

- data cleaning
- preparing the analysis sample
- the analysis
- the table and figure preparation

For reproducibility purposes, these should be run from a single master script. However, note that for debugging and development purposes, you will run these separately. Just be sure to run a clean run just before finalizing / submitting the paper.

You should also have a setup component: steps that are run once to set up a project on a new computer (or that of a replicator).

We have included multiple examples here:

## Stata

- [setup_stata.do](setup_stata.do): Provided by [Gentzkow-Shapiro Lab](https://github.com/gslab-econ/template/blob/master/config/config_stata.do). 
  - Will test whether a list of Stata packages is installed, and will cycle through them and install them if absent. 

- [config.do]: Does the following things:
  - Creates a run-specific logfile (only 1 per day, can be adapted to include hour and minutes)
  - Defines paths, including a project specific path for all ADO files.
  - Prints out some system information

This file should be included by all other Stata programs:

    include "config.do"

## R

- [setup.R](setup.R): 
  - Will install the one R package needed to setup the rest of the project. To be run once per computer.

- [config.R](config.R)
  - Defines project-wide parameters, including which MRAN snapshot to use

- [global-libraries.R](global-libraries.R): 
  - Will test whether a list of R packages is installed, and will cycle through them and install them if absent. (Relies on [../pathconfig.R](../pathconfig.R))
  - MISSING: does not install in a project-specific space (nor use `packrat`)

- [../pathconfig.R](../pathconfig.R)
  - Defines all project-specific paths dynamically.


All programs should then include the lines
```
source(file.path(rprojroot::find_root(rprojroot::has_file("pathconfig.R")),"pathconfig.R"),echo=FALSE)
source(file.path(programs,"config.R"), echo=FALSE)
source(file.path(programs,"global-libraries.R"), echo=FALSE)
```
Because R can dynamically load libraries, the `Sys.Info()` should be added as the last thing, not at the start of the program.


## Python

A simple `requirements.txt` file is provided. It should install all Python dependencies when running

    python -m pip install --user -r requirements.txt

A `requirements.txt` file can be created by

    python -m pip freeze > requirements.txt

Note: this should really be installed in a project-specific environment. For more information, see the [PIP User Guide](https://pip.pypa.io/en/stable/user_guide/#requirements-files).


## Not addressed here

A potentially better solution is to use [Docker container](https://reproducible-analysis-workshop.readthedocs.io/en/latest/8.Intro-Docker.html), though it doesn't help with proprietary software (Matlab, Stata), and typically requires Linux expertise to use.