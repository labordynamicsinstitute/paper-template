SVN externals can point to different locations. Here, I've pointed to
https://forge.cornell.edu/svn/repos/jma7/sloan-privacy-bibliography/bibtex

Note that by default, it always points to the latest version. Ideally, at/after
submission to a journal, the SVN revision should be locked in, i.e. change
the property to

-r 5917 https://forge.cornell.edu/svn/repos/jma7/sloan-privacy-bibliography/bibtex bib

