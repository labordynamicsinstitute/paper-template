To clone this directory for a new "project" within the JMA repository:

  JMA=https://forge.cornell.edu/svn/repos/jma7/
  svn cp $JMA/sloan-paper-template $JMA/sloan-FANCY-NEW-NAME -m 'Creating a new directory based on the template for the NEW PROJECT'


Most of this (other than maybe the $JMA variable) will work from the Windows shell as well. ALL of it will work from a Mac shell (Terminal).

Then check out the new directory any way you usually do this.

  svn co $JMA/sloan-FANCY-NEW-NAME

The key is to use SVN cp, not just a regular Windows copy. The latter loses all relevant metadata and provenance information.

